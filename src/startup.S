.section .init
.globl _start

_start:
    # Set up the stack pointer (adjust to match the top of SRAM in ESP32-C3)
    la sp, _stack_top

    # Call the main Zig function (replace with the actual Zig entry point if needed)
    call main

    # Infinite loop to prevent returning
1:   j 1b

.section .bss
.align 4
_stack_top:
    .space 4096  # Allocate 4KB for the stack

