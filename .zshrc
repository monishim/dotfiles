export LANG=ja_JP.UTF-8

# rbenv settings
export RBENV_ROOT=/usr/local/opt/rbenv
eval "$(rbenv init - zsh)"

#User Settings
autoload -U compinit
compinit
alias ls='ls -alG'
alias df='df -h'
alias vi='vim'
setopt correct

#Prompt Settings
PROMPT="[%n@%m]%%"
RPROMPT="[%~]"
SPROMPT="CORRECT: %R -> %r ? "
setopt list_packed

#Term Settings
case "${TERM}" in
    kterm*|xterm)
        precmd() {
            echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
            }
    ;;
esac

#History Settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history
setopt auto_pushd

#For Macports
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export MANPATH=/usr/local/man:$MANPATH
export DISPLAY=0:0

