.section .text.entry
.globl _start

_start:
		/* Setup the global pointer, which the ABI assumes points to the
		* __global_pointer$ symbol. */
		.option push
		.option norelax
		la gp, __global_pointer$
		.option pop

    # Set up the stack pointer (adjust to match the top of SRAM in ESP32-C3)
    la sp, _sp

    # Call the main Zig function (replace with the actual Zig entry point if needed)
    call main
