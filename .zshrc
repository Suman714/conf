# Created by newuser for 5.8.1
alias ll="ls -Alh"
alias ls="lsd --group-dirs first"
alias tmux="tmux -u"
bindkey -v

autoload -Uz compinit && compinit

# USER PROMPT
  
# enable command-subsitution in PS1
setopt PROMPT_SUBST
# PLUGINS

source ~/zsh/git/git-prompt.sh

# git prompt options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=' '
GIT_PS1_HIDE_IF_PWD_IGNORED=true
GIT_PS1_COMPRESSSPARSESTATE=true
  
NL=$'\n'
  
PS1='$NL%B%F{cyan}%3~%f%b% %F{magenta}$(__git_ps1 "  %s")%f$NL%B%(?.%F{green}.%F{red})%(!.#.>)%f%b '

