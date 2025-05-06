power(_,0,1).
power(Num,1,Num):-!.

power(Num,Pow,Ans):-
    Pow>0,
    Pow1 is Pow-1,
    power(Num,Pow1,Ans1),
    Ans is Ans1*Num.

power(Num,Pow,Ans):-
    Pow<0,
    Pow1 is (-1)*Pow - 1,
    power(Num,Pow1,Ans1),
    Ans is 1/(Ans1*Num).
