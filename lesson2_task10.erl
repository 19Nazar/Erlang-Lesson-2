-module(lesson2_task10).
-export([encode/1]).

encode(L) ->
    lists:reverse(encode(L, [])).

encode([], Acc) ->
    Acc;
encode([H | T], Acc) ->
    case Acc of
        [] -> encode(T, [{1, H} | Acc]);
        [{Count, X} | Rest] when X =:= H ->
            encode(T, [{Count + 1, X} | Rest]);
        _ -> encode(T, [{1, H} | Acc])
    end.