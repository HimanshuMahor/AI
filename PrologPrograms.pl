% P2 AppendList

conc([], L2, L2).
conc([H|T], L2, [H|R]) :-
    conc(T, L2, R).

mainP2 :-
    write('Enter List 1 : '),
    read(A),
    write('Enter List 2 : '),
    read(B),
    conc(A,B,R),
    write('Appended List : '),
    write(R),
    nl.

% Output AppendList
    % Enter List 1 : [1,2,3].
    % Enter List 2 : [5,6].
    % Appended List : [1,2,3,5,6]

% P3 ReverseList

reverse([], []).
reverse([H|T], R) :-
    reverse(T, RT),
    conc(RT, [H], R).

mainP3 :-
    write('Enter list : '),
    read(L),
    reverse(L,R),
    write('Reverse : '),
    write(R),
    nl.

% Output Reverse
    % Enter list : [1,3,5,7,9].
    % Reverse : [9,7,5,3,1]

% P10 Check Member

memb(X, [X|_]).
memb(X, [_|T]) :-
    memb(X, T).

mainP10 :-
    write('Enter List : '),
    read(A),
    write('Enter Number : '),
    read(B),
    memb(B,A),
    nl.

% Output Check Memeber
    % 22 ?- memb(3, [1,2,3,4,5]).
    % true 

% P11 Sumlist

sumlist([], 0).
sumlist([H|T], S) :-
    sumlist(T, S1),
    S is H + S1.

mainP11 :-
    write('Enter List : '),
    read(A),
    sumlist(A,R),
    write('Sum : '),
    write(R),
    nl.

% Output Sumlist
    % Enter List : [1,2,3,4].
    % Sum : 10

% P12 ListLengthEvenOrOdd

evenlength([]).
evenlength([_,_|T]) :-
    evenlength(T).

oddlength([_]).
oddlength([_,_|T]) :-
    oddlength(T).

mainP12 :-
    write('Enter list : '),
    read(L),

    ( oddlength(L) -> 
        write('ODD : true');
        write('ODD : false')
    ), nl,

    ( evenlength(L) -> 
        write('EVEN : true');
        write('EVEN : false')
    ), nl.

:- initialization(mainP12).

% Output ListLength
    % Enter list : [1,2,3,4,5,6].
    % ODD : false
    % EVEN : true

    % Enter list : [2,4,6].
    % ODD : true
    % EVEN : false

% P13 Maxlist

maxlist([X], X).
maxlist([H|T], H) :-
    maxlist(T, M),
    H >= M.

maxlist([H|T], M) :-
    maxlist(T, M),
    H < M.

mainP13 :-
    write('Enter List : '),
    read(A),
    maxlist(A,R),
    write('Max : '),
    write(R),
    nl.

% Output Maxlist
    % Enter List : [1,2,3,4,10,7].
    % Max : 10

% P14 InsertIntoList

insert(I, 1, L, [I|L]).
insert(I, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R).

mainP14 :-
    write('Enter list : '),
    read(L),
    write('Enter number element : '),
    read(I),
    write('Enter Position : '),
    read(N),
    insert(I,N,L,R),
    write('List after insertion : '),
    write(R),
    nl.

% Output InsetIntoList
    % Enter list : [1,2,3,4,5,99,12,45,10].
    % Enter number element : 111.
    % Enter Position : 4.
    % List after insertion : [1,2,3,111,4,5,99,12,45,10]

% P15 DeleteFromList

delete(1, [_|T], T).
delete(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R).

mainP15 :-
    write('Enter list : '),
    read(L),
    write('Enter Position : '),
    read(N),
    delete(N,L,R),
    write('List after deletion : '),
    write(R),
    nl.

% Output DeletionFromList
    % Enter list : [23,34,78,15,88].
    % Enter Position : 3.
    % List after deletion : [23,34,15,88]


