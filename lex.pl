% lexical scaner

lex :-
		open('/home/ponyatov/my/skelex.bI',read,SRCFILE),
		read_stream_to_codes(SRCFILE,SRC),
		close(SRCFILE),
		write(SRC).