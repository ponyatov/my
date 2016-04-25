% lexical scaner

%:- use_module(library(pio)).

%eol --> [ '\r\n' ]. % win32/dos
%eol --> [ '\n'   ]. % unix
%
%tbl -->	[ '\t'   ].	% tabulation
%spc --> [ ' '    ].	% space
%
%space --> [] ; eol ; tbl ; spc .	% any blank char (space)
%
%%letter(X) --> [X],{char_type(alpha)}.
%%dig(X) --> [X],{char_type(digit)}.
%
%lex --> [].
%lex --> space.
%%lex --> ( space ; letter ; dig ) , lex.

%lex(X) --> {X=10}.
%lex([]) --> []. 
%lex(X) --> [X], {X='\n'}.
%lex([_|T]) --> [lex(T).

%		%,
%		atom_chars(S,SRC),format("~s~s",[S]).
%		%phrase(lex,SRC,OUT),format("",[OUT]).

space(X) --> [X],{code_type(X, space)}.
spaces([]) --> [].
spaces([H|T]) --> space(H),!,spaces(T).
	
char(X)  --> [X],{\+ code_type(X, space)}.
chars([]) --> [].
chars([H|T]) --> char(H),!,chars(T).

lex([H|T]) --> (spaces(H);char(H)),lex(T).
lex([]) --> [].

go :- phrase_from_file(lex(X),'/home/ponyatov/my/skelex.bI'),write(X),nl.
%go :-
%		open('/home/ponyatov/my/skelex.bI',read,SRCFILE),
%		read_stream_to_codes(SRCFILE,SRC),
%		close(SRCFILE),
%		phrase(lex(X),SRC),write(X),nl.

:- initialization(go;true).
