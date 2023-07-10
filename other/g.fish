#!/usr/bin/env fish
# For install - ln -s (pwd)/g.fish /usr/local/bin/g

set argument $argv[1]
set url https://github.com

if string match -rq -- "\/" $argument
    open $url/$argument
else
    open $url/flocktory/$argument
end
