
skelex = [
	src.src log.log
	files = [ ypp.ypp lpp.lpp hpp.hpp cpp.cpp Makefile ]
	bat.bat sh.sh .gitignore
]

bat.bat = [
	'@start .'
	'@gvim -p ' + files/' '
]

.gitignore = [
	*~
	*.swp
	*.exe
	*.*log
	ypp.tab.?pp
	lex.yy.c
]

