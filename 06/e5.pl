swapfl([],[]).
swapfl([X],[X]).
swapfl([X,Y],[Y,X]).
swapfl([X,Y|T],[Z,Y|T2]) :-  T \= [], swapfl([X|T],[Z|T2]).
