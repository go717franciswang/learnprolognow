:- dynamic word/2.

readWord(InStream,W):-
      get_code(InStream,Char),
      checkCharAndReadRest(Char,Chars,InStream),
      atom_codes(W,Chars).

checkCharAndReadRest(10,[],_):-  !.
checkCharAndReadRest(32,[],_):-  !.
checkCharAndReadRest(-1,[],_):-  !.
checkCharAndReadRest(end_of_file,[],_):-  !.
checkCharAndReadRest(Char,[Char|Chars],InStream):-
      get_code(InStream,NextChar),
      checkCharAndReadRest(NextChar,Chars,InStream).

countWords(FilePath) :-
  open(FilePath, read, Stream),
  loadWords(Stream),
  close(Stream).

loadWords(Stream) :-
  \+ at_end_of_stream(Stream),
  readWord(Stream, Word),
  storeWord(Word),
  loadWords(Stream).

storeWord(Word) :-
  word(Word, Count),
  retract((word(Word, Count))),
  NewCount is Count + 1,
  assert((word(Word, NewCount))), !.
storeWord(Word) :-
  assert((word(Word, 1))).
