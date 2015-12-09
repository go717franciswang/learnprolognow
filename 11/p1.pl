subset([],[]).
subset(S, [H|T2]) :- subset(T,T2), \+ member(H,T), select(H,S,T).
subset(T, [H|T2]) :- subset(T,T2), \+ member(H,T).
