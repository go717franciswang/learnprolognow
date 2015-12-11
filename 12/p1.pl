:- use_module(s).
:- use_module(pptree).

test(InFilePath, OutFilePath) :-
  open(InFilePath, read, InStream),
  open(OutFilePath, write, OutStream),
  testSentences(InStream, OutStream),
  close(InStream),
  close(OutStream).

testSentences(InStream, OutStream) :-
  \+ at_end_of_stream(InStream),
  read(InStream, Sentence),
  write(OutStream, Sentence), nl(OutStream),
  testSentence(OutStream, Sentence), nl(OutStream),
  testSentences(InStream, OutStream).
testSentences(InStream, _) :-
  at_end_of_stream(InStream).

testSentence(OutStream, Sentence) :-
  s(T, Sentence, []), !,
  pptree(OutStream, T).
testSentence(OutStream, _Sentence) :-
  write(OutStream, no).
