#!/usr/local/bin/fish

# For install - ln -s (pwd)/kf.fish /usr/local/bin/kf
k get po --all-namespaces | grep $argv | awk '{print $2}'