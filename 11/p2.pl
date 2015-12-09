subset([],[]).
subset([H|T], [H|T2]) :- subset(T,T2), \+ member(H,T).
subset(T, [H|T2]) :- subset(T,T2), \+ member(H,T).

powerset(X,Y) :- findall(Z,subset(Z,X),Y).
