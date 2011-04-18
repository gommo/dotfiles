
export ROO=/opt/roo
export MYSQL_HOME=/usr/local/mysql
export ATLAS_SDK=/opt/atlas-sdk
export M2_HOME=$ATLAS_SDK/apache-maven

export PATH=$M2_HOME/bin:$PATH:$ATLAS_SDK/bin:$MYSQL_HOME/bin:$ROO/bin

CLICOLOR=1
LSCOLORS=DxGxcxdxCxcgcdabagacad
export CLICOLOR LSCOLORS

source ~/.git-completion.sh
export PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo " ($(git branch | grep '^*' |sed s/\*\ //))"; fi)\$ '

