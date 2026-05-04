% Gender
male(john).
male(paul).
male(mike).
male(david).
male(kevin).

female(mary).
female(linda).
female(susan).
female(emma).

% Parent relationships
parent(john, paul).
parent(mary, paul).

parent(john, linda).
parent(mary, linda).

parent(paul, mike).
parent(susan, mike).

parent(paul, emma).
parent(susan, emma).

parent(linda, kevin).
parent(david, kevin).


% Father
father(X, Y) :-
    parent(X, Y),
    male(X).

% Mother
mother(X, Y) :-
    parent(X, Y),
    female(X).

% Sibling
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Brother
brother(X, Y) :-
    sibling(X, Y),
    male(X).

% Sister
sister(X, Y) :-
    sibling(X, Y),
    female(X).

% Grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Grandfather
grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

% Grandmother
grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).

% Uncle
uncle(X, Y) :-
    brother(X, Z),
    parent(Z, Y).

% Aunt
aunt(X, Y) :-
    sister(X, Z),
    parent(Z, Y).

% Cousin
cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.
