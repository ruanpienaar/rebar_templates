#!/usr/bin/env escript
%%%'   HEADER
%% @author    name <email>
%% @copyright year author
%% @doc       {{description}}
%% @end
-export([main/1]).
-define(CMD, filename:basename(escript:script_name())).
%%%.
%%%'   PUBLIC API
-spec main(Args) -> void()
  when
  Args :: list(string()).
main(_)->
  usage().

%%%.
%%%'   PRIVATE FUNCTIONS
%% @private
-spec usage() -> void().
usage() ->
  io:format("Usage: ~s ...~n", [?CMD]),
  halt(1).

%%%.
%%% vim: set filetype=erlang tabstop=2 foldmarker=%%%',%%%. foldmethod=marker:
