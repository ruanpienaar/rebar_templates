-module({{mod}}_SUITE).
-export([
    all/0,
    suite/0,
    groups/0,
    init_per_suite/1,
    end_per_suite/1,
    group/1,
    init_per_group/2,
    end_per_group/2,
    init_per_testcase/2,
    end_per_testcase/2
]).
% Tests
-export([
    my_test_case/0,
    my_test_case/1
]).
-include_lib("common_test/include/ct.hrl").

% Returns a list of all test cases and groups in the suite. (Mandatory)
all() ->
    [my_test_case].

% Information function used to return properties for the suite. (Optional)
suite() ->
    [{timetrap, {minutes, 10}} % wait for 10, better than the default 30min wait.
    ].
    
% For declaring test case groups. (Optional)
groups() ->
    [].

% Suite level configuration function, executed before the first test case. (Optional)
init_per_suite(Config) ->
    Config.

% Suite level configuration function, executed after the last test case. (Optional)
end_per_suite(_Config) ->
    ok.
    
% Information function used to return properties for a test case group. (Optional)
group(_GroupName) ->
    [].

% Configuration function for a group, executed before the first test case. (Optional)
init_per_group(_GroupName, Config) ->
    Config.

% Configuration function for a group, executed after the last test case. (Optional)
end_per_group(_GroupName, _Config) ->
    ok.
    
% Configuration function for a testcase, executed before each test case. (Optional)
init_per_testcase(_TestCase, Config) ->
    Config.

% Configuration function for a testcase, executed after each test case. (Optional)
end_per_testcase(_TestCase, _Config) ->
    ok.
    
% Information function that returns a list of test case properties. (Optional)
my_test_case() ->
    [].

% The test case function.
my_test_case(_Config) ->
    ok.
