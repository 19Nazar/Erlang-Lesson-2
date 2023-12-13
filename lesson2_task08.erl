-module(lesson2_task08).
-export([compress/1]).

compress(L) ->
    lists:reverse(compress(L, [])).

compress([], Acc) ->
    Acc;
compress([H | T], Acc) ->
    case Acc of
        [] -> compress(T, [H | Acc]);
        [X | _] when X =:= H -> compress(T, Acc);
        _ -> compress(T, [H | Acc])
    end.