# load-ascii-to-register

## Credit
- completed as part of CSE-12 at UC Santa Cruz for professor Marcelo Siero

## Registers
used registers: `t0`-`t2`, `a0`-`a4`

## Description
- iterates over the provided string until a `CR` character is found
- the program then reverses back along the string using the following equation: $\text{a0} = \sum (\text{digit value}\cdot10^{\text{place value}})$

## Usage
- designed in the RARs IDE
- pointer to the start of a numeric ascii string in memory is expected in register `a0` 
    - assumes provided argument is in Little Endian notation with the string ending in ascii value 13
- after returning, register `a0` contains the value of the provided ascii string




