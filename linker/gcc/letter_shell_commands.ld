  /* Constant data into "FLASH" Rom type memory */
  .rodata :
  {
    . = ALIGN(4);
    *(.rodata)         /* .rodata sections (constants, strings, etc.) */
    *(.rodata*)        /* .rodata* sections (constants, strings, etc.) */

    /* Insert shell command section here */
    . = ALIGN(4);
    _shell_command_start = .; /* Define start of shell command section */
    KEEP (*(shellCommand))    /* Keep shellCommand section */
    _shell_command_end = .;   /* Define end of shell command section */
    . = ALIGN(4);
  } >FLASH