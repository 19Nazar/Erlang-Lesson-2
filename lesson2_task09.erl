-module(lesson2_task09).
-export([pack/1]).

pack(L) ->
    lists:reverse(pack(L, [])).

pack([], Acc) ->
    Acc;
pack([H | T], Acc) ->
    case Acc of
        [] -> pack(T, [[H] | Acc]);
        [Sublist | Rest] ->
            case lists:member(H, Sublist) of
                true -> pack(T, [[H | Sublist] | Rest]);
                false -> pack(T, [[H] | Acc])
            end
    end.