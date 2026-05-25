#!/usr/bin/env bash
#
# IDEA: Adds an optional argument
# If it's a dir, search the dir
# else search the current dir for that file

PASSED=$1
PREVIEW_CMD="bat --color=always {1} --style=numbers"
FILE_NAME=""

if [ $# -eq 0 ]; then
  FILE_NAME=$(fd -H --type f --exclude "node_modules" --exclude ".git/*" --exclude ".jj/*" |
    fzf --preview "$PREVIEW_CMD" --preview-window=right,65% \
      --bind ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down)
else
  if [ -d "${PASSED}" ]; then
    # if the passed arg is a dir, searches within that dir and passes this into nvim
    FILE_NAME=$(fd -H --type f --exclude "node_modules" --exclude ".git/*" --exclude ".jj/*" --full-path "$PASSED" |
      fzf --preview "$PREVIEW_CMD" --preview-window=right,65% \
        --bind ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down)
  else
    # if not a dir uses the search term for the search
    FILE_NAME=$(fd -H --type f --exclude "node_modules" --exclude ".git/*" --exclude ".jj/*" |
      fzf --preview "$PREVIEW_CMD" --preview-window=right,65% \
        --bind ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down -q "$PASSED")
  fi
fi

if [[ -n $FILE_NAME ]]; then
  nvim "$FILE_NAME"
fi
