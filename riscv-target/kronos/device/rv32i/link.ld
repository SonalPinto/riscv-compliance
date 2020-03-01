OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
  . = 0x00000000;
  .text : { *(.text) }

  . = ALIGN(0x100);
  .data : { *(.data) }
  .bss : { *(.bss) }
  . = ALIGN(0x100);
  .tohost : { *(.tohost) }
}