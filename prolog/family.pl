parent(john, mary).
parent(john, sam).
parent(susan, mary).
parent(susan, sam).

male(john).
female(susan).
female(mary).
male(sam).

father(X, Y) :- parent(X, Y), male(X).
