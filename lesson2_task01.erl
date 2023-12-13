-module(lesson2_task01).
-export([last/1]).

last([Last]) ->
    Last;
last([_ | Tail]) ->
    last(Tail).