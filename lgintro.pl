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



:- initialization(true).