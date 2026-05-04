% P4 Sum fo Two Number

sum(A,B,R) :-
    R is A + B.

mainP4 :-
    write('Enter Number 1 : '),
    read(A),
    write('Enter Number 2 : '),
    read(B),
    sum(A,B,R),
    write('Sum is : '),
    write(R),
    nl.

% Output P4
    % Enter Number 1 : 12.
    % Enter Number 2 : 13.
    % Sum is : 25

% P5 Maximum of Two Number

max(A,B,A) :- A >= B.
max(A,B,B) :- A < B.

mainP5 :-
    write('Enter num 1 : '),
    read(A),
    write('Enter num 2 : '),
    read(B),
    max(A,B,R),
    write('Maximum is : '),
    write(R),
    nl.

% Output P5
    % Enter num 1 : 5. 
    % Enter num 2 : 15.
    % Maximum is : 15

% Product of Two Number

product(A,B,R) :-
    R is A * B.

mainProduct :-
    write('Enter num 1 : '),
    read(A),
    write('Enter num 2 : '),
    read(B),
    product(A,B,R),
    write('Product is : '),
    write(R),
    nl.

% Output Product
    % Enter num 1 : 5.
    % Enter num 2 : 13.
    % Product is : 65

% P6 Factorial

fact(0,1).
fact(N,R) :-
    N > 0,
    N1 is N - 1,
    fact(N1,R1),
    R is N * R1.

mainP6 :-
    write('Enter number : '),
    read(A),
    fact(A,R),
    write('Factorial is : '),
    write(R),
    nl.

% Output Factorial
    % Enter number : 5.
    % Factorial is : 120

% P7 Fibonacci 

fib(0,0).
fib(1,0).
fib(2,1).
fib(A,R) :-
    A > 2,
    A1 is A - 1,
    A2 is A - 2,
    fib(A1,R1),
    fib(A2,R2),
    R is R1 + R2.

mainP7 :-
    write('Enter number : '),
    read(A),
    fib(A,R),
    write('Fibonacci is : '),
    write(R),
    nl.
    
% Output Fibonacci
    % Enter number : 6.
    % Fibonacci is : 5

% P8 Power

power(_,0,1).
power(B,P,R) :-
    P > 0,
    P1 is P - 1,
    power(B, P1, R1),
    R is B * R1.

mainP8 :-
    write('Enter Base : '),
    read(A),
    write('Enter Power : '),
    read(B),
    power(A,B,R),
    write('Result is : '),
    write(R),
    nl.

% Output Power
    % Enter Base : 5.
    % Enter Power : 3.
    % Result is : 125

% P9 Multiply

multi(_, 0, 0).
multi(N1, N2, R) :-
    N2 > 0,
    N3 is N2 - 1,
    multi(N1, N3, R1),
    R is R1 + N1.

mainP9 :-
    write('Enter Number 1 : '),
    read(A),
    write('Enter Number 2 : '),
    read(B),
    multi(A,B,R),
    write('Result is : '),
    write(R),
    nl.

% Output Multiply
    % Enter Number 1 : 23.
    % Enter Number 2 : 32.
    % Result is : 736