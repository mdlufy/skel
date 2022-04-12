parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


source ~/.alias



#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="[\u@\h \W]\$ "

eval "$(init bash)"



#My custom alias
#alias ll="ls -l"
#alias la="ls -la"




