-module({{appid}}_tests).
-include_lib("eunit/include/eunit.hrl").

{{appid}}_test_() ->
    {setup,
     % Setup Fixture
     fun() -> 
         xxx
     end,
     % Cleanup Fixture
     fun(xxx) ->
         ok
     end,
     % List of tests
     [
       % Example test
       fun func1/0
     ]
    }.

func1() ->
    ?assert(
        is_list({{appid}}:module_info())
    ).
