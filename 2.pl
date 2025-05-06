conc([], L, L).
conc([H|T], L2, [H|R]) :- conc(T, L2, R).
