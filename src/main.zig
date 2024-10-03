const serial: *volatile c_char = @ptrFromInt(0x60043000);

const TMG0_BASE: usize = 0x6001F000;
const TIMG_WDTCONFIG0_REG: *volatile u32 = @ptrFromInt(TMG0_BASE + 0x48);

const LOW_POWER_MGMT_BASE: usize = 0x60008000;
const RTC_CNTL_WDTCONFIG0_REG: *volatile u32 = @ptrFromInt(LOW_POWER_MGMT_BASE + 0x90);
const RTC_CNTL_WDTFEED_REG: *volatile u32 = @ptrFromInt(LOW_POWER_MGMT_BASE + 0xA4);

export fn _start() void {
    RTC_CNTL_WDTFEED_REG.* = 0xFFFFFFFF;
    TIMG_WDTCONFIG0_REG.* = 0;
    RTC_CNTL_WDTCONFIG0_REG.* = 0;

    while (true) {
        RTC_CNTL_WDTFEED_REG.* = 0xFFFFFFFF;
        serial.* = 'H';
        serial.* = 'e';
        serial.* = 'l';
        serial.* = 'l';
        serial.* = 'o';
    }
}
