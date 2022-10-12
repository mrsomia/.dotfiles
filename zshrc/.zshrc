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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git nvm)

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
alias con="tail -40 -f /var/log/system.log"
alias vs="open -a 'Visual Studio Code'"
# alias code="open -a 'Visual Studio Code'"
alias sublime="open -a 'Sublime Text'"
alias subl="open -a 'Sublime Text'"
# alias idea="open -a 'IntelliJ IDEA CE'"

alias sz="source ~/.zshrc"
alias prd="pnpm run dev"
alias nrd="pnpm run dev"
alias nv="nvim"
alias vi="nvim"
alias ff="fzf | xargs nvim -"

# Git
alias gs="git status"
alias gl="git log --graph --all --decorate --oneline"
alias gaa="git add -A"
alias gc="git commit"

# Rust based rewrites
alias cat="bat"

# Sets PIPENV to keep venv folders locally
PIPENV_VENV_IN_PROJECT=1



# run z
. /usr/local/etc/profile.d/z.sh


[[ :$PATH: == *:$HOME/bin:* ]] || PATH=$HOME/bin:$PATH
. $HOME/.isd-cli-autocomplete-zsh
# If AppleConnect does not work, you can get CAPRI_APP_ID and CAPRI_APP_KEY from  https://capri-developer.apple.com
# export CAPRI_APP_ID=XXX
# export CAPRI_APP_KEY=XXX
# If AppleConnect does not work, you can get ADB_APP_ID and ADB_APP_KEY from  https://adb-developer.apple.com 
# export ADB_APP_ID=XXX
# export ADB_APP_KEY=XXX
# You can get ADB_UAT_APP_ID and ADB_UAT_APP_KEY from https://adb-uat-developer.corp.apple.com
# export ADB_UAT_APP_ID=XXX
# export ADB_UAT_APP_KEY=XXX
# If AppleConnect does not work, you can get METRON_APP_ID and METRON_APP_KEY from  metron@group.apple.com
# export METRON_APP_ID=XXX
# export METRON_APP_KEY=XXX
# If AppleConnect does not work, you can get CONNECT_APP_ID and CONNECT_APP_KEY from  circuitdb-dev@group.apple.com
# export CONNECT_APP_ID=XXX
# export CONNECT_APP_KEY=XXX
# If AppleConnect does not work, you can get GENERIC_APP_ID and GENERIC_APP_KEY from  the api provider
# export GENERIC_APP_ID=XXX
# export GENERIC_APP_KEY=XXX
# export GENERIC_BASE_URL=https://examplep-api.corp.apple.com
# If AppleConnect does not work, you can get GROOT_GNSD_APP_ID and GROOT_GNSD_APP_KEY from  https://bits.corp.apple.com/support/?appName=groot
# export GROOT_GNSD_APP_ID=XXX
# export GROOT_GNSD_APP_KEY=XXX

# For NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export EDITOR="nvim"
export FZF_DEFAULT_COMMAND='fd -H --type f --exclude "node_modules" --exclude ".git/*"'
