#!/bin/bash

# Function to get the latest tmux session based on time
get_latest_session() {
    tmux list-sessions -F "#{session_created}:#S" |
        sort -rn |
        head -n 1 |
        awk -F":" '{print $2}'
}


# Check if tmux is running any sessions
if tmux list-sessions >/dev/null 2>&1; then
    # Get the latest session
    latest_session=$(get_latest_session)

    if [ -n "$latest_session" ]; then
        echo "Attaching to the latest session: $latest_session"
        tmux attach-session -t "$latest_session"
    else
        echo "No sessions found, creating a new one..."
        tmux new-session -s "default" -n "zsh" zsh
    fi
else
    echo "No sessions found, creating a new one..."
    tmux new-session -s "default" -n "zsh" zsh
fi
