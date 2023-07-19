#!/usr/bin/env fish
# For install - ln -s (pwd)/ks.fish /usr/local/bin/ks

set config_list (string split " " (k get configmap --all-namespaces | grep $argv[1] | awk '{print $1, $2}'))

if test $argv[2]
    k -n $secret_list[1] get secret $secret_list[2] -o yaml | grep $argv[2] | awk '{print $2}' | base64 -D
else
    k -n $config_list[1] get configmap $config_list[2] -o yaml
end