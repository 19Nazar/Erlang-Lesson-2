-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified(RLE) ->
  decode_modified(RLE, []).

decode_modified([], Acc) -> lists:reverse(Acc);
decode_modified([H | T], Acc) when is_atom(H) ->
  decode_modified(T, [H | Acc]);
decode_modified([{Count, Value} | T], Acc) ->
  Expanded = expand(Count, Value, []),
  decode_modified(T, reverse_append(Expanded, Acc)).

expand(0, _, Acc) -> Acc;
expand(Count, Value, Acc) -> expand(Count - 1, Value, [Value | Acc]).

reverse_append([], List) -> List;
reverse_append([H | T], List) -> reverse_append(T, [H | List]).