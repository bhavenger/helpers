#!/usr/local/bin/fish
# For install - ln -s (pwd)/j.fish /usr/local/bin/j

set argument $argv[1]
set url $(cat ~/.config/helpers/url)

if string match -rq -- "^\d+" $argument
    open $url/floc-$argument
else
    open $url/$argument
end