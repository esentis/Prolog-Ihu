/*  File:    ask10.pl
    Purpose: Why do I even exist?
*/

katathetis(N,[N|_]).
katathetis(N,[_|T]):-
    katathetis(N,T).
katathetis(N,[N|T]):-
    katathetis(N,T).

/*I know that the Tail is the price so I extract it*/
extractPrice([],0).
extractPrice([_|T],Price):-
    Price is T.

metafora([[]],0).
metafora([],0).
metafora([H|T],Sum):-
    extractPrice(H,P),
    metafora(T,Sum1),
    Sum is Sum1 + P.
