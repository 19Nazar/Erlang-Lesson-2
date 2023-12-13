-module(lesson2_task02).
-export([but_last/1]).

but_last(L) ->
    reverse(take(reverse(L), 2)).

take(_, 0) ->
    [];
take([H|T], N) ->
    [H | take(T, N-1)].

reverse(L) ->
    reverse(L, []).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc) ->
    reverse(T, [H|Acc]).