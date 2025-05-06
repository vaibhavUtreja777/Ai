reverse([], []).
reverse([H|T], R) :-
    reverse(T, RevTail),
    append(RevTail, [H], R).
