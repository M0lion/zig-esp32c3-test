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

const sections = struct {
    extern var _data_start: u8;
    extern var _data_end: u8;
    extern var _data_load_start: u8;
    extern var _bss_start: u8;
    extern var _bss_end: u8;
    extern var _global_ponter: u8;
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

export fn _start() linksection("_flash_start") callconv(.C) noreturn {
    asm volatile (
        \\.option push
        \\.option norelax
        \\la gp, __global_pointer$
        \\.option pop
    );
    asm volatile ("mv sp, %[eos]"
        :
        : [eos] "r" (0x3fc7ffff),
    );
    meminit();
    main();
}

fn main() noreturn {
    // ROM Bootloader writes to UART and I can see it on my machine, so we verify that TXFIFO_CNT has stuff to write still
    if (peripherals.UART0.STATUS.TXFIFO_CNT > 0) {
        //peripherals.RTC_CNTL.OPTIONS0.SW_SYS_RST = 1; // This resets chip if it's left in, proving that TXFIFI_CNT has stuff in it. It is reset before writing all the normal startup stuff
    }

    // Wait untill buffer is empty so we can check it later
    while (peripherals.UART0.STATUS.TXFIFO_CNT > 0) {}

    const buffer = "Hello esp32";

    // We loop here just in case it would make a difference
    while (true) {
        for (buffer) |char| {
            //while (peripherals.UART0.STATUS.TXFIFO_CNT > 8) {}
            peripherals.UART0.FIFO.RXFIFO_RD_BYTE = char;
        }

        var i: usize = 0;
        while (i < 10000) {
            // This resets the chip if we manage to write to UART buffer.
            if (peripherals.UART0.STATUS.TXFIFO_CNT > 0) {
                peripherals.RTC_CNTL.OPTIONS0.SW_SYS_RST = 1; // This does not trigger, proving we are not writing to UART buffer
            }
            feed();
            i += 1;
        }
    }
}
