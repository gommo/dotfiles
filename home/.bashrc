system_name=`uname -s`

. ~/.aliases/commands
. ~/.aliases/git

if [ $system_name == 'Linux' ]; then
    [ -f /etc/bash_completion ] && . /etc/bash_completion		

    . ~/.exports/linux
else
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi
    . ~/.exports/osx
fi

CLICOLOR=1
LSCOLORS=DxGxcxdxCxcgcdabagacad

export CLICOLOR LSCOLORS

source ~/.git-completion.sh
export PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo " ($(git branch | grep '^*' |sed s/\*\ //))"; fi)\$ '
if [[ -s /Volumes/Data/Users/colin/.rvm/scripts/rvm ]] ; then source /Volumes/Data/Users/colin/.rvm/scripts/rvm ; fi

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
