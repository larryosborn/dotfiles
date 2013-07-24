export PATH=/opt/python/bin:/home/larry/bin:$PATH
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\]\$(parse_git_branch)\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
export LC_ALL=en_US.UTF-8

. ~/bin/django_bash_completion
