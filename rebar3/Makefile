.PHONY: compile get-deps clean

compile: rebar3 get-deps
	@./rebar3 compile

get-deps:
	@./rebar3 get-deps

clean:
	@./rebar3 clean

rebar3:
	@ls rebar3 || wget https://s3.amazonaws.com/rebar3/rebar3 && chmod +x rebar3
	