-module({{app_name}}_{{name}}_page).
%%-author('').

-include_lib("nitrogen_core/include/wf.hrl").
-compile(export_all).
%%%.
%%%'   NITROGEN CALLBACKS
main() -> #template { file="./templates/{{name}}.html" }.

%%%.
%%%'   TEMPLATE CALLBACKS
title() ->
  "{{description}}".

%%%.
%%%'   EVENT CALLBACKS
event(_) -> ok.

%%%.
%%% vim: set filetype=erlang tabstop=2 foldmarker=%%%',%%%. foldmethod=marker:
