DEFAULT_USER="wine"
ZSH_THEME="powerlevel10k/powerlevel10k"
dotfile="/home/wine/Documents/dotfiles/"
export EDITOR=nvim

alias ra="ranger"
# alias vi="vim -X"
alias vi="nvim"
# alias cls="print '\033c'"
alias cls="clear"
alias background="feh --bg-fill"

#ros config
source /opt/ros/melodic/setup.zsh

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
