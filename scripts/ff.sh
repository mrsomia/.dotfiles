#!/usr/bin/env bash
#
# Fuzzy file finder. Open pick in nvim.
# No args: search cwd. Arg is dir: scope to it. Else: use as fzf query.

set -euo pipefail

FD=(fd -H --type f --exclude node_modules --exclude .git --exclude .jj)
FZF=(fzf
  --preview 'bat --color=always {} --style=numbers'
  --preview-window=right,65%
  --bind ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down)

arg=${1-}
if [[ -d $arg ]]; then
  file=$("${FD[@]}" . "$arg" | "${FZF[@]}")
else
  fzf_args=("${FZF[@]}")
  [[ -n $arg ]] && fzf_args+=(-q "$arg")
  file=$("${FD[@]}" | "${fzf_args[@]}")
fi

[[ -n $file ]] && exec nvim "$file"
