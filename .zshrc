export LANG=ja_JP.UTF-8

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
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt:/usr/X11/bin:$HOME/.cabal/bin
export MANPATH=/usr/local/man:$MANPATH
export DISPLAY=0:0

#Alias Settings
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

