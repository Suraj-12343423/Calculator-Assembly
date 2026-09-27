# Mini Calculator — x86-64 Assembly

A calculator built from scratch using **x86-64 Assembly on Linux**.

## Project Goal

The goal of this project is to understand how a calculator works at a low level instead of relying on a high-level programming language.

The project is being built step by step:

* CPU registers
* Arithmetic instructions
* Linux system calls
* Terminal input
* ASCII → integer conversion
* Arithmetic operations
* Integer → ASCII conversion
* Terminal output

## Current Operations

The calculator currently supports:

* Addition `+`
* Subtraction `-`
* Multiplication `*`
* Division `/`

Example:

```text
12 + 12
```

## Technologies

* x86-64 Assembly
* NASM
* Linux
* GNU `ld`
* Git
* GitHub

## Build

Assemble the source code:

```bash
nasm -f elf64 calculator.asm -o calculator.o
```

Link the object file:

```bash
ld calculator.o -o calculator
```

Run:

```bash
./calculator
```

## Project Structure

```text
Calculator/
├── calculator.asm
├── calculator.o
└── calculator
```

`calculator.asm` is the source code.

`calculator.o` is the assembled object file.

`calculator` is the executable.

## Learning Focus

This project is being developed from the ground up to understand:

```text
Input
  ↓
ASCII characters
  ↓
Integer conversion
  ↓
CPU registers
  ↓
Arithmetic instruction
  ↓
Result
  ↓
Terminal output
```

The project will continue to evolve as more Assembly concepts are learned.

## Author

**Suraj Kalla**

