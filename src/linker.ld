ENTRY(_start)

MEMORY
{
    FLASH_I (rwx) : ORIGIN = 0x42000000, LENGTH = 7M   /* Memory-mapped flash address */
    SRAM_I  (rwx) : ORIGIN = 0x40380100, LENGTH = 252K /* Internal RAM */
    SRAM_D  (rw) : ORIGIN = 0x3FC80000 + LENGTH(SRAM_I), LENGTH = 32K /* Internal RAM */
}

SECTIONS
{
    .text : 
    {
				*(.init)
        *(.text*)
        *(.rodata*)
    } > SRAM_I

    .data : 
    {
        _data_start = .;
        *(.data*)
        _data_end = .;
    } > SRAM_D AT > FLASH_I

		_data_load_start = LOADADDR(.data);

    .bss (NOLOAD) :
    {
        _bss_start = .;
        *(.bss*)
        _bss_end = .;
    } > SRAM_D
		
		.stack (NOLOAD) :
    {
        _stack_start = .;
        . = ALIGN(16);          /* Align stack on 16-byte boundary */
        . += 16K;               /* Define stack size (e.g., 16KB) */
        _stack_end = .;
    } > SRAM_D
}
