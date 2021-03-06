# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rtb/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

unalias gf

# by default: export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
# we take out the slash, period, angle brackets, dash here.
export WORDCHARS='*?_[]~=&;!#$%^(){}'
#export TERM='rxvt-unicode-256color'
#export TERM='rxvt'
# better order with ls
export LC_COLLATE=C

# funktioniert nicht?!
cdUndoKey() {
  popd      > /dev/null
  zle       reset-prompt
  echo
  ls
  echo
}

cdParentKey() {
  pushd .. > /dev/null
  zle      reset-prompt
  echo
  ls
  echo
}

zle -N                 cdParentKey
zle -N                 cdUndoKey
bindkey '^[[1;3A'      cdParentKey
bindkey '^[[1;3D'      cdUndoKey


[[ -e ~/.bashrc ]] && emulate sh -c 'source ~/.bashrc'

fortune | cowsay -f $(ls /usr/share/cows/ | shuf -n1)
