-module(lesson2_task13).
-export([decode/1]).

decode(RLE) ->
  decode(RLE, []).

decode([], Acc) -> lists:reverse(Acc);
decode([{Count, Value} | T], Acc) ->
  Expanded = expand(Count, Value, []),
  decode(T, lists:append(Expanded, Acc)).

expand(0, _, Acc) -> Acc;
expand(Count, Value, Acc) -> expand(Count - 1, Value, [Value | Acc]).