connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13).
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19).

path(X, Y) :- connected(X, Y).
path(X, Y) :- connected(X, Z), path(Z, Y).

% 1 ?- path(5,10).
% true .
%
% 2 ?- path(1,P).
% P = 2 ;
% false.
%
% 3 ?- path(13,P).
% P = 14 ;
% P = 9 ;
% P = 17 ;
% P = 10 ;
% P = 18 ;
% false.
