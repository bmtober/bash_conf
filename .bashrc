# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias pd='pushd ~/'
alias la='ls -lArt'
alias wl='wc -l'

alias pgrep='/usr/bin/pgrep -alf'
export SVN_EDITOR=/usr/bin/vim
export SVN=svn+ssh://btober@192.168.2.3/usr/local/var/svn/repos
export LC_ALL=C
export PAGER=less
# eval `ssh-agent -s`
# ssh-add
