# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"
#ZSH_THEME="pygmalion"
#ZSH_THEME="terminalparty"

# Example aliases
alias zshconfig="vim ~/.zshrc"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git 
git-flow 
extract 
history-substring-search 
lein 
osx 
brew 
vi-mode 
python 
pip 
autojump)

source $ZSH/oh-my-zsh.sh

autoload -U zmv

# Configure the terminal appearance
export DISPLAY=:0.0
export EDITOR='vim'
export SVN_EDITOR=${EDITOR}
export CVSEDITOR=${EDITOR}

PYTHONPATH="${PYTHON_PACKAGES}:${PYTHONPATH}"
PYTHON_PACKAGES="/usr/local/share/python"

# Configure the application's search PATH
path=(
"/usr/local/bin"
"/usr/local/sbin"
${(@)path}
${PYTHON_PACKAGES}
${RUBY_GEMS}
"/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/i386"
"/usr/local/metasploit")

RUBY_GEMS="$(brew --prefix ruby)/bin"

export PATH
export PYTHONPATH
export PKG_CONFIG_PATH

# Configure the language sepcific character encoding
export LC_ALL=''
export LC_CTYPE='en_US.UTF-8'
export LANG='en_US.UTF-8'

alias -s py=${EDITOR}
alias -s clj=${EDITOR}
alias -s c=${EDITOR}
alias -s cpp=${EDITOR}
alias -s tex=${EDITOR}
alias -s tgz=tar xzvf
alias -s tbz=tar xjvf

alias -g L='|less'
alias -g G='|grep'

alias mx='chmod u+x'
alias la='ls -a'
alias psa='ps aux'
alias pg='psa G -v grep G'
alias isodate='date "+%Y-%m-%d"'
alias mdu='du -kh'
alias mdf='df -kh'
