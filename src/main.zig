const registers = @import("hal/registers.zig");
const peripherals = registers.peripherals;
const uart = @import("hal/uart.zig");
const init = @import("hal/init.zig");

// Feed watchdog timers
fn feed() void {
    // Disable WDT Write protection
    peripherals.RTC_CNTL.WDTWPROTECT.raw = 0x50D83AA1;
    peripherals.RTC_CNTL.SWD_WPROTECT.raw = 0x8F1D312A;

    // Feed watchdogs
    peripherals.TIMG0.WDTFEED.raw = 1;
    peripherals.RTC_CNTL.WDTFEED.raw = 1;
    var swd_conf = peripherals.RTC_CNTL.SWD_CONF.read();
    swd_conf.SWD_FEED = 1;
    peripherals.RTC_CNTL.SWD_CONF.write(swd_conf);

    // Enable WDT Write protection
    peripherals.RTC_CNTL.WDTWPROTECT.raw = 0x0;
    peripherals.RTC_CNTL.SWD_WPROTECT.raw = 0x0;
}

export fn main() noreturn {
    init.init_hardware();

    // Wait untill buffer is empty so we can check it later
    while (peripherals.UART0.STATUS.read().TXFIFO_CNT > 0) {}

    const buffer = "Hello esp32\n\r";

    while (true) {
        uart.print(buffer);

        var i: usize = 0;
        while (i < 10000) {
            feed();
            i += 1;
        }
    }
}
