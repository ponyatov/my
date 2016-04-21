% files

file('ypp.ypp').
file('lpp.lpp').
file('hpp.hpp').
file('cpp.cpp').
file('Makefile').

% CPUs

cpu(x86,'Intel i386').
cpu(xeon,'Intel Xeon x86_64').
cpu(i8086,'Intel i8086').
cpu(cm,'ARM Cortex-M').
cpu(avr,'Atmel ATmega AVR').

% OSes

os(linux).

% std.commands

cc('gcc').
cxx('g++').

make(build(linux),'make').
make(build(win32),'mingw32-make').

lex('flex').
yacc('bison').
