% files

file('Makefile').
file('hpp.hpp').
file('cpp.cpp').

files :-
	file(X),
	open(X,write,F),
	close(F),
	fail.