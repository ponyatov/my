% http://cmsmcq.com/2004/lgintro.html
%% to definite clause grammars and definite clause translation grammars
%% A working paper prepared for the W3C XML Schema Working Group
%% (c) C. M. Sperberg-McQueen

%%% Grammar E1, a trivial fragment of English
s --> np, vp.  % A sentence (s) is a noun phrase (np) 
               % plus a verb phrase
np --> det, n. % A noun phrase is a determiner plus a noun
np --> n.      % ... or just a noun.
vp --> v, np.  % A verb phrase is a verb and its direct 
               % object, which is an np
vp --> v.      % ... or just the verb (for intransitives).
n --> [mary].  % 'mary', 'john', 'woman, 'man', 'apple' 
               % are nouns.
n --> [john].
n --> [woman].
n --> [man].
n --> [apple].
det --> [the]. % 'the' is a determiner
v --> [loves]. % 'loves', 'eats', and 'sings' are verbs.
v --> [eats].
v --> [sings].

e1 :- phrase(s,X),write(X),nl,fail.

%%% E2: a trivial attribute grammar for a fragment of
%%% English, with a synthesized attribute for structural 
%%% description and enforcement of number agreement.

s(s(S,P)) --> np(S,Num), vp(P,Num).
np(np(D,N),Num) --> det(D,Num), n(N,Num).
np(np(N),pl) --> n(N,pl).
np(np(N),sg) --> pn(N,sg).
vp(vp(V,O),Num) --> v(V,Num), np(O,_).
vp(vp(V),Num) --> v(V,Num).
n(n(L),Num) --> [L], { lex(L,n,Num) }.
pn(pn(L),Num) --> [L], { lex(L,pn,Num) }.
v(v(L),Num) --> [L], { lex(L,v,Num) }.
det(det(L),Num) --> [L], { lex(L,det,Num) }.

lex(mary,pn,sg).
lex(john,pn,sg).
lex(woman,n,sg).
lex(women,n,pl).
lex(man,n,sg).
lex(men,n,pl).
lex(apple,n,sg).
lex(apples,n,pl).
lex(the,det,_).
lex(some,det,pl).
lex(one,det,sg).
lex(loves,v,sg).
lex(love,v,pl).
lex(eats,v,sg).
lex(eat,v,pl).
lex(sings,v,sg).
lex(sing,v,pl).

e2(X) :- s(x).

:- initialization(true).