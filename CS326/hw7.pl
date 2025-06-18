% Miguel Muniz 
% CS 326
% Hw 7
% 4/8/2023

% notes:
% H is head of list, T is tail of list, E is element of list, S is subset of list 

% 1. 
% a)
isSet([]). %the empty set is a set
isSet([_]).
isSet([H|T]):- not(member(H,T)), isSet(T). %if H is not a member of T, then H is a set, recursively check T
% ?- isSet([1,2,5]).
% Yes
% ?- isSet([1,2,1,5]).
% No

% b)
isSubset([], []). %empty set is a subset of itself
isSubset([], [_|_]). %empty set is a subset of any set
isSubset([H|T],S):- member(H,S), isSubset(T,S). %if H is a member of S, then H is a subset of S
% ?- isSubset([2,5], [1,5,3,2]).
% Yes

% c)
unionSets([],C, C). %the set has a union with empty sets of itself
unionSets([H|T], B, C):- member(H, B), unionSets(T, B, C). %if C is a member of B, then C is a union of B and T
unionSets([H|T], B, [H|C]):- not(member(H,B)), unionSets(T, B, C). 
% ?- unionSets([2,5,4], [1,5,3,2], C).
% C = [4,1,5,3,2]


% d)
intersectionSets([],_,[]). 
intersectionSets([H|T],S,[H|CT]) :- member(H,S), intersectionSets(T,S,CT).
intersectionSets([_|T],S,C) :- intersectionSets(T,S,C).
% ?- intersectionSets([2,5,4], [1,5,3,2], C).
% C = [2,5]

% 2.
tally(_,[],0). %empty list has no elements, the N is the result and E is element
tally(E,[E|T], N):- tally(E,T,X), N is X+1. % if E is the head of the list, then N is the result of tallying the tail of the list
tally(E,[_|T], N):- tally(E,T,N). % if E is not the head of the list, then N is the result of tallying the tail of the list
% ?- tally(3, [1,2,3,1,2,3], N).
% N = 2

% 3.
subst(_,_,[],[]). %X, Y, empty list, empty list1
subst(X,Y,[H|T],[H2|T2]):- X = H, Y = H2, subst(X,Y,T,T2). %if X is H, then Y is H2, then continue.
subst(X,Y,[H|T],[H2|T2]):- H2 is H, subst(X,Y,T,T2). %set H2 is H
% ?- subst(1, 2, [1,2,3,1,2,3], L1).
% L1 = [2,2,3,2,2,3]

% 4.
insert(X,[],[X]). %if X is empty, then X is the list
insert(X,[H|T],[X,H|T]) :-X =< H. %if X is less than or equal to H, then X is the list
insert(X,[H|T],[H|T1]) :- X > H, insert(X, T, T1). %if X is greater than H, then X is the list
% % ?- insert(5, [1,3,4,7], L1).
% % L1 = [1,3,4,5,7]


% 5.
flattenList([], []). % empty list is empty list
flattenList([X|Xs], [X|Ys]) :- not(is_list(X)), flattenList(Xs, Ys). % if X is not a list, then X is Ys
flattenList([X|Xs], Ys) :- % if X is a list, then
    is_list(X), % if X is a list, then
    flattenList(X, FlatX), % flatten X
    flattenList(Xs, FlatXs), % flatten Xs
    append(FlatX, FlatXs, Ys). % append FlatX and FlatXs to Ys

% ?- flattenList([1, [2, [3, 4]], 5], L).
% L = [1, 2, 3, 4, 5]

