-module(lesson2_task15).
-export([replicate/2]).

replicate(List, Count) ->
  replicate(List, Count, []).

replicate([], _, Acc) ->
  lists:reverse(Acc);
replicate(_, 0, Acc) ->
  lists:reverse(Acc);
replicate([H | T], Count, Acc) ->
  Replicated = replicate_element(H, Count, []),
  replicate(T, Count, reverse_append(Replicated, Acc)).

replicate_element(_, 0, Acc) -> Acc;
replicate_element(Element, Count, Acc) ->
  replicate_element(Element, Count - 1, [Element | Acc]).

reverse_append([], List) -> List;
reverse_append([H | T], List) -> reverse_append(T, [H | List]).