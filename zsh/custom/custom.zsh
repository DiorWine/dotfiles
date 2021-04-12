DEFAULT_USER="wine"
ZSH_THEME="powerlevel10k/powerlevel10k"
dotfile="/home/wine/Documents/dotfiles/"
export EDITOR=nvim

alias ra="ranger"
# alias vi="vim -X"
alias vi="nvim"
# alias cls="print '\033c'"
alias cls="clear"
alias background="feh --recursive --randomize --bg-fill"

#ros config
# source ~/WorkSpace/RL_agent/devel/setup.zsh
# export ROS_MASTER_URI=http://B360M:11311/
# export ROS_HOSTNAME=XXPro
# export ROS_IP=192.168.3.2
# export ROS_IP=10.27.38.58

# P10K

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# instant prompt mode
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# function zle-keymap-select {
# 	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
# 		echo -ne '\e[1 q'
# 	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
# 		echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select

# Use beam shape cursor on startup.
# echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
# preexec() {
# 	echo -ne '\e[5 q'
# }

# _fix_cursor() {
# 	echo -ne '\e[5 q'
# }
# precmd_functions+=(_fix_cursor)
