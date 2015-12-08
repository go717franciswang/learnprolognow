groundterm(X) :- nonvar(X), functor(X,_,0).
groundterm(X) :- nonvar(X), X \== [[]], X =.. [_,Y|Z], nonvar(Y), groundterm(Z).
groundterm(X) :- X == [[]].
