toptail([H|T],OutList) :-
  lists:append([H],OutList,X),
  lists:reverse(T,[L|_]),
  lists:append(X,[L],[H|T]).
