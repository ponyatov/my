% files

file('Makefile').
file('hpp.hpp').
file('cpp.cpp').

go :-
	file(X),
	open(X,write,F),
	close(F),
	fail.