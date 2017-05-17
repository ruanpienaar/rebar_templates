#!/bin/sh
cd `dirname $0`
exec erl -sname start-dev -config $PWD/sys.config -pa $PWD/_build/default/lib/*/ebin $PWD/test -boot start_sasl -setcookie start-dev