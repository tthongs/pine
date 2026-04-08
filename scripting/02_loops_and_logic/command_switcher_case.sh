#!/usr/bin/bash
# Description: Uses a case statement to switch between different system commands.
# Author: Gemini CLI

cmd="$1"

case $cmd in 
    ls)
        echo "Action: Running 'ls' command"
        ls
        ;;
    env)
        echo "Action: Printing environment variables"
        printenv
        ;;
    whoami|w)
        echo "Action: Identifying current user"
        whoami
        ;;
    *)
        echo "Usage: $0 {ls|env|whoami|w}"
        echo "No valid command provided."
        ;;
esac
