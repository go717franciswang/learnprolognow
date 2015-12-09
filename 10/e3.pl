split([], [], []).
split([X|Y], [X|P], N) :- X >= 0, !, split(Y,P,N).
split([X|Y], P, [X|N]) :- X < 0, split(Y,P,N).
