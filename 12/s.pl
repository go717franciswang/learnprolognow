:- module(s, [s/3]).

s(s(NP,VP)) --> np(NP,X,subject),vp(VP,X).

np(np(DET,ADJ,N,PP),X,_) --> det(DET,X),adj(ADJ),n(N,X),pp(PP).
np(np(PRO),_,Y) --> pro(PRO,Y).

pp([]) --> [].
pp(pp(PROP,NP)) --> prop(PROP),np(NP,_,object).

vp(vp(V,NP),X) --> v(V,X),np(NP,_,object).
vp(vp(V),X) --> v(V,X).

det(det(Word),X) --> [Word], {lex(Word,det,X)}.
pro(pro(Word),X) --> [Word], {lex(Word,pro,X)}.
n(n(Word),X) --> [Word], {lex(Word,n,X)}.
v(v(Word),X) --> [Word], {lex(Word,v,X)}.
adj([]) --> [].
adj(adj(Word,ADJ)) --> [Word],adj(ADJ), {lex(Word,adj)}.
prop(prop(Word)) --> [Word], {lex(Word,prop)}.

lex(the,det,_).
lex(a,det,singular).

lex(he,pro,subject).
lex(she,pro,subject).
lex(him,pro,object).
lex(her,pro,object).
lex(i,pro,subject).
lex(me,pro,object).
lex(you,pro,_).

lex(woman,n,singular).
lex(man,n,singular).
lex(apple,n,singular).
lex(pear,n,singular).
lex(men,n,plural).
lex(table,n,singular).
lex(cow,n,singular).
lex(shower,n,singular).

lex(eats,v,singular).
lex(eat,v,plural).
lex(shoots,v,singular).

lex(small,adj).
lex(frightened,adj).
lex(big,adj).
lex(fat,adj).

lex(on,prop).
lex(under,prop).

% 52 ?- s(T,[the,small,frightened,woman,on,the,table,eats,the,big,fat,cow,under,the,shower],[]).
% T = s(np(det(the), adj(small, adj(frightened, [])), n(woman), pp(prop(on), np(det(the), [], n(table), []))), vp(v(eats), np(det(the), adj(big, adj(fat, [])), n(cow), pp(prop(under), np(det(the), [], n(shower), [])))))
