maxlist([X],X):- !.
maxlist([H|T],M):-
    maxlist(T,M1),
    (H>M1 -> M is H ; M is M1).
