# Atari 8bit Clock

Analog watch for Atari 8-bit computers: 800XL, 65XE, 130XE

Written in [*Action!* language](https://en.wikipedia.org/wiki/Action!_(programming_language))

### Compilation environment setup
To compile *Action!* sources mount Action! Toolkit as D2

Action source files mounted on D8


`
~/lab/atari/tools/ataritools/src/asc2atari ./src/main/action/GR0.ACT ~/lab/atari/Dev/D8/GR0.ACT
~/lab/atari/tools/ataritools/src/asc2atari ./src/main/action/SCR.ACT ~/lab/atari/Dev/D8/SCR.ACT
~/lab/atari/tools/ataritools/src/asc2atari ./src/main/action/DIV24.ACT ~/lab/atari/Dev/D8/DIV24.ACT
~/lab/atari/tools/ataritools/src/asc2atari ./src/main/action/TIME.ACT ~/lab/atari/Dev/D8/TIME.ACT
`

Compile with *Action!* using command:

`C "D8:TIME.ACT"`

ASCII to ATASCII conversion tool: [AtariTools](https://github.com/jfsantos/ataritools)


### Credits

Tools used:
- [Altirra](https://www.virtualdub.org/altirra.html) emulator
- [*Action!* language](https://sourceforge.net/projects/atari-action/)
- *Action!* toolkit
- [Visual Studio Code](https://code.visualstudio.com/)
- [OSSAction Plugin](https://github.com/pedgarcia/ossaction-vscode) for VSCode as described [here](https://www.vintageisthenewold.com/going-into-action-with-atari-xl-xe-part-4-using-vscode-and-action-with-syntax-highlighting)
- [WUDNS IDE](https://www.wudsn.com/index.php/ide) - Eclipse with 6502 cross compiler
- [MAD-ASSEMBLER](https://mads.atari8.info/mads_eng.html)

Libraries used:
- [Unsigned 24 bit integer division](https://codebase64.org/doku.php?id=base:24bit_division_24-bit_result)
