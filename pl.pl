% files

file('ypp.ypp').
file('lpp.lpp').
file('hpp.hpp'). file('meta.hpp').
file('cpp.cpp').
file('Makefile').

% file deps

makevar(cpp,'C') :- ['cpp.cpp','ypp.tab.cpp','lex.yy.c'].
makevar(hpp,'H') :- ['hpp.hpp','ypp.tab.hpp','meta.hpp'].

dep('lex.yy.c','lpp.lpp').
dep('ypp.tab.cpp','ypp.ypp').
dep('ypp.tab.hpp','ypp.ypp').
dep('exe.exe',[cpp,hpp]).

% CPUs

cpu(x86,'Intel i386').
cpu(xeon,'Intel Xeon x86_64').
cpu(i8086,'Intel i8086').
cpu(cm,'ARM Cortex-M').
cpu(avr,'Atmel ATmega AVR').

% OSes

os(linux,x86).
os(linux,xeon).

os(win32,x86).

os(dos,i8086).

os(baremetal,cm).
os(baremetal,avr).
os(baremetal,x86).

% std.commands

cc('gcc').
cxx('g++').
ld('ld').

make(build(linux),'make').
make(build(win32),'mingw32-make').

lex('flex').
yacc('bison').
