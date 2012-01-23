#!/bin/bash


if [ $system_name == 'Linux' ]; then
    export PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo " ($(git branch | grep '^*' |sed s/\*\ //))"; fi)\$ '
else
      if [[ -s /Volumes/Data/Users/colin/.rvm/scripts/rvm ]] ; then source /Volumes/Data/Users/colin/.rvm/scripts/rvm ; fi
  
      export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

    c_cyan=`tput setaf 6`
    c_red=`tput setaf 1`
	c_green=`tput setaf 2`
	c_sgr0=`tput sgr0`
	
    parse_git_branch ()
	{
	    if git rev-parse --git-dir >/dev/null 2>&1
	    then
	       gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
	    else    
	       return 0
	    fi      
	    echo -e $gitver
	 } 
	   
	 branch_color ()
	 {
	    if git rev-parse --git-dir >/dev/null 2>&1
	    then
	       color=""
	       if git diff --quiet 2>/dev/null >&2
	       then
	          color="${c_green}"
	       else    
	          color=${c_red}
	       fi      
	    else    
	       return 0
	    fi      
	    echo -ne $color
	 }       
	   
	 #PS1='[\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\]] \u@\[${c_red}\]\w\[${c_sgr0}\]: '

     export PS1='[\u@\h \w$(__git_ps1 " (\[$(branch_color)\]%s\[${c_sgr0}\])")]\$ '
fi
