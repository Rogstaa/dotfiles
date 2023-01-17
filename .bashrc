# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:/var/lib/flatpak/exports/bin"
g810-led -a 0088ce

sh ./Code/scripts/dwm_status.sh &
