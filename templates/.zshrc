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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew vi-mode python pip autojump)

source $ZSH/oh-my-zsh.sh

# Configure the terminal appearance
export DISPLAY=:0.0
export EDITOR='vim'
export SVN_EDITOR=${EDITOR}
export CVSEDITOR=${EDITOR}


# Configure the application's search PATH
PATH="/usr/local/bin:/usr/local/sbin:${PATH}"
PATH="${PATH}:${PYTHON_PACKAGES}"
PATH="${PATH}:${RUBY_GEMS}"
PATH="${PATH}:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/i386"
PATH="${PATH}:/Developer/Tools"
PATH="${PATH}:/usr/local/metasploit"

PYTHONPATH="${PYTHON_PACKAGES}:${PYTHONPATH}"
PYTHON_PACKAGES="/usr/local/share/python"
RUBY_GEMS="$(brew --prefix ruby)/bin"

export PATH
export PYTHONPATH
export PKG_CONFIG_PATH

# Configure the language sepcific character encoding
export LC_ALL=''
export LC_CTYPE='en_US.UTF-8'
export LANG='en_US.UTF-8'
