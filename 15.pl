delete(0,[_|T],T):- !.
delete(N,[H|T],[H|R]):-
    N1 is N-1,
    delete(N1,T,R).







