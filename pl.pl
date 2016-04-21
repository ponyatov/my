% files (lex skeleton powered)

file('ypp.ypp').
file('lpp.lpp').
file('hpp.hpp').
file('cpp.cpp').
file('Makefile').

consult('cpu.pl').

% supported oses

consult('os/linux.pl').
consult('os/win32.pl').
banned_os(android).
banned_os(ios).
banned_os(raw).
banned_os(dos).

%% build/host/target triplets

target(X) :- os(X).

% std.programs

cc("gcc").
cxx("g++").

make(build(linux),"make").
make(build(linux),"mingw-make").
make(build(win32),"mingw32-make").

lex("flex").
yacc("bison").
