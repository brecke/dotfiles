# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/miguel/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
plugins=(
  pyenv git docker cp docker-compose node npm z colorize copydir copyfile history-substring-search tmux command-time fast-syntax-highlighting 
)
# vi-mode
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
echo ""
echo " 📋  Setting up aliases.."
alias "vim"="nvim"
alias help='tldr'
alias "diff"="diff-so-fancy"
alias "py3"="python3"
alias "py"="python"
# alias "pip2"="pip"
alias "dockers"="docker ps"
# alias "ll"="ls -la"
# alias ls='lsd'
# alias l='ls -l'
# alias la='ls -a'
# alias lla='ls -la'
# alias lt='ls --tree'
alias "cat"="bat"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias "dc"="docker-compose"
alias "dm"="docker-machine"
alias "ls"="exa"
alias "node"="env NODE_NO_READLINE=1 rlwrap -ppurple -S \"-> \" node"
alias lzd='lazydocker'
alias lzg='lazygit'
alias ping='prettyping --nolegend'
alias removealldockers='docker system prune -a'
unalias "gm"

# rbenv
echo " 💍  Loading rbenv.."
eval "$(rbenv init - zsh)"

# pyenv
echo " 🐍  Loading pyenv.."
# Load pyenv into the shell by adding
# the following to ~/.zshrc:

eval "$(pyenv init -)"

# nodenv
echo " 📦  Loading nodenv.."
eval "$(nodenv init -)"

echo " 🍿  Loading zsh goodies.."

# fuzzy search zsh
fpath=(/usr/local/share/zsh-completions $fpath)

# To activate the autosuggestions, add the following at the end of your .zshrc:
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Make sure zsh-git-prompt is loaded from your .zshrc:
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"

# To activate the history search, add the following at the end of your .zshrc:
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# To run zsh-navigation-tools, add the following at the end of your .zshrc:
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh

# To activate the syntax highlighting, add the following at the end of your .zshrc:
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Key maps
for keymap in 'emacs' 'viins' 'vicmd'; do
  # [Ctrl-RightArrow] - move forward one word
  bindkey -M $keymap '^[[1;5C' forward-word
  # [Ctrl-LeftArrow] - move backward one word
  bindkey -M $keymap '^[[1;5D' backward-word
  unset keymap
done

# Skip forward/back a word with opt-arrow
# bindkey '[C' forward-word
# bindkey '[D' backward-word

# Skip to start/end of line with cmd-arrow
# bindkey '[E' beginning-of-line
# bindkey '[F' end-of-line

# Delete word with opt-backspace/opt-delete
# bindkey '[G' backward-kill-word
# bindkey '[H' kill-word

# Delete line with cmd-backspace
# bindkey '[I' kill-whole-line

# bindkey '\e[A' history-beginning-search-backward
# bindkey '\e[B' history-beginning-search-forward


# Setting fd as the default source for fzf
# export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

echo " 🚀  Exporting variables.."

# OAE work
export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/usr/local/lib/pkgconfig
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120
export NVIM_TUI_ENABLE_TRUE_COLOR=1

#disable special characters when holding keys
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -float 10.0
defaults write NSGlobalDomain InitialKeyRepeat -float 10.0

# normal minimum is 2 (30 ms)
defaults write NSGlobalDomain KeyRepeat -float 1.0
defaults write -g KeyRepeat -float 1.0
############# Enable spees ######################

# Enable vi mode for zsh
# bindkey -v

export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/miguel/.local/bin:$PATH"

# Load starship
# eval "$(starship init zsh)"


echo " 🔥  ${RED}Shell ready.${NC}"
# stuff for kitty
# autoload -Uz compinit
# compinit
# Completion for kitty
# kitty + complete setup zsh | source /dev/stdin
#
# SPACESHIP_EXIT_CODE_SHOW="true"
