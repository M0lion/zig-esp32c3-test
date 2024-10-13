const peripherals = @import("registers.zig").peripherals;

const FIFO_SIZE = 128;
pub fn print(buffer: []const u8) void {
    const FIFO = peripherals.UART0.FIFO;
    const FIFO_STATUS = peripherals.UART0.STATUS;

    for (buffer) |char| {
        while (FIFO_STATUS.read().TXFIFO_CNT > FIFO_SIZE - 8) {}
        FIFO.raw = char;
    }
}
