export EDITOR=vim
export ANT_HOME=/opt/ant
export ROO=/opt/roo
export MYSQL_HOME=/usr/local/mysql
export ATLAS_SDK=/opt/atlas-sdk
export M2_HOME=/opt/maven
export M3_HOME=/opt/m3
export MAVEN_COLOR=true
export MAVEN_OPTS=-Xmx2G
export PATH=$M2_HOME/bin::$M3_HOME/bin:$PATH:$ATLAS_SDK/bin:$MYSQL_HOME/bin:$ROO/bin:$ANT_HOME/bin

CLICOLOR=1
LSCOLORS=DxGxcxdxCxcgcdabagacad

export CLICOLOR LSCOLORS

source ~/.git-completion.sh
export PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo " ($(git branch | grep '^*' |sed s/\*\ //))"; fi)\$ '
if [[ -s /Volumes/Data/Users/colin/.rvm/scripts/rvm ]] ; then source /Volumes/Data/Users/colin/.rvm/scripts/rvm ; fi

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
