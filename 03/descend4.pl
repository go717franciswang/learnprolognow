child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

descend(X,Y)  :-  child(X,Y).

descend(X,Y)  :-  descend(Z,Y),
child(X,Z).

% 1 ?- trace.
% true.
%
% [trace] 1 ?- descend(anne, emily).
%    Call: (7) descend(anne, emily) ? creep
%    Call: (8) child(anne, emily) ? creep
%    Fail: (8) child(anne, emily) ? creep
%    Redo: (7) descend(anne, emily) ? creep
%    Call: (8) descend(_G1725, emily) ? creep
%    Call: (9) child(_G1725, emily) ? creep <- interestingly, SWI-Prolog avoids non-terminating behavior by calling child instead of descend here
%    Exit: (9) child(donna, emily) ? creep
%    Exit: (8) descend(donna, emily) ? creep
%    Call: (8) child(anne, donna) ? creep
%    Fail: (8) child(anne, donna) ? creep
%    Redo: (8) descend(_G1725, emily) ? creep
%    Call: (9) descend(_G1725, emily) ? creep
%    Call: (10) child(_G1725, emily) ? creep
%    Exit: (10) child(donna, emily) ? creep
%    Exit: (9) descend(donna, emily) ? creep
%    Call: (9) child(_G1725, donna) ? creep
%    Exit: (9) child(caroline, donna) ? creep
%    Exit: (8) descend(caroline, emily) ? creep
%    Call: (8) child(anne, caroline) ? creep
%    Fail: (8) child(anne, caroline) ? creep
%    Redo: (9) descend(_G1725, emily) ? creep
%    Call: (10) descend(_G1725, emily) ? creep
%    Call: (11) child(_G1725, emily) ? creep
%    Exit: (11) child(donna, emily) ? creep
%    Exit: (10) descend(donna, emily) ? creep
%    Call: (10) child(_G1725, donna) ? creep
%    Exit: (10) child(caroline, donna) ? creep
%    Exit: (9) descend(caroline, emily) ? creep
%    Call: (9) child(_G1725, caroline) ? creep
%    Exit: (9) child(bridget, caroline) ? creep
%    Exit: (8) descend(bridget, emily) ? creep
%    Call: (8) child(anne, bridget) ? creep
%    Exit: (8) child(anne, bridget) ? creep
%    Exit: (7) descend(anne, emily) ? creep
% true .

% but ?- descend(emily, donna) is non-terminating.
