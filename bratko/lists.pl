%L1 = [ ann, tennis, tom, skiing ].
%L1 = .( ann, .(tennis, .(tom, .(skiing,[])))). 

ht([H|T]) :- write(H),nl,write(T).

%List1 = [a ,b,c ] ,
%List2 = .(a, .( b, .( c, []))).

