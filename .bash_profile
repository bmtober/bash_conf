# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
PATH=$HOME/.local/bin:$PATH
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=2000
export HISTIGNORE=cd:df:ls:popd:ll:hashpass:history:clear:date:top

export PATH

SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
  eval `$SSHAGENT $SSHAGENTARGS`
  trap "kill $SSH_AGENT_PID" 0
fi
