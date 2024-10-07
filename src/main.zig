const peripherals = @import("registers.zig").peripherals;
const UART0_BASE = 0x60000000;
const UART_FIFO_REG: *volatile u8 = @ptrFromInt(UART0_BASE);
const UART_CLKDIV_REG: *volatile u32 = @ptrFromInt(UART0_BASE + 0x14);
const UART_CONF0_REG: *volatile u32 = @ptrFromInt(UART0_BASE + 0x20);
const UART_ID_REG: *volatile u32 = @ptrFromInt(UART0_BASE + 0x80);

const SYSTEM_REGISTERS_BASE = 0x600C0000;
const SYSTEM_CPU_PER_CONF_REG: *volatile u32 = @ptrFromInt(SYSTEM_REGISTERS_BASE + 0x8);
const SYSTEM_PERIP_CLK_EN0_REG: *volatile u32 = @ptrFromInt(SYSTEM_REGISTERS_BASE + 0x10);
const SYSTEM_PERIP_RST_EN0_REG: *volatile u32 = @ptrFromInt(SYSTEM_REGISTERS_BASE + 0x18);
const SYSTEM_SYSCLK_CONF_REG: *volatile u32 = @ptrFromInt(SYSTEM_REGISTERS_BASE + 0x58);

const USB_SERIAL_BASE = 0x60043000;
const USB_SERIAL_JTAG_EP1_REG: *volatile u8 = @ptrFromInt(USB_SERIAL_BASE);
const serial: *volatile c_char = @ptrFromInt(USB_SERIAL_BASE);
const USB_SERIAL_JTAG_EP1_CONF_REG: *volatile u32 = @ptrFromInt(USB_SERIAL_BASE + 0x4);

const TMG0_BASE: usize = 0x6001F000;
const TIMG_T0CONFIG_REG: *volatile u32 = @ptrFromInt(TMG0_BASE);
const TIMG_WDTCONFIG0_REG: *volatile u32 = @ptrFromInt(TMG0_BASE + 0x48);
const TIMG_WDTFEED_REG: *volatile u32 = @ptrFromInt(TMG0_BASE + 0x60);

const LOW_POWER_MGMT_BASE: usize = 0x60008000;
const RTC_CNTL_WDTCONFIG0_REG: *volatile u32 = @ptrFromInt(LOW_POWER_MGMT_BASE + 0x90);
const RTC_CNTL_WDTFEED_REG: *volatile u32 = @ptrFromInt(LOW_POWER_MGMT_BASE + 0xA4);
const RTC_CNTL_WDTWPROTECT_REG: *volatile u32 = @ptrFromInt(LOW_POWER_MGMT_BASE + 0xA8);
const RTC_CNTL_SWD_CONF_REG: *volatile u32 = @ptrFromInt(LOW_POWER_MGMT_BASE + 0xAC);
const RTC_CNTL_SWD_WPROTECT_REG: *volatile u32 = @ptrFromInt(LOW_POWER_MGMT_BASE + 0xB0);

// Feed watchdog timers
fn feed() void {
    // Disable WDT Write protection
    peripherals.RTC_CNTL.WDTWPROTECT.WDT_WKEY = 0x50D83AA1;
    peripherals.RTC_CNTL.SWD_WPROTECT.SWD_WKEY = 0x8F1D312A;

    // Feed watchdogs
    peripherals.TIMG0.WDTFEED.WDT_FEED = 1;
    peripherals.RTC_CNTL.WDTFEED.WDT_FEED = 1;
    peripherals.RTC_CNTL.SWD_CONF.SWD_FEED = 1;

    // Enable WDT Write protection
    peripherals.RTC_CNTL.WDTWPROTECT.WDT_WKEY = 0x0;
    peripherals.RTC_CNTL.SWD_WPROTECT.SWD_WKEY = 0x0;
}

fn usbSerialJtagBufferFull() bool {
    return peripherals.USB_DEVICE.EP1_CONF.SERIAL_IN_EP_DATA_FREE == 0;
}

fn usbSerialJtagBufferFlush() void {
    peripherals.USB_DEVICE.EP1_CONF.WR_DONE = 1;
}

fn initUart0() void {
    const SYSTEM = peripherals.SYSTEM;
    const UART0 = peripherals.UART0;

    // Enable UART ram clock
    SYSTEM.PERIP_CLK_EN0.UART_MEM_CLK_EN = 1;
    // Enable APB_CLK for Uart
    SYSTEM.PERIP_CLK_EN0.UART_CLK_EN = 1;

    UART0.CONF0.TX_FLOW_EN = 0;

    SYSTEM.PERIP_RST_EN0.UART_RST = 0;
    UART0.CLK_CONF.RST_CORE = 1;
    SYSTEM.PERIP_RST_EN0.UART_RST = 1;
    SYSTEM.PERIP_RST_EN0.UART_RST = 0;
    UART0.CLK_CONF.RST_CORE = 0;
    UART0.ID.HIGH_SPEED = 0;
}

fn configUart0() void {
    const UART0 = peripherals.UART0;

    while (UART0.ID.REG_UPDATE != 0) {}

    UART0.CLK_CONF.SCLK_SEL = 1;
    UART0.CLK_CONF.SCLK_DIV_NUM = 1;
    UART0.CLK_CONF.SCLK_DIV_A = 1;
    UART0.CLK_CONF.SCLK_DIV_B = 1;
    UART0.CLKDIV.CLKDIV = 694;
    UART0.CLKDIV.FRAG = 7;

    UART0.CONF0.BIT_NUM = 3;
    UART0.CONF0.PARITY_EN = 0;
    UART0.CONF0.STOP_BIT_NUM = 1;

    // Sync registers
    UART0.ID.REG_UPDATE = 1;
    while (UART0.ID.REG_UPDATE != 0) {}
}

fn uartWrite(buffer: []const u8) void {
    const UART0 = peripherals.UART0;

    // Set empty treshold
    UART0.CONF1.TXFIFO_EMPTY_THRHD = 0;
    // Disable empty interrupt
    UART0.INT_ENA.TXFIFO_EMPTY_INT_ENA = 0;
    UART0.INT_ENA.TX_DONE_INT_ENA = 0;

    UART_FIFO_REG.* = 'a';
    UART0.FIFO.RXFIFO_RD_BYTE = 'b';
    for (buffer) |char| {
        UART_FIFO_REG.* = char;
    }

    UART0.INT_CLR.TXFIFO_EMPTY_INT_CLR = 0;
    UART0.INT_ENA.TXFIFO_EMPTY_INT_ENA = 1;
}

export fn _start() void {

    //Enable TMG0
    peripherals.TIMG0.T0CONFIG.EN = 1;

    // set SYSTEM_SOC_CLK_SEL to 1 for PLL_CLK as cpu clock source
    peripherals.SYSTEM.SYSCLK_CONF.SOC_CLK_SEL = 1;
    // Set PLL_CLK to 480MHz and set CPU_CLK to PLL_CLK/3 (160MHz)
    peripherals.SYSTEM.CPU_PER_CONF.PLL_FREQ_SEL = 1;
    peripherals.SYSTEM.CPU_PER_CONF.CPUPERIOD_SEL = 1;

    if (peripherals.UART0.STATUS.TXFIFO_CNT == 0) {
        peripherals.RTC_CNTL.OPTIONS0.SW_SYS_RST = 1;
    }
    while (peripherals.UART0.STATUS.TXFIFO_CNT > 0) {}
    initUart0();
    configUart0();

    uartWrite("Hello ESP32 from zig!!!");

    if (peripherals.UART0.STATUS.TXFIFO_CNT > 0) {
        peripherals.RTC_CNTL.OPTIONS0.SW_SYS_RST = 1;
    }

    while (true) {
        feed();
    }
}
