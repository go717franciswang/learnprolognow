setAcc([], A, A).
setAcc([X|T], Acc, Set) :- member(X, Acc), setAcc(T, Acc, Set).
setAcc([X|T], Acc, Set) :- not(member(X, Acc)), setAcc(T, [X|Acc], Set).

set(InList, OutList) :- setAcc(InList, [], X), lists:reverse(X, OutList).
