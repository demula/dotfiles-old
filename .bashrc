#!/bin/bash

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_THEME='demula'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@github.com'

# Set my editor and git editor
export EDITOR="vim"
export GIT_EDITOR='vim'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to the path of your local jekyll root to use the jekyll aliases

export JEKYLL_LOCAL_ROOT="$HOME/Sites/jekyllsite"

# And change this to the remote server and root

export JEKYLL_REMOTE_ROOT="user@server:/path/to/jekyll/root"

# And, for the last of the jekyll variables, this is the formatting you use, eg: markdown,
# textile, etc. Basically whatever you use as the extension for posts, without the preceding dot

export JEKYLL_FORMATTING="markdown"

# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set store directory for handmade commandline history tool 
export hchtstoredir="$HOME/.hcht"

# Set vcprompt executable path for scm advance info in prompt
# https://github.com/xvzf/vcprompt
export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# --------------------------------------------------------------------- EXPORTS
export CLICOLOR=1
export IGNOREEOF=1
export PYTHONDONTWRITEBYTECODE=1

# --------------------------------------------------------------------- ALIASES
# Google Appengine
alias dev_appserver='python2 /home/demula/Apps/google_appengine/dev_appserver.py'
alias appcfg='python2 /home/demula/Apps/google_appengine/appcfg.py'

alias rvim='gvim --remote-silent'
alias ..='cd ..'
alias cls='clear'
alias git='~/.hub/bin/hub' # https://github.com/defunkt/hub

# ------------------------------------------------------------------- FUNCTIONS
mitsuhikos_backgroundjobs() {
  jobs|python2 -c 'if 1:
    import sys
    items = ["\033[36m%s\033[37m" % x.split()[2]
             for x in sys.stdin.read().splitlines()]
    if items:
      if len(items) > 2:
        string = "%s, and %s" % (", ".join(items[:-1]), items[-1])
      else:
        string = ", ".join(items)
      print "\033[37m running %s" % string
  '
}

# virtualenvwrapper and pip
#if [ `id -u` != '0' ]; then
  #export VIRTUALENV_USE_DISTRIBUTE=1
  #export WORKON_HOME=$HOME/.virtualenvs
  #source /usr/local/bin/virtualenvwrapper.sh
  ##export PIP_VIRTUALENV_BASE=$WORKON_HOME
  ##export PIP_RESPECT_VIRTUALENV=true
#fi

# easy unpacking
unp() {
  if [ x == x$1 ]; then
    echo 'usage: unp [filename]'
  elif [ -f "$1" ]; then
    case "$1" in
      *.tar.gz)          tar xvzf "$1" ;;
      *.tgz)             tar xvzf "$1" ;;
      *.tar.bz2)         tar xvjf "$1" ;;
      *.gz)              gunzip "$1" ;;
      *.bz2)             bunzip2 "$1" ;;
      *.tar)             tar zvf "$1" ;;
      *.zip|*.egg|*.jar) unzip "$1" ;;
      *) echo "'$1' is an unknown archive" ;;
    esac
  else
    echo "'$1' is not a valid archive"
  fi
}

# Load Bash It
source $BASH/bash_it.sh
