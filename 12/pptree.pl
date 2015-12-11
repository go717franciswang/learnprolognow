:- module(pptree, [pptree/2]).

pptree(Stream, Tree) :- pptree(Stream, Tree,0).

pptree(Stream, Tree, Tabs) :-
  is_leaf(Tree), !,
  tab(Stream, Tabs), write(Stream, Tree).
pptree(Stream, Tree, Tabs) :-
  \+ is_leaf(Tree),
  Tree =.. [Functor|Args],
  tab(Stream, Tabs), write(Stream, Functor), write(Stream, '('),
  NewTabs is Tabs+2,
  pptrees(Stream, Args, NewTabs), write(Stream, ')').

pptrees(Stream, [Arg1|RestArgs], Tabs) :-
  nl(Stream),
  pptree(Stream, Arg1,Tabs),
  pptrees(Stream, RestArgs,Tabs).
pptrees(_Stream, [], _).

is_leaf([]) :- !.
is_leaf(Tree) :-
  Tree =.. [_Functor|Args],
  [SingleArg] = Args,
  functor(SingleArg,_,0).
