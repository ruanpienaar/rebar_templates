-module({{mod}}).

%% API
-export([start_link/0]).

%% State M exports
-export([
    init/1, callback_mode/0, terminate/3
]).
%% State Machine states
-export([
    initial_state/3
]).

%% optional_callbacks:
% format_status/2 -> Has got a default implementation
% terminate/3,    -> Has got a default implementation
% code_change/4,  -> Only needed by advanced soft upgrade
% state_name/3,   -> Example for callback_mode() =:= state_functions:
%                 there has to be a StateName/3 callback function
%                 for every StateName in your state machine but the state name
%                 'state_name' does of course not have to be used.
% handle_event/4 -> For callback_mode() =:= handle_event_function

-define(REG_NAME, {local, ?MODULE}).

start_link() ->
    gen_statem:start_link(?REG_NAME, ?MODULE, {}, []).

init({}) ->
    {ok, initial_state, _Data = #{}}.

%% state_functions | handle_event_function
callback_mode() ->
    'state_functions'.

%% {next_state, NextState, NewData} % {next_state,NextState,NewData,[]} |
%% {next_state, NextState, NewData, ActionsList}
%% {keep_state, NewData} % {keep_state, NewData, []} |
%% {keep_state, NewData, ActionsList} |
%% keep_state_and_data % {keep_state_and_data,[]} |
%% {keep_state_and_data, ActionsList} |
%% {repeat_state, NewData} % {repeat_state,NewData,[]} |
%% {repeat_state, NewData, ActionsList} |
%% repeat_state_and_data % {repeat_state_and_data,[]} |
%% {repeat_state_and_data, ActionsList} |
%% stop % {stop,normal} |
%% {stop, Reason} |
%% {stop, Reason, NewData} |
%% {stop_and_reply, Reason, Replies} |
%% {stop_and_reply, Reason, Replies, NewData}.
initial_state(EventType, CurentState, Data) ->
    io:format("~p initial_state(~p, ~p, ~p)~n", 
        [?MODULE, EventType, CurentState, Data]),
    {next_state, initial_state, _NewData=Data}.

terminate(Reason, State, Data) ->
    io:format("~p terminate(~p, ~p, ~p)~n",
        [?MODULE, Reason, State, Data]),
    ok.