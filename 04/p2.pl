combine2([], [], []).
combine2([H|T], [H2|T2], [[H,H2]|T3]) :- combine2(T,T2,T3).
