# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[$(tput setaf 231)\]\u\[$(tput setaf 6)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 33)\]\w \[$(tput sgr0)\]$ '
export PATH="$PATH:/var/lib/flatpak/exports/bin"
g810-led -a 0088ce

sh ./Code/scripts/dwm_status.sh &
