# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DEFAULT_USER="mdomke"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="wedisagree"
#ZSH_THEME="pygmalion"
#ZSH_THEME="terminalparty"
ZSH_THEME="agnoster"

# Example aliases
alias zshconfig="vim ~/.zshrc"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
git 
git-flow 
cloudapp
extract 
history-substring-search 
lein 
osx 
debian
brew 
vi-mode 
python 
pip 
autojump
vundle
virtualenvwrapper
encode64
)

source $ZSH/oh-my-zsh.sh

autoload -U zmv
unsetopt correct_all

# Configure the terminal appearance
export DISPLAY=:0.0
export EDITOR='vim'
export SVN_EDITOR=${EDITOR}
export CVSEDITOR=${EDITOR}

# Configure the application's search PATH
path=(
"/usr/local/bin"
"/usr/local/sbin"
"${HOME}/bin/eclipse"
${(@)path}
)

TETEX_HOME="/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/i386"
test -d ${TETEX_HOME} && path+=(${TETEX_HOME})

METASPLOIT_HOME="/usr/local/metasploit"
test -d ${METASPLOIT_HOME} && path+=(${METASPLOIT_HOME})

if [ $(command -v brew) ]; then
    RUBY_GEMS="$(brew --prefix ruby)/bin"
    path+=(${RUBY_GEMS})
fi

PYTHON_PACKAGES="/usr/local/share/python"
if [ -d ${PYTHON_PACKAGES} ]; then
    pythonpath=(${PYTHON_PACKAGES} ${PYTHONPATH})
    path+=(${PYTHON_PACKAGES})
fi

export PATH
export PYTHONPATH
export PKG_CONFIG_PATH

# Configure virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Configure the language sepcific character encoding
export LC_ALL=''
export LC_CTYPE='en_US.UTF-8'
export LANG='en_US.UTF-8'

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
alias gf='git flow'
alias gff='git flow feature'
alias gfr='git flow release'
alias gfh='git flow hotfix'

alias gitm='gitg 2&> /dev/null &'

alias bci='ssh user@backend-ci'
alias testctrl='ssh vmuser@10.106.58.199'
alias gfw='ssh support@10.0.2.10'
alias gswi0='ssh root@10.106.149.200'
alias gswi1='ssh root@10.106.149.201'
alias gswi2='ssh root@10.106.149.202'
alias gswi3='ssh root@10.106.149.203'
alias gswi4='ssh root@10.106.149.204'
alias fw='ssh support@10.106.149.1'
alias swi0='ssh root@10.0.2.11'
alias swi1='ssh root@10.0.2.12'
alias swi2='ssh root@10.0.2.13'
alias swi3='ssh root@10.0.2.14'
alias swi4='ssh root@10.0.2.15'
alias swi5='ssh root@10.0.2.16'
