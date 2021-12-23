eval "$(/opt/homebrew/bin/brew shellenv)"
export BASH_SILENCE_DEPRECATION_WARNING=1

export DOTFILES=~/dotfiles

export ANSIBLE_ROLES=${HOME}/dotfiles/ansible-playbook/roles
export ANSIBLE_BASH=${ANSIBLE_ROLES}/bash/files
export ANSIBLE_NVIM=${ANSIBLE_ROLES}/nvim/files
export BASH_RC_DIR=${ANSIBLE_BASH}/rc

if [ -f ${ANSIBLE_BASH}/.bashrc ]; then
  . ${ANSIBLE_BASH}/.bashrc
fi

if [ -f {$ANSIBLE_BASH}/.bashrc ]; then
  .
fi

echo ".bash_profile is loaded!!!"
. "$HOME/.cargo/env"
