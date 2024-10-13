const peripherals = @import("registers.zig").peripherals;

pub fn init_hardware() void {
    meminit();
    {
        const CPU_INT_ENABLE = peripherals.INTERRUPT_CORE0.CPU_INT_ENABLE;
        var val = CPU_INT_ENABLE.read();
        val.CPU_INT_ENABLE = 0;
        CPU_INT_ENABLE.write(val);
    }
    disableWatchdogs();
}

fn disableWatchdogs() void {
    // Disable WDT Write protection
    peripherals.RTC_CNTL.WDTWPROTECT.raw = 0x50D83AA1;
    peripherals.RTC_CNTL.SWD_WPROTECT.raw = 0x8F1D312A;

    {
        const WDTCONFIG0 = peripherals.TIMG0.WDTCONFIG0;
        var val = WDTCONFIG0.read();
        val.WDT_APPCPU_RESET_EN = 0;
        val.WDT_PROCPU_RESET_EN = 0;
        val.WDT_FLASHBOOT_MOD_EN = 0;
        val.WDT_STG0 = 0;
        val.WDT_STG1 = 0;
        val.WDT_STG2 = 0;
        val.WDT_STG3 = 0;
        val.WDT_EN = 0;
        val.WDT_CONF_UPDATE_EN = 0;
        WDTCONFIG0.write(val);
    }
    {
        const WDTCONFIG0 = peripherals.RTC_CNTL.WDTCONFIG0;
        var val = WDTCONFIG0.read();
        val.WDT_APPCPU_RESET_EN = 0;
        val.WDT_PROCPU_RESET_EN = 0;
        val.WDT_FLASHBOOT_MOD_EN = 0;
        val.WDT_STG0 = 0;
        val.WDT_STG1 = 0;
        val.WDT_STG2 = 0;
        val.WDT_STG3 = 0;
        val.WDT_EN = 0;
        WDTCONFIG0.write(val);
    }

    {
        const SWD_CONF = peripherals.RTC_CNTL.SWD_CONF;
        var val = SWD_CONF.read();
        val.SWD_DISABLE = 1;
        SWD_CONF.write(val);
    }

    // Enable WDT Write protection
    peripherals.RTC_CNTL.WDTWPROTECT.raw = 0x0;
    peripherals.RTC_CNTL.SWD_WPROTECT.raw = 0x0;
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
