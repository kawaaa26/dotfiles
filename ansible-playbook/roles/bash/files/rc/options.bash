shopt -s autocd
export LSCOLORS=gxfxcxdxbxegedabagacad

# -------------------------------------------------------
# cross-promopt command history
# -------------------------------------------------------

# function share_history {
#     history -a
#     history -c
#     history -r
# }

# PROMPT_COMMAND='share_history'
# shopt -u histappend
# export HISTSIZE=2000



# -------------------------------------------------------
# search directory history
# -------------------------------------------------------
[ -f ~/dotfiles/cdhist.sh ] && . ~/dotfiles/cdhist.sh

_cd_cdhist() {
  cd "$(for i in "${CDHIST_CDQ[@]}"; do echo $i; done | fzf)"
}

bind -x '"\C-@": _cd_cdhist';

# -------------------------------------------------------
# vim execution for bash bind
# -------------------------------------------------------

_vim_exec() {
  nvim
}

bind -x '"\C-@": _vim_exec'
bind -x '"\C-n": _vim_exec'


# -------------------------------------------------------
# colorize "ls" command
# -------------------------------------------------------

CLICOLOR=1
LSCOLORS=FxGxcxdxCxegedabagacad

