# Use powerline
USE_POWERLINE="true"

eval "$(starship init zsh)"

neofetch --source --ascii /home/v01d/Images/dragon-ascii-art --ascii_colors '7' '1' '2' '4'

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export LS_COLORS="$(vivid generate solarized-dark)"
_ls_colors=":ow=01;33" 
zstyle ':completion:*:default' list-colors "${(s.:.)_ls_colors}"
# eval `ssh-agent`

clone() {
    dir=pwd
    $(exec alacritty -e zsh && cd "$dir") & disown
}
