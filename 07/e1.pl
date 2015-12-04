s(A,B) :- foo(A,C), bar(C,D), wiggle(D,B).
foo([choo|W], W).
foo(A,B) :- foo(A,C), foo(C,B).
bar(A,B) :- mar(A,C), zar(C,B).
mar(A,B) :- me(A,C), my(C,B).
me([i|W], W).
my([my|W], W).
zar(A,B) :- blar(A,C), car(C,B).
blar([a|W], W).
car([train|W], W).
wiggle([toot|W], W).
wiggle(A,B) :- wiggle(A,C), wiggle(C,B).

% 1 ?- s(X,[]).
% X = [choo, i, my, a, train, toot] ;
% X = [choo, i, my, a, train, toot, toot] ;
% X = [choo, i, my, a, train, toot, toot, toot] ;
% X = [choo, i, my, a, train, toot, toot, toot, toot] ;
% X = [choo, i, my, a, train, toot, toot, toot, toot|...]
