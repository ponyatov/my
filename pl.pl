% files

file('ypp.ypp').
file('lpp.lpp').
file('hpp.hpp').
file('cpp.cpp').

% CPUs

cpu(x86,'Intel i386').
cpu(i8086,'Intel i8086').
cpu(cm,'ARM Cortex-M').
cpu(avr,'Atmel ATmega AVR').

% OSes

os(linux).

% std.commands

cc('gcc').
cxx('g++').
make('make').
lex('flex').
yacc('bison').
