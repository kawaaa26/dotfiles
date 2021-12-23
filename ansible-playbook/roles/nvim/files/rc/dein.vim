"--------------------------------------------------------
" dein setting
"--------------------------------------------------------

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " let s:toml = '~/.config/nvim/dein.toml'
  " let s:lazy_toml = '~/.config/nvim/dein_lazy.toml'
  " let s:toml = ${ANSIBLE_NVIM}/dein/dein.toml
  " let s:lazy_toml = ${ANSIBLE_NVIM}/nvim/dein/dein_lazy.toml
  let s:toml = '/Users/kazoo/dotfiles/ansible-playbook/roles/nvim/files/dein/dein.toml'
  let s:lazy_toml = '/Users/kazoo/dotfiles/ansible-playbook/roles/nvim/files/dein/dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0}) "toml cache
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
 call dein#end()
  call dein#save_state()
endif

" call dein#add('neoclide/coc.nvim', {'on_cmd' : 'mm'})

if dein#check_install()
  call dein#install()
endif
