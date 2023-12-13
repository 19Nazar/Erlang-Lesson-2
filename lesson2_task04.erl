-module(lesson2_task04).
-export([len/1]).

len(L) ->
    len(L, 0).

len([], Acc) ->
    Acc;
len([_ | T], Acc) ->
    len(T, Acc + 1).