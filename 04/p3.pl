combine3([], [], []).
combine3([H|T], [H2|T2], [j(H,H2)|T3]) :- combine3(T,T2,T3).
