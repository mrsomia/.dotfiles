# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# antidote
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

# History file for zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HISTDUP=erase
setopt appendhistory
# Share history in every terminal session
setopt sharehistory

setopt hist_ignore_space # allows commands prefixed with a space to be ignored
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
# zsh only shows the last 16 history commands by default
# https://jdhao.github.io/2021/03/24/zsh_history_setup/
alias history="fc -l 1"
alias h="fc -l 1"

# bindkey -e emacs mode
bindkey -v # vim mode
bindkey -M viins "\e[A" history-search-backward
bindkey -M viins "\e[B" history-search-forward

# emacs terminal keybinds I'm too used too
# More zsh widgets can be found here: https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets
bindkey -M viins '^P' history-beginning-search-backward
bindkey -M viins '^N' history-beginning-search-forward
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M viins 'ESC-F' forward-word
bindkey -M viins 'ESC-B' backward-word
bindkey '^O' accept-line

# Expand search
bindkey ' ' magic-space

# Open buffer line in editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

# aliases
alias zshconfig="vim ~/.zshrc"
alias ..="cd .."
alias ...="cd ../.."

# My aliases
alias c="clear"
alias ll="ls -lahL"
alias l="eza -lah --git"
alias lt="eza -lah --git --tree --git-ignore -I .git --level 2"
alias ltt="eza -lah --git --tree --git-ignore -I .git --level 3"
alias lttt="eza -lah --git --tree --git-ignore -I .git"
alias treegi="tree --gitignore"
alias con="tail -40 -f /var/log/system.log"
alias sublime="open -a 'Sublime Text'"
alias subl="open -a 'Sublime Text'"
alias lg="lazygit"

alias k="kubectl"

alias sz="source ~/.zshrc"
alias prd="pnpm run dev"
alias nrd="pnpm run dev"
alias nv="nvim"
alias vim="nvim"
alias ff="$HOME/.dotfiles/scripts/ff.sh"
alias fs="$HOME/.dotfiles/scripts/ff.sh"
alias tlock="osascript -e 'tell app \"loginwindow\" to «event aevtsclk»'"

# Git
alias gs="git status"
alias gl="git log --graph --all --decorate --oneline"
alias gaa="git add -A"
alias ga="git add"
alias gc="git commit"
alias gco="git checkout"
alias gcam="git commit --all --message"
alias gla="git pull --all"
alias gp="git push"

# Git but stolen from zsh plugin @link https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
alias g="git"
alias gss="git status --short -b"

alias gd="git diff"

alias gswm="git switch main"
alias gswe="git switch edge"
alias gswd="git switch develop"
alias gsw="git switch "
alias gswc="git switch -c"

alias gb="git branch"
alias gba="git branch --all"
alias gbd="git branch --delete"
alias gbD="git branch --delete --force"

alias gm="git merge"

alias ggl="git pull"

alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbi="git rebase --interactive"

alias gll="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"
alias glog='git log --graph --topo-order --pretty='\''%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N'\'' --abbrev-commit'

alias gwipe="git reset --hard && git clean --force -df"
alias grhh="git reset --hard"

alias gpr="git pull --rebase"
alias gpf="git push --force-with-lease --force-if-includes"

# Rust based rewrites
alias cat="bat"

# tldr
alias tldrf='tldr --list | fzf --preview "tldr {1}" --preview-window=right,65% | xargs tldr'

# match lowercase/uppercase dirs
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# show dirs/files with coloured output
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# use fzf-tab for completion
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# required for coloured completeion output
alias ls='ls --color'

# run z
# . /opt/homebrew/etc/profile.d/z.sh
eval "$(zoxide init zsh)"

# uv completions
eval "$(uv generate-shell-completion zsh)"

# fzf completions
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git --exclude node_modules'

# For NVM
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# Added after internal homebrew fork installed
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
[[ -d /opt/homebrew/share/zsh/site-functions ]] && fpath+=(/opt/homebrew/share/zsh/site-functions)

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Deno
export DENO_INSTALL="/Users/sach/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Lunarvim
export PATH="$HOME/.local/bin:$PATH"

# Gotta look cool
export EDITOR="nvim"

# Start rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# bun completions
[ -s "/Users/sach/.bun/_bun" ] && source "/Users/sach/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go
export PATH=$PATH:$HOME/go/bin

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# Activate mise-en-place see: https://mise.jdx.dev/installing-mise.html
eval "$(mise activate zsh)"

# To merge hooks, use add-zsh-hook
autoload -Uz add-zsh-hook


# Then Define separate functions
function auto_venv() {
  # If already in a virtualenv, do nothing
  if [[ -n "$VIRTUAL_ENV" && ! -f "$VIRTUAL_ENV/bin/activate" ]]; then
    deactivate
  fi

  [[ -n "$VIRTUAL_ENV" ]] && return

  local dir="$PWD"
  while [[ "$dir" != "/" ]]; do
    if [[ -f "$dir/.venv/bin/activate" ]]; then
      source "$dir/.venv/bin/activate"
      return
    fi
    dir="${dir:h}"
  done
}

function auto_nvm() {
  [[ -f .nvmrc ]] && nvm use
}

# Register them all
add-zsh-hook chpwd auto_venv
add-zsh-hook chpwd auto_nvm

# Clear screen but keep current command buffer
function clear-screen-and-scrollback() {
  echoti civis >"$TTY"
  printf '%b' '\e[H\e[2J\e[3J' >"$TTY"
  echoti cnorm >"$TTY"
  zle redisplay
}
zle -N clear-screen-and-scrollback
bindkey '^Xl' clear-screen-and-scrollback

# Copy current command buffer to clipboard (macOS)
function copy-buffer-to-clipboard() {
  echo -n "$BUFFER" | pbcopy
  zle -M "Copied to clipboard"
}
zle -N copy-buffer-to-clipboard
bindkey '^Xc' copy-buffer-to-clipboard

# better than mv
autoload zmv

[[ ! -f ~/.work.zsh ]] || source ~/.work.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
