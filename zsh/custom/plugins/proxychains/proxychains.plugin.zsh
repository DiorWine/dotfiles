
proxy-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == proxychains4\ * ]]; then
        LBUFFER="${LBUFFER#proxychains4 }"
    else
        LBUFFER="proxychains4 $LBUFFER"
    fi
}
zle -N proxy-command-line
# Defined shortcut keys: [Esc] [Esc]
bindkey -M emacs '``' proxy-command-line
bindkey -M vicmd '``' proxy-command-line
bindkey -M viins '``' proxy-command-line
