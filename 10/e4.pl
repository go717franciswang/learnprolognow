directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

direct(X,Y) :- directTrain(X,Y); directTrain(Y,X).

route(X,Y,_,[X,Y]) :- direct(X,Y),!.
route(X,Y,History,[X|R]) :-
  direct(X,Z),
  \+ member(Z,History),
  route(Z,Y,[X|History],R).

route(X,Y,R) :- route(X,Y,[],R).
