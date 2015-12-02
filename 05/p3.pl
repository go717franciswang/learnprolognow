dotAcc([],[],A,A).
dotAcc([H1|T1],[H2|T2],A,Dot) :- NewA is A+H1*H2, dotAcc(T1,T2,NewA,Dot).

dot(V1,V2,Dot) :- dotAcc(V1,V2,0,Dot).
