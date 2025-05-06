memb(X,[H|T]):-
    X=H -> ! ;
    memb(X,T).
