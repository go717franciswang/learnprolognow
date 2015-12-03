sublist(Sub,L) :- lists:append([_,Sub,_],L).

zebra(X) :-
  % Sol = [[Man, Animal, Color], ...]
  system:length(Sol, 3),
  lists:member([english,_,red], Sol),
  lists:member([spanish,jaguar,_], Sol),
  sublist([[_,snail,_],[japanese,_,_]], Sol),
  sublist([[_,snail,_],[_,_,blue]], Sol),
  lists:member([X,zebra,_], Sol).
