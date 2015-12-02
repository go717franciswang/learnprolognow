combine1([], L, L).
combine1([H|T], [], [H|T]).
combine1([H|T], [H2|T2], [H,H2|T3]) :- combine1(T,T2,T3).
