# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Work Related Settings

. ~/.zshrc-work


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

####
## User configuration
#
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Java Dev Settings
export JAVA_HOME=/Users/duck/.jenv/versions/oracle64-1.8.0.51

# Go Dev settings
PATH=$PATH:$GOBIN

# Custom Scripts
PATH="$PATH:/Users/duck/dev/scripts"

# Git Semantic Commits
PATH=$PATH:$HOME/.git-semantic-commits:$PATH

# AWS Settings
alias "awscreds=vim ~/.aws/credentials"
alias "awsconf=vim ~/.aws/config"

# ZSH Settings
source /usr/local/bin/aws_zsh_completer.sh
source $ZSH/oh-my-zsh.sh

# General Settings
export LANG=en_US.UTF-8

export PATH
