scalarMult(_,[],[]).
scalarMult(S,[H|T],[H2|T2]) :- H2 is S*H, scalarMult(S,T,T2).
