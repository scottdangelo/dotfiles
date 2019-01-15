if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Removed with the addition of pyenv
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#export PATH

# from https://github.com/pyenv/pyenv/wiki
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
# old JAVA_HOME. Removed for v 1.8
# export JAVA_HOME=$(/usr/libexec/java_home)

# for pyspark issue with AIOS app
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
