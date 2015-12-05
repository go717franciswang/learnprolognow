s(s(NP,VP)) --> np(NP,X,subject),vp(VP,X).

np(np(DET,N),X,_) --> det(DET,X),n(N,X).
np(np(PRO),_,Y) --> pro(PRO,Y).

vp(vp(V,NP),X) --> v(V,X),np(NP,_,object).
vp(vp(V),X) --> v(V,X).

det(det(Word),X) --> [Word], {lex(Word,det,X)}.
pro(pro(Word),X) --> [Word], {lex(Word,pro,X)}.
n(n(Word),X) --> [Word], {lex(Word,n,X)}.
v(v(Word),X) --> [Word], {lex(Word,v,X)}.

lex(the,det,_).
lex(a,det,singular).
lex(he,pro,subject).
lex(she,pro,subject).
lex(him,pro,object).
lex(her,pro,object).
lex(woman,n,singular).
lex(man,n,singular).
lex(apple,n,singular).
lex(pear,n,singular).
lex(men,n,plural).
lex(eats,v,singular).
lex(eat,v,plural).

% 21 ?- s(T,[he,eats,him],[]).
% T = s(np(pro(he)), vp(v(eats), np(pro(him)))) ;
