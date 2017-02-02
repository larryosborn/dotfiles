
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PATH=~/bin:/usr/local/sbin:$PATH
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\]\$(parse_git_branch)\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
export LC_ALL=en_US.UTF-8
export HISTCONTROL=ignoredups
export HISTIGNORE='ls:pwd:date:git'
export HISTFILESIZE=5000
export MEMCACHE_SERVERS=127.0.0.1:11211
