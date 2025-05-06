sumlist([],0).
sumlist([H|T],S):-
    S1 is H,
    sumlist(T,S2),
    S is S1+S2.



























