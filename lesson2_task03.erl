-module(lesson2_task03).
-export([element_at/2]).

element_at(L, N) ->
    element_at(L, N, 1).

element_at([], _, _) ->
    undefined;
element_at([H | _], N, N) ->
    H;
element_at([_ | T], N, Current) ->
    element_at(T, N, Current + 1).