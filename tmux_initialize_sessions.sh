#!/usr/bin/zsh

# music
tmux has-session -t music 2>/dev/null

if [ $? != 0 ]; then
   tmux new-session -d -s music 'alsamixer'
   tmux split-window -t music:0 -v
   tmux send-keys -t music:0 'cmus' C-m
fi

# mail
tmux has-session -t music 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s mail 'offlineimap'
fi

# pass
tmux has-session -t pass 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s pass
fi

# default
tmux has-session -t default 2>/dev/null
if [ $? != 0 ]; then
    tmux new-session -d -s default
fi
