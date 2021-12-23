# .bashrc will be updated for using rc dir later. just containing aliases currently.

for rcfile in $BASH_RC_DIR/*; do [ -r $rcfile ] && source $rcfile; done

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
# . "$HOME/.cargo/env"

export CARGO_HOME="$HOME/.cargo"
export PATH="$CARGO_HOME/bin:$PATH"
