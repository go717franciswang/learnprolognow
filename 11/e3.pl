:- dynamic sigmares/2.

sigmares(0,0).

sigma(N,S) :- sigmares(N,S), !.
sigma(N,S) :-
  N0 is N-1,
  sigma(N0,S0),
  S is S0+N,
  assert(sigmares(N,S)).
