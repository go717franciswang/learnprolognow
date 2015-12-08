pptree(Tree) :- pptree(Tree,0).

pptree(Tree, Tabs) :-
  functor(Tree,_,Arity),
  Arity < 2,
  tab(Tabs), write(Tree).
pptree(Tree, Tabs) :-
  functor(Tree,_,Arity),
  Arity >= 2,
  Tree =.. [Functor|Args],
  tab(Tabs), write(Functor), write('('),
  NewTabs is Tabs+2,
  pptrees(Args, NewTabs), write(')').

pptrees([Arg1|RestArgs], Tabs) :-
  nl,
  pptree(Arg1,Tabs),
  pptrees(RestArgs,Tabs).
pptrees([], _).
