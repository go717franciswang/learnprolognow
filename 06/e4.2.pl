last([X], X).
last([_H|T], X) :- last(T,X).
