# If you come from bash you might have to change your $PATH.
export PATH=$HOME/Library/Python/3.9/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
zstyle ':omz:update' mode auto

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# My aliases
alias ll="ls -lahL"
alias l="exa -al --git"
alias lt="exa -al --git --tree --git-ignore -I .git --level 2"
alias ltt="exa -al --git --tree --git-ignore -I .git"
alias treegi="tree --gitignore"
alias con="tail -40 -f /var/log/system.log"
alias vs="open -a 'Visual Studio Code'"
# alias code="open -a 'Visual Studio Code'"
alias sublime="open -a 'Sublime Text'"
alias subl="open -a 'Sublime Text'"
# alias idea="open -a 'IntelliJ IDEA CE'"
alias c="code"
alias lg="lazygit"

alias sz="source ~/.zshrc"
alias prd="pnpm run dev"
alias nrd="pnpm run dev"
alias nv="nvim"
alias vim="lvim"
alias ff="$HOME/.dotfiles/scripts/ff.sh"
alias fs="$HOME/.dotfiles/scripts/ff.sh"

# Git
alias gs="git status"
alias gl="git log --graph --all --decorate --oneline"
alias gaa="git add -A"
alias gc="git commit"
alias gla="git pull --all"

# Rust based rewrites
alias cat="bat"

# tldr
alias tldrf='tldr --list | fzf --preview "tldr {1}" --preview-window=right,65% | xargs tldr'

# run z
# . /opt/homebrew/etc/profile.d/z.sh
eval "$(zoxide init zsh)"

# For NVM
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# Added after internal homebrew fork installed
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/brew/opt/nvm/nvm.sh" ] && \. "/opt/brew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/brew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/brew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Deno
export DENO_INSTALL="/Users/sach/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Lunarvim
export PATH="$HOME/.local/bin:$PATH"

# Gotta look cool
export EDITOR="lvim"

# Start rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# bun completions
[ -s "/Users/sach/.bun/_bun" ] && source "/Users/sach/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
