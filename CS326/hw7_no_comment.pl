isSet([]). 
isSet([_]).
isSet([H|T]):- not(member(H,T)), isSet(T). 

isSubset([], []). 
isSubset([], [_|_]). 
isSubset([H|T],S):- member(H,S), isSubset(T,S). 

unionSets([],C, C). 
unionSets([H|T], B, C):- member(H, B), unionSets(T, B, C).
unionSets([H|T], B, [H|C]):- not(member(H,B)), unionSets(T, B, C). 

intersectionSets([],_,[]). 
intersectionSets([H|T],S,[H|CT]) :- member(H,S), intersectionSets(T,S,CT).
intersectionSets([_|T],S,C) :- intersectionSets(T,S,C).

tally(_,[],0). 
tally(E,[E|T], N):- tally(E,T,X), N is X+1. 
tally(E,[_|T], N):- tally(E,T,N). 

subst(_,_,[],[]).
subst(X,Y,[H|T],[H2|T2]):- X = H, Y = H2, subst(X,Y,T,T2). 
subst(X,Y,[H|T],[H2|T2]):- H2 is H, subst(X,Y,T,T2). 

insert(X,[],[X]).
insert(X,[H|T],[X,H|T]) :-X =< H.
insert(X,[H|T],[H|T1]) :- X > H, insert(X, T, T1).

flattenList([], []). 
flattenList([X|Xs], [X|Ys]) :- not(is_list(X)), flattenList(Xs, Ys).
flattenList([X|Xs], Ys) :-
    is_list(X), 
    flattenList(X, FlatX), 
    flattenList(Xs, FlatXs), 
    append(FlatX, FlatXs, Ys). 
