word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

crossword(Word1,Word2,Word3,Word4,Word5,Word6) :-
  word(Word1, _,C11,_,C21,_,C31,_),
  word(Word2, _,C12,_,C22,_,C32,_),
  word(Word3, _,C13,_,C23,_,C33,_),
  word(Word4, _,C11,_,C12,_,C13,_),
  word(Word5, _,C21,_,C22,_,C23,_),
  word(Word6, _,C31,_,C32,_,C33,_).
