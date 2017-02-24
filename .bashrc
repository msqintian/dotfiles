
# Source git completion
if [ -f ~/git-completion.bash ]; then
	source ~/git-completion.bash
fi

# config and source git prompt
source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

GIT_PS1_SHOWDIRTYSTATE=true
#PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
