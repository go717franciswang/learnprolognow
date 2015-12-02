swap(leaf(X), leaf(X)).
swap(tree(X0, Y0), tree(Y1, X1)) :- swap(X0, X1), swap(Y0, Y1).
