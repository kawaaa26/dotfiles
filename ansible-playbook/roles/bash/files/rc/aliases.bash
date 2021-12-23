# --------------------------------------------------------
# Alias settings
# --------------------------------------------------------

alias ls='ls -a -G'
# alias ls='lsd -a'

if [ $SHLVL = 1 ]; then
    alias TMX="tmux -2 attach || tmux -2 new-session \; source-file ~/.tmux/new-session"
fi

function chkbash() {
    bash_process=$(ps xj | grep '\-bash' | grep -v grep | wc -l);
    check_tmux=$(ps xj | grep tmuximum | grep -v grep | wc -l);
    echo "bash_process: $bash_process";
    echo "tmux_check: $check_tmux"
}

function setup() {
    gem install neovim;
    gem install colorls;
    gem install bundler;
}
alias setup=setup

function git-dic() {
  git config --global user.name "KazukiSaito"
  git config --global user.email "kazuki_saito@diveintocode.jp"
  git config --list | grep user.name
  git config --list | grep user.email
}

function git-main() {
  git config --global user.name "kawaaa26"
  git config --global user.email "unic.almj@yahoo.com"
  git config --list | grep user.name
  git config --list | grep user.email
}

function qls() {
    clear;
    ls;
}

function benchmark() {
    time (bash -i -c exit);
}

function bashtime() {
    for i in $(seq 1 10); do time bash -i -c exit; done
}

function gitcheck() {
    git checkout "$@";
}

function moukaeru() {
    cd ~;
    clear;
    sh ~/.scripts/gohome/moukaeru;
}

function ohayo() {
    cd ~;
    clear;
    sh ~/.scripts/gohome/ohayo;
}

rmd () {
  pandoc $1 | lynx -stdin
}

# function neovim() {
#     if [[ $@ == "update" ]]; then
#         gem install neovim;
#         pip2 install --upgrade pynvim;
#         pip3 install --upgrade pynvim;
#         yarn global add neovim;
#         brew upgrade neovim;
#     else
#         nvim;
#     fi
# }

# function alacritty() {
#     if [[ $@ == "upgrade" ]]; then
#         brew cask upgrade alacritty;
#     else
#         alacritty;
#     fi
# }

function update() {
    if [[ $@ == "alacritty" ]]; then
      brew cask upgrade alacritty;
      echo "------------------------------------------"
      echo "$@ Update process is done."
      echo "------------------------------------------"
    elif [[ $@ == "nvim" ]]; then
      gem install neovim;
      pip2 install --upgrade pynvim;
      pip3 install --upgrade pynvim;
      yarn global add neovim;
      echo "------------------------------------------"
      echo " $@ Update process is done."
      echo "------------------------------------------"
    else
      echo "nothing specified for updating!"
    fi
}


# benchmark for any commands by hyperfine (Rust)
function bench() {
    hyperfine '$@';
}

function note() {
    if [[ $@ == "react" ]]; then
        nvim ~/workspace/personal_devs/notes/react/react.md
    elif [[ $@ == "rust" ]]; then
        nvim ~/workspace/personal_devs/notes/Rust/rust.md
    elif [[ $@ == "electron" ]]; then
        nvim ~/workspace/personal_devs/notes/Electron/electron.md
    elif [[ $@ == "task" ]]; then
        nvim ~/workspace/personal_devs/notes/task.md
    elif [[ $@ == "memo" ]]; then
        nvim ~/workspace/personal_devs/notes/memo.md
    else
        echo "New Note.";
        ~/workspace/personal_devs/notes;
        nvim;
    fi
}

# function fd-fzf() {
#   local target_dir=$(fd -t d -I -H -E ".git"| fzf-tmux --reverse --query="$LBUFFER")
#   local current_dir=$(pwd)

#   if [ -n "$target_dir" ]; then
#     BUFFER="cd ${current_dir}/${target_dir}"
#     zle accept-line
#   fi

#   zle reset-prompt
# }
# zle -N fd-fzf
# bindkey "^n" fd-fzf


# smoothly shutting sessions with peco
function shut() {
  if [[ $@ ]]; then
    # kill -9 $(ps ax | grep $@ | peco | cut -b 1-5)
    kill -9 $(ps ax | grep $@ | fzf | cut -b 1-5)
  else
    # kill -9 $(ps ax | peco | cut -b 1-5)
    kill -9 $(ps ax | fzf | cut -b 1-5)
  fi
}

# smoothly check sessions with peco
function sessions() {
  if [[ $@ ]]; then
    # ps ax | grep $@ | peco
    ps ax | grep $@ | fzf
  else
    # ps ax | peco
    ps ax | fzf
  fi
}

# function history() {
#   if [[ $@ ]]; then
#     history | grep $@ | fzf
#   else
#     history | fzf
#   fi
# }

__fzf_history__() {
  if type tac > /dev/null 2>&1; then tac="tac"; else tac="tail -r"; fi
  shopt -u nocaseglob nocasematch
  echo $(HISTTIMEFORMAT= history | command $tac | sed -e 's/^ *[0-9]\{1,\}\*\{0,1\} *//' -e 's/ *$//' | awk '!a[$0]++' |
      FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS --sync -n2..,.. --tiebreak=index --bind=ctrl-r:toggle-sort $FZF_CTRL_R_OPTS +m" $(__fzfcmd))
}
bind '"\C-r": " \C-e\C-u\C-y\ey\C-u`__fzf_history__`\e\C-e\er\e^"'


fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

function checkout() {
  if [[ $@ == -b ]]; then
    echo CREATE A NEW BRANCH: Type a branch name to create
    read branch
    git checkout -b $branch
  elif [[ $@ ]]; then
    git checkout $@
  else
    git checkout $(git branch | fzf);
  fi
}


function github() {
  git="https://github.com/"
  hub=$(git remote -v | head -n 1 | cut -f 2 -d ":" | rev | cut -c 8- | rev)
  echo "opening repository below..."
  echo $hub
  open $git$hub
}


# easy git add with fzf
function add() {
    git add $(git diff --name-only HEAD^ | fzf)
}


# change $SHELL to bash
function bash! {
  chsh -s /usr/local/bin/bash;
  exec $SHELL -l;
}

# change $SHELL to zsh
function zsh! {
  chsh -s /usr/local/bin/zsh;
  exec $SHELL -l;
}

function bundle_clean {
  bundle config set path ~/.vendor/bundle;
  bundle install --redownload;
}

alias alacritty-v="brew list --cask --versions alacritty"
alias bash='bash --login'
alias TMload="tmux source-file ~/.tmux.conf"

# alias arm="exec arch -arch arm64e /opt/homebrew/Cellar/bash/5.1.8/bin/bash --login"
# alias arm="exec arch -arch arm64e /bin/bash --login"

# alias x64="exec arch -arch x86_64 /opt/homebrew/Cellar/bash/5.1.8/bin/bash --login"
# alias x64="exec arch -arch x86_64 /bin/bash --login"
# /opt/homebrew/Cellar/bash/5.1.8/bin/bash
# alias git check='checkout'
# alias moukaeru='sh ~/.scripts/gohome/moukaeru'
# alias ohayo='sh ~/.scripts/gohome/ohayo'

alias ansible_dir="~/dotfiles/ansible-playbook"
alias bash_ansible="${ANSIBLE_BASH}"
alias nvim_ansible="${ANSIBLE_NVIM}"
alias tags='ctags -R -f .tags' # ctags preparation for current directory.
alias lsg='exa -ahl --git'
alias TMD='DELETE /tmp/tmux-501/'
alias TMT='tmux choose-tree'
alias f='ranger'
alias NOTE='~/workspace/personal_devs/notes'
alias RAILS='~/workspace/personal_devs/rails_projects'
alias compr='rustc'
alias v='vim'
alias personal='~/workspace/personal_devs'
alias reacts='~/workspace/reacts'
alias Go='cd Go'
alias ZSH='cd zsh'
alias BASH='cd bash'
alias rc='cd rc'
alias sl='ls'
alias reload='exec zsh -l'
alias repos='ghq look `ghq list |fzf --preview "bat --color=always --style=header,grid --line-range :80 $(ghq root)/{}/README.*"`'
alias dot='~/dotfiles'
alias REACT='~/workspace/personal_devs/react_projects/'
alias VUE='~/workspace/personal_devs/vue_projects/'
alias la='ls -la'
alias l='ls'
alias s='ls'
alias _='ls -a'
alias @='ls -a'
alias gitinfo='git config --list'
alias hu='| figlet'
alias lazy='lazygit'
alias laz='lazygit'
alias t='tmuximum'
alias chill='open -n /Applications/Spotify.app'
alias chrome='open -n /Applications/Google\ Chrome.app/'
alias term='open -n /Applications/Alacritty.app'
# alias history='history -d'
alias readline7='brew switch readline 7.0.5'
alias readline8='brew switch readline 8.0.0_1'
alias dcomp='delcomp'
alias dock='docker-compose'
alias ws="~/workspace"
alias __='~/workspace'
alias diver='~/workspace/diver'
# alias his='history'
alias rSERVER='ps ax | grep puma'
alias nSERVER='ps aux | grep node'
alias dSERVER='sudo kill -9'
alias TM='tmux'
alias TMnew='tmux new -s'
alias TMK='tmux kill-session'
alias TMkill='tmux kill-session'
alias TMls='tmux ls'
alias TMattach='tmux a -t'
alias TMa='tmux a'
alias vim='nvim'
alias ]='clear'
alias q='clear'
alias :q='clear'
alias .confgi='.config'
alias z='../'
alias x='q'
alias ga='git add'
alias ga!='git add -A'
alias gc='git commit -m'
alias gc!='git commit -m "code push!" '
alias push='git push origin'
alias push!='git push origin master'
alias pull='git pull origin'
alias pull!='git pull origin master'
alias gb='git branch'
alias gb-r='git branch -r'
alias gs='git status'
alias gm='git merge'
alias gl='git log'
alias gcl='git clone'
alias grs='git reset --soft'
alias gr='git reset'
alias grh='git reset --hard'
alias grbi='git rebase -i'
alias grcon='git rebase --continue'
alias grba='git rebase --abort'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gchm='git checkout master'
alias gchd='git checkout develop'
alias rs='rails s'
alias rc='rails c'
alias rr='rails routes'
alias rgs='rails g scaffold'
alias rgm='rails g model'
alias rgmi='rails g migrate'
alias rgc='rails g controller'
alias rdc='rails db:create'
alias rdm='rails db:migrate'
alias rdmr='rails db:migrate:reset'
alias rdl='rails db:rollback'
alias rds='rails db:seed'
alias hr='heroku run'
alias hrrc='heroku run rails c'
alias hrrk='heroku run rake db:create'
alias hrrm='heroku run rake db:migrate'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias cpdch='cap production deploy:check'
alias cpd='cap production deploy'
alias capstop='cap production unicorn:stop'
alias capstart='cap production unicorn:start'
# alias hishis='history | grep'
alias rep!='| grep'
alias start!='source /Users/kazoo0330/.zshrc'
