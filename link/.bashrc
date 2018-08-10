# Where the magic happens.
export DOTFILES=~/.dotfiles

# Add binaries into the path
PATH=$DOTFILES/bin:$PATH

# For Android Builds
export ANDROID_HOME=/Users/scottda/Library/Android/sdk
export ANDROID_SDK_HOME=/Users/scottda/Library/Android/sdk/platforms/android-23
export JAVA_HOME=`/usr/libexec/java_home`
export ANDROID_TOOLS=/Users/scottda/Library/Android/sdk/tools/bin
PATH=$PATH:$ANDROID_HOME:$ANDROID_SDK_HOME:$JAVA_HOME:$ANDROID_TOOLS

#for py2.7
#export PY27=/usr/bin/python2.7
#PATH=$PY27:$PATH

# Uncomment for anaconda3
#PATH=$PATH:/Users/scottda/anaconda3/bin
#also unlinked /Users/scottda/anaconda3/bin/python
#fix with 'ln -s

export PATH

# Source all files in "source"
function src() {
  local file
  if [[ "$1" ]]; then
    source "$DOTFILES/source/$1.sh"
  else
    for file in $DOTFILES/source/*; do
      source "$file"
    done
  fi
}

# Run dotfiles script, then source.
function dotfiles() {
  $DOTFILES/bin/dotfiles "$@" && src
}

src

### Added by IBM Cloud CLI
source /usr/local/Bluemix/bx/bash_autocomplete

# Git completion
if [ -f ~/.git-completion.bash ]; then
         . ~/.git-completion.bash
fi

alias 'pip'='pip3'

export NPM_PACKAGES="/Users/scottda/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export TF_CPP_MIN_LOG_LEVEL=2
