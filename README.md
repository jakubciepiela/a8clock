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


