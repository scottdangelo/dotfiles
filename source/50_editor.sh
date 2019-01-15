# Editing

if [[ ! "$SSH_TTY" ]] && is_osx; then
  export EDITOR='vim'
  export LESSEDIT='vim ?lm+%lm -- %f'
else
  export EDITOR='vim'
fi

export VISUAL="$EDITOR"
alias q="$EDITOR"
alias qv="q $DOTFILES/link/.{,g}vimrc +'cd $DOTFILES'"
alias qs="q $DOTFILES"

alias cookie='chrome://settings/siteData'
alias startsyn='synergys --config ~/tools/Synergy/synergy.conf'
alias gpo="git push origin"
alias tm="®"
alias sc="vi ~/.ssh/config"
alias sb='source ~/.bashrc && echo source bashrc'
alias c.="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ic="ibmcloud"
alias cg="cd /Users/scott/gitRepos/DevPattern/"
alias copyR="cp ~/gitRepos/Tools/IBMCodeContent/docs/patterns/templates/readme-template.md ."
alias copyW="cp ~/gitRepos/Tools/IBMCodeContent/docs/patterns/templates/draft-pattern-template.md ."


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000
HISTFILESIZE=2000000

export EDITOR=vim
alias vi=vim

source /usr/local/ibmcloud/autocomplete/bash_autocomplete
source ~/.git-completion.bash
