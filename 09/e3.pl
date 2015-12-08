termtype(X,atom) :- atom(X).
termtype(X,integer) :- integer(X).
termtype(X,float) :- float(X).
termtype(X,number) :- number(X).
termtype(X,constant) :- atomic(X).
termtype(X,variable) :- var(X).
termtype(X,simple_term) :- atomic(X); var(X).
termtype(X,complex_term) :- functor(X,_,Arity), Arity > 0.
termtype(_,term).
