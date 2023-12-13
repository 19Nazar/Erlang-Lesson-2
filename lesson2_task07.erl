-module(lesson2_task07).
-export([flatten/1]).

flatten(L) ->
    lists:reverse(flatten(L, [])).

flatten([], Acc) ->
    Acc;
flatten([H | T], Acc) when is_list(H) ->
    flatten(T, flatten(H, flatten([], Acc)));
flatten([H | T], Acc) ->
    flatten(T, [H | Acc]).