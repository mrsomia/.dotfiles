#!/usr/bin/env bash

IS_GIT=$(git rev-parse --is-inside-work-tree 2> /dev/null)

if [ "$IS_GIT" == 'true' ]
then
  fd -H --type f --exclude "node_modules" --exclude ".git/*" | fzf | xargs nvim - 
else
  fd --type f | fzf
  exit
fi
