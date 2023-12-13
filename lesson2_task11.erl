-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) ->
  encode_modified(List, []).

encode_modified([], Acc) ->
  lists:reverse(Acc);
encode_modified([X|T], []) ->
  encode_modified(T, [{1, X}] );
encode_modified([X|T], [{Count, X} | Rest]) ->
  encode_modified(T, [{Count+1, X} | Rest] );
encode_modified([Y|T], [{Count, X} | Rest]) when Y =:= X ->
  encode_modified(T, [{Count+1, X} | Rest]);
encode_modified([Y|T], [{Count, X} | Rest]) when Y =/= X ->
  encode_modified(T, [{1, Y}, {Count, X} | Rest]);
encode_modified([X|T], Acc) ->
  encode_modified(T, [{1, X} | Acc]).