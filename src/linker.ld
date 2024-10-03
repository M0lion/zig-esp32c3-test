MEMORY
{
    FLASH_I (rwx) : ORIGIN = 0x42000000, LENGTH = 8M   /* Memory-mapped flash address */
    SRAM_I  (rwx) : ORIGIN = 0x40380400, LENGTH = 384K /* Internal RAM */
    SRAM_D  (rw) : ORIGIN = 0x3FC80000 + LENGTH(SRAM_I), LENGTH = 384K /* Internal RAM */
}

SECTIONS
{
    .text : 
    {
        *(.text*)
        *(.rodata*)
    } > SRAM_I

    .data : 
    {
        _data_start = .;
        *(.data*)
        _data_end = .;
    } > SRAM_D AT > FLASH_I

    .bss :
    {
        _bss_start = .;
        *(.bss*)
        _bss_end = .;
    } > SRAM_D
}

