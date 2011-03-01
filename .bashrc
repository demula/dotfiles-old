# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# --------------------------------------------------------------------- OPTIONS
shopt -s histappend

# --------------------------------------------------------------------- EXPORTS
export EDITOR="vim"
export TERM=gnome-terminal
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export IGNOREEOF=1
export PYTHONDONTWRITEBYTECODE=1
export LESS=FRSX

# ---------------------------------------------------------------- PATH INCLUDE
export PATH=/usr/local/bin:$PATH

# --------------------------------------------------------------------- ALIASES
alias python='python2'
alias dev_appserver='python2 /home/demula/Apps/google_appengine/dev_appserver.py'
alias appcfg='python2 /home/demula/Apps/google_appengine/appcfg.py'
alias ls='ls --color=auto'
alias rvim="gvim --remote-silent"
alias ..='cd ..'

# ----------------------------------------------------------------- COLOR THEME
# colors
MITSUHIKOS_DEFAULT_COLOR="[00m"
MITSUHIKOS_GRAY_COLOR="[37m"
MITSUHIKOS_PINK_COLOR="[35m"
MITSUHIKOS_GREEN_COLOR="[32m"
MITSUHIKOS_ORANGE_COLOR="[33m"
MITSUHIKOS_RED_COLOR="[31m"
# variables
if [ `id -u` == '0' ]; then
  MITSUHIKOS_USER_COLOR=$MITSUHIKOS_RED_COLOR
else
  MITSUHIKOS_USER_COLOR=$MITSUHIKOS_PINK_COLOR
fi

# ---------------------------------------------------------------- VCPROMPT CONF
# vcprompt is used to add git/hg functionality to the prompt
MITSUHIKOS_VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

mitsuhikos_vcprompt() {
  $MITSUHIKOS_VCPROMPT_EXECUTABLE -f $' on \033[34m%n\033[00m:\033[00m%[unknown]b\033[32m%m%u'
}

# ------------------------------------------------------------------- FUNCTIONS
mitsuhikos_lastcommandfailed() {
  code=$?
  if [ $code != 0 ]; then
    echo -n $'\033[37m exited \033[31m'
    echo -n $code
    echo -n $'\033[37m'
  fi
}

mitsuhikos_backgroundjobs() {
  jobs|python -c 'if 1:
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


# --------------------------------------------------------------- FINAL DISPLAY
export MITSUHIKOS_BASEPROMPT='\n\e${MITSUHIKOS_USER_COLOR}\u \
\e${MITSUHIKOS_GRAY_COLOR}at \e${MITSUHIKOS_ORANGE_COLOR}\h \
\e${MITSUHIKOS_GRAY_COLOR}in \e${MITSUHIKOS_GREEN_COLOR}\w\
`mitsuhikos_lastcommandfailed`\
\e${MITSUHIKOS_GRAY_COLOR}$(mitsuhikos_vcprompt)\
`mitsuhikos_backgroundjobs`\
\e${MITSUHIKOS_DEFAULT_COLOR}'
export PS1="${MITSUHIKOS_BASEPROMPT}
$ "

