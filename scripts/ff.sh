#!/usr/bin/env bash
#
# IDEA: Adds an optional argument
# If it's a dir, search the dir
# else search the current dir for that file

IS_GIT=$(git rev-parse --is-inside-work-tree 2> /dev/null)
PASSED=$1

# Checks if not args passed
if [ $# -eq 0 ]
then
    # searches and opens in lvim if this was run in a git dir
    if [ "$IS_GIT" == 'true' ]
    then
        fd -H --type f --exclude "node_modules" --exclude ".git/*" | fzf | xargs lvim - 
    else
        fd --type f | fzf
        exit
    fi
else
    if [ -d "${PASSED}" ] ; then
        # if the passed arg is a dir, searches within that dir and passes this into lvim
        fd -H --type f --exclude "node_modules" --exclude ".git/*" --full-path "$PASSED" | fzf | xargs lvim - 
    else
        # if not a dir uses the search term for the search
        fd -H --type f --exclude "node_modules" --exclude ".git/*" | fzf -q "$PASSED"| xargs lvim - 
    fi
fi
