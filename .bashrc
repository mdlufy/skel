parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


source ~/.alias

#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="[\u@\h \W]\$ "
PATH=$PATH:/usr/lib/postgresql/14/bin
export PATH
eval "$(init bash)"



# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/home/mdlufy/.cache/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;