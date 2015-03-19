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

#aliases customizations
source /Users/bpurgaso/.ansible/linkedin/ansible_rc

desktop_uri='bpurgaso-ld1.linkedin.biz'
alias ch="ssh $desktop_uri"
alias ll='ls -laG'
alias irc="ssh $desktop_uri screen -dR \$(screen -list | grep irc)"
