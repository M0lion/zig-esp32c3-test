ENTRY(_start)

MEMORY
{
    flash (rwx) : ORIGIN = 0x42000000, LENGTH = 4M   /* Memory-mapped flash address */
    ram  (rw) : ORIGIN = 0x3FC80000, LENGTH = 384K /* Internal RAM */
}

SECTIONS
{
		.header :
		{
		    LONG(0xaedb041d)
		    LONG(0xaedb041d)
		} > flash

    .text : 
    {
				KEEP(*(_flash_start))
				_start = .;
        *(.text*)
    } > flash

    .data : 
    {
        _data_start = .;
        *(.sdata*)
        *(.data*)
        *(.rodata*)
        _data_end = .;
    } > ram AT > flash

		_data_load_start = LOADADDR(.data);

    .bss (NOLOAD) :
    {
        _bss_start = .;
        *(.bss*)
        _bss_end = .;
    } > ram

		PROVIDE(__global_pointer$ = _data_start + 0x800);
		PROVIDE(_sp = 0x3fcdffff);
}
