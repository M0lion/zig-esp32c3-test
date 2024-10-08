const peripherals = @import("registers.zig").peripherals;

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

fn disableWatchdogs() void {
    // Disable WDT Write protection
    peripherals.RTC_CNTL.WDTWPROTECT.WDT_WKEY = 0x50D83AA1;
    peripherals.RTC_CNTL.SWD_WPROTECT.SWD_WKEY = 0x8F1D312A;

    // Disable watchdogs
    peripherals.TIMG0.WDTCONFIG0.WDT_EN = 0;
    peripherals.RTC_CNTL.WDTCONFIG0.WDT_EN = 0;
    peripherals.RTC_CNTL.SWD_CONF.SWD_DISABLE = 1;
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

    UART0.CONF0.CLK_EN = 1;

    // Enable TX Flow control
    //UART0.CONF0.TX_FLOW_EN = 0;

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
    UART0.CLK_CONF.SCLK_DIV_A = 0;
    UART0.CLK_CONF.SCLK_DIV_B = 0;
    UART0.CLKDIV.CLKDIV = 694;
    UART0.CLKDIV.FRAG = 7;

    UART0.CONF0.BIT_NUM = 3;
    UART0.CONF0.PARITY_EN = 0;
    UART0.CONF0.STOP_BIT_NUM = 1;

    UART0.CONF0.RXFIFO_RST = 1;
    UART0.CONF0.TXFIFO_RST = 1;
    UART0.CONF0.RXFIFO_RST = 0;
    UART0.CONF0.TXFIFO_RST = 0;

    // Sync registers
    UART0.ID.REG_UPDATE = 1;
    while (UART0.ID.REG_UPDATE != 0) {}
}

fn uartWrite(buffer: []const u8) void {
    const UART0 = peripherals.UART0;

    // Set empty treshold
    //UART0.CONF1.TXFIFO_EMPTY_THRHD = 0;
    // Disable empty interrupt
    //UART0.INT_ENA.TXFIFO_EMPTY_INT_ENA = 0;
    //UART0.INT_ENA.TX_DONE_INT_ENA = 0;

    for (buffer) |char| {
        UART0.FIFO.RXFIFO_RD_BYTE = char;
    }

    //UART0.INT_CLR.TXFIFO_EMPTY_INT_CLR = 0;
    //UART0.INT_ENA.TXFIFO_EMPTY_INT_ENA = 1;
}

pub fn configureUart0Gpio() void {
    const GPIO = peripherals.GPIO;
    const IO_MUX = peripherals.IO_MUX;

    // Input
    GPIO.FUNC6_IN_SEL_CFG.SEL = 1;
    GPIO.FUNC6_IN_SEL_CFG.IN_SEL = 20;
    GPIO.PIN20.SYNC1_BYPASS = 1;
    GPIO.PIN20.SYNC2_BYPASS = 1;
    IO_MUX.GPIO20.FUN_IE = 1;
    IO_MUX.GPIO20.FUN_WPU = 0;

    // Output
    GPIO.FUNC21_OUT_SEL_CFG.OUT_SEL = 6;
    GPIO.FUNC21_OUT_SEL_CFG.OEN_SEL = 1;
    GPIO.ENABLE_W1TS.ENABLE_W1TS |= 1 << 21;
    // Open drain?
    IO_MUX.GPIO21.MCU_SEL = 1; // ??
    IO_MUX.GPIO21.FUN_DRV = 2;
}

const sections = struct {
    extern var _data_start: u8;
    extern var _data_end: u8;
    extern var _data_load_start: u8;
    extern var _bss_start: u8;
    extern var _bss_end: u8;
};

fn meminit() void {
    const bss_start: [*]u8 = @ptrCast(&sections._bss_start);
    const bss_end: [*]u8 = @ptrCast(&sections._bss_end);
    const bss_len = @intFromPtr(bss_end) - @intFromPtr(bss_start);
    @memset(bss_start[0..bss_len], 0);

    const data_start: [*]u8 = @ptrCast(&sections._data_start);
    const data_end: [*]u8 = @ptrCast(&sections._data_end);
    const data_len = @intFromPtr(data_end) - @intFromPtr(data_start);
    const data_load: [*]u8 = @ptrCast(&sections._data_load_start);
    @memcpy(data_start[0..data_len], data_load[0..data_len]);
}

export fn _start() callconv(.C) noreturn {
    meminit();
    //Enable TMG0
    //peripherals.TIMG0.T0CONFIG.EN = 1;

    // set SYSTEM_SOC_CLK_SEL to 1 for PLL_CLK as cpu clock source
    //peripherals.SYSTEM.SYSCLK_CONF.SOC_CLK_SEL = 1;
    // Set PLL_CLK to 480MHz and set CPU_CLK to PLL_CLK/3 (160MHz)
    //peripherals.SYSTEM.CPU_PER_CONF.PLL_FREQ_SEL = 1;
    //peripherals.SYSTEM.CPU_PER_CONF.CPUPERIOD_SEL = 1;

    //if (peripherals.UART0.STATUS.TXFIFO_CNT == 0) {
    //peripherals.RTC_CNTL.OPTIONS0.SW_SYS_RST = 1;
    //}
    while (peripherals.UART0.STATUS.TXFIFO_CNT > 0) {}

    peripherals.INTERRUPT_CORE0.CPU_INT_ENABLE.CPU_INT_ENABLE = 0;

    const led = peripherals.GPIO.PIN8;
    const led_mux = peripherals.IO_MUX.GPIO8;

    led_mux.SLP_SEL = 1;
    led_mux.FUN_WPD = 0;
    led_mux.FUN_WPU = 0;
    led_mux.FUN_DRV = 3;
    led_mux.FILTER_EN = 0;
    led_mux.FUN_IE = 0;
    led_mux.MCU_SEL = 1;
    peripherals.GPIO.FUNC8_OUT_SEL_CFG.OUT_SEL = 0x80;
    peripherals.GPIO.FUNC8_OUT_SEL_CFG.OEN_SEL = 1;
    peripherals.GPIO.FUNC8_OUT_SEL_CFG.INV_SEL = 0;
    peripherals.GPIO.FUNC8_OUT_SEL_CFG.OEN_INV_SEL = 0;
    led.PAD_DRIVER = 0;
    peripherals.GPIO.ENABLE_W1TC.ENABLE_W1TC = 1 << 8;

    peripherals.GPIO.OUT_W1TC.OUT_W1TC = 1 << 8;

    //configureUart0Gpio();
    //initUart0();
    //configUart0();

    const buffer = "Hello esp32";

    for (buffer) |char| {
        while (peripherals.UART0.STATUS.TXFIFO_CNT > 8) {}
        peripherals.UART0.FIFO.RXFIFO_RD_BYTE = char;
    }

    //var i: u32 = 0;
    //while (i < 1000000) : (i += 1) {
    //    feed();
    //    asm volatile ("nop");
    //}

    while (true) {
        if (peripherals.UART0.STATUS.TXFIFO_CNT > 0) {
            peripherals.RTC_CNTL.OPTIONS0.SW_SYS_RST = 1;
        }
        feed();
    }
}
