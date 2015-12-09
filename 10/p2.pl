unifiable([H|T], Term, [H|T2]) :- \+ \+ =(H,Term), !, unifiable(T,Term,T2).
unifiable([H|T], Term, T2) :- \+ =(H,Term), unifiable(T,Term,T2).
unifiable([], _, []).
