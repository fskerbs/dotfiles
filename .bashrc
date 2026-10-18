# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias diff='diff --color=auto'

bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'
bind '"\C-h": backward-kill-word'

export MANPAGER="less --use-color -DdG -Dug -DSYs"
export LS_COLORS="di=01;94"

# PS1_COLOR1='\[\e[32m\]'
# PS1_COLOR2='\[\e[92m\]'
# PS1_STOP='\[\e[0m\]'
# PS1="${PS1_COLOR1}[\u@\h ${PS1_COLOR2}\w${PS1_COLOR1}]\$ ${PS1_STOP}"

# PS1='\[\e[32m\][\u@\h \[\e[92m\]\w\[\e[32m\]]\$ \[\e[0m\]'

PS1='[\u@\h \w]\$ '
