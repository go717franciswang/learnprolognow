e1 :-
  open('hogwart.houses', write, Stream),
  tab(Stream, 10), write(Stream, gryffindor), nl(Stream),
  write(Stream, hufflepuff), tab(Stream, 8), write(Stream, ravenclaw), nl(Stream),
  tab(Stream, 10), write(Stream, slytherin), nl(Stream),
  close(Stream).
