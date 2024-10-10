const peripherals = @import("registers.zig");

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
