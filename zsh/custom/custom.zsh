DEFAULT_USER="wine"
ZSH_THEME="powerlevel10k/powerlevel10k"
dotfile="/home/wine/Documents/dotfiles/"

alias vi="vim -X"
alias cls="print '\033c'"
alias background="feh --bg-fill"

#ros config
source /opt/ros/melodic/setup.zsh

# P10K

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# instant prompt mode
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

