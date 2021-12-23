# --------------------------------------------------------
# PATH settings
# --------------------------------------------------------

# export PATH="$HOME/.nodebrew/current/bin:$PATH"
# above line might be unnecessary. reconsider the critical needs.

# source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# source ~/.zprezto/init.zsh

# check tmux sessions
if [ -z $TMUX ]; then
  # export PATH="${HOME}/local/bin:${PATH}"
  export PATH="$HOME/bin:$PATH"
fi

# export PATH="$HOME/bin:$PATH"
# anyenv path
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
eval "$(pyenv virtualenv-init -)"
export SDKROOT="$(xcrun --sdk macosx --show-sdk-path)" #bundle install issue solved.
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - --no-rehash)"
# eval "$(rbenv init - --no-rehash)"
# eval "$(pyenv init - )"
# eval "$(rbenv init - )"
# export PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"
# export NVM_DIR="$HOME/.nvm"
# . "/Users/kazoo/.nvm"
export PATH="$PATH:/Users/kazoo/.nodebrew/current/bin"
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NV_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export LANG="en_US.UTF-8"
export PATH="$HOME/.cargo/bin:$PATH"
fpath=(/usr/local/share/zsh-completions ${fpath})
export PGDATA="/usr/local/var/postgres"
# . /sw/bin/init.sh # "-bash: /sw/bin/init.sh: No such file or directory"
export PATH="$PATH:/usr/local/bin"
export PATH=$PATH:~/npm
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/opt/llvm/bin:$PATH"
# export JAVA_HOME=`/usr/libexec/java_home`
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-12.0.2.jdk/Contents/Home
