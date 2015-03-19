#ZSH Customization Below

export EDITOR="vim"
bindkey -v 

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward  

#enable auto cdsetopt AUTO_CD
setopt AUTO_CD

#pick custom theme
ZSH_THEME=bunsen


