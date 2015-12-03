flattenAcc([], A, A).
flattenAcc([[]|T], Acc, Flattened) :- flattenAcc(T, Acc, Flattened).
flattenAcc([[H|T]|T2], Acc, Flattened) :- flattenAcc([H,T|T2], Acc, Flattened).
flattenAcc([H|T], Acc, Flattened) :- not(is_list(H)), flattenAcc(T, [H|Acc], Flattened).

flatten(List, Flat) :- flattenAcc(List, [], A), lists:reverse(Flat, A).
