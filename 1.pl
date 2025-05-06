male(rohan).
male(sohan).
male(mohan).
male(rahul).
male(mohit).

female(sita).
female(gita).
female(rupa).
female(riya).
female(meena).

parent(sohan,rohan).
parent(sohan,mohan).
parent(rahul,sohan).
parent(rahul,mohit).
parent(gita,sita).
parent(gita,rupa).
parent(riya,gita).
parent(gita,rohan).
parent(meena,mohit).


father(X,Y):- male(X),parent(X,Y).
mother(X,Y):- female(X),parent(X,Y).
brother(X,Y):- male(X),father(Z,X),father(Z,Y),X\=Y.
brother(X,Y):- male(X),mother(Z,X),mother(Z,Y),X\=Y.
sister(X,Y):- female(X),father(Z,X),father(Z,Y),X\=Y.
sister(X,Y):- female(X),mother(Z,X),mother(Z,Y),X\=Y.
grandfather(X,Y):- male(X),father(X,Z),father(Z,Y).
grandmother(X,Y):- female(X),mother(X,Z),father(Z,Y).
uncle(X,Y):- father(Z,Y),brother(Z,X).

ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(Z,Y),ancestor(X,Z).



































































