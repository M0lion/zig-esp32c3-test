const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{
        .default_target = std.Target.Query{
            .cpu_arch = .riscv32,
            .cpu_model = .{ .explicit = &std.Target.riscv.cpu.generic_rv32 },
            .os_tag = .freestanding,
            .abi = .none,
            .cpu_features_add = std.Target.riscv.featureSet(&.{ .m, .c, .zifencei, .zicsr }),
        },
    });

    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "firmware",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    exe.setLinkerScriptPath(b.path("src/linker.ld"));
    b.installArtifact(exe);

    const make_image = b.addSystemCommand(&.{
        "esptool.py",
        "--chip",
        "esp32c3",
        "elf2image",
        "--flash_mode",
        "dio",
        "zig-out/bin/firmware",
    });
    make_image.step.dependOn(&exe.step);
    const make_image_step = b.step("make-image", "runs esptool.py elf2image");
    make_image_step.dependOn(&make_image.step);

    const flash_command = b.addSystemCommand(&.{
        "esptool.py",
        "--chip",
        "esp32c3",
        "--port",
        "/dev/ttyUSB0",
        "write_flash",
        "0x0",
        "zig-out/bin/firmware.bin",
    });
    flash_command.step.dependOn(&make_image.step);
    const flash_step = b.step("flash", "flash to chip");
    flash_step.dependOn(&flash_command.step);
}
