-module({{name}}).

-record(?MODULE, {
    key,
    value
}).

% Table
-export([
    create_table/1,
    columns/0
]).

%% CRUD
-export([
    create/2,
    dirty_create/2,
    read/1,
    dirty_read/1,
    update/2,
    dirty_update/2,
    delete/1,
    dirty_delete/1,
    new/2
]).

create_table(Nodes) ->
    Opts = [
        {disc_copies, Nodes},
        {type, set},
        {attributes, columns()}
    ],
    try
        Atrs = mnesia:table_info(?MODULE, attributes),
        io:format("[~p] Table ~p Already exists with columns ~p.~n",
            [?MODULE, ?MODULE, Atrs])
    catch
        exit:{aborted, {no_exists, ?MODULE, attributes}} ->
            mnesia:info(),
            io:format("[~p] Going to create table with ~p opts~n",
                      [?MODULE, Opts]),
            % Interesting race condition, where this returns already created.
            % Most likely from the others nodes adding table copies on the running_db_nodes.
            case mnesia:create_table(?MODULE, Opts) of
                {aborted, {already_exists, ?MODULE}} ->
                    io:format("Table ~p was already created,"
                              " likely by another node ", [?MODULE]);
                {atomic, ok} ->
                    io:format("Table ~p created ", [?MODULE])
            end;
        C:E ->
            throw({?MODULE, create_table, C, E, erlang:get_stacktrace()})
    end.

columns() ->
    record_info(fields, ?MODULE).

%% CRUD

create(Key, Value) ->
    mnesia:transaction(fun() ->
        mnesia:write(new(Key, Value))
    end).

dirty_create(Key, Value) ->
    mnesia:dirty_write(new(Key, Value)).

read(Key) ->
    mnesia:transaction(fun() ->
        mnesia:read(?MODULE, Key)
    end).

dirty_read(Key) ->
    mnesia:dirty_read(?MODULE, Key).

update(Key, NewValue) ->
    create(Key, NewValue).

dirty_update(Key, NewValue) ->
    dirty_create(Key, NewValue).

delete(Key) ->
    mnesia:transaction(fun() ->
        delete({?MODULE, Key})
    end).

dirty_delete(Key) ->
    mnesia:dirty_delete(?MODULE, Key).

new(Key, Value) ->
    #?MODULE{
        key = Key,
        value = Value
    }.
