-module(lesson2_task14).
-export([duplicate/1]).

duplicate(List) ->
  duplicate(List, []).

duplicate([], Acc) -> lists:reverse(Acc);
duplicate([X | T], Acc) -> 
  Duplicated = [X | [X | []]],
  duplicate(T, lists:reverse(Duplicated, Acc)).