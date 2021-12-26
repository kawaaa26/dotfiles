"--------------------------------------------------------
" kazoo's init.vim
"--------------------------------------------------------

if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" au BufEnter :ALEToggle
autocmd VimEnter * ALEToggle

"--------------------------------------------------------
" SOURCES
"--------------------------------------------------------

source ${ANSIBLE_NVIM}/rc/options.vim
source ${ANSIBLE_NVIM}/rc/key-bindings.vim
source ${ANSIBLE_NVIM}/rc/colors.vim
source ${ANSIBLE_NVIM}/rc/basic.vim
source ${ANSIBLE_NVIM}/rc/plugins.vim
source ${ANSIBLE_NVIM}/rc/dein.vim

" neovim intro view instantly disappears
" let g:airline_focuslost_inactive=1

"--------------------------------------------------------
" Python plugin setting
"--------------------------------------------------------

" Virtualenv settings are updated due to installing anyenv.
" let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
" let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'
let g:python3_host_prog = system('(type pyenv &>/dev/null && echo -n "$(pyenv root)/versions/$(pyenv global | grep python3)/bin/python") || echo -n $(which python3)')
" let g:python3_host_prog = expand('~/nvim-python3/bin/python3')
let g:python_host_prog = expand('~/nvim-python2/bin/python2')

"--------------------------------------------------------
" Colorscheme
"--------------------------------------------------------
" colorscheme orbital
colorscheme neon " the colorscheme currently setting on nvim.
" let g:tokyonight_style = "storm"
" let g:tokyonight_terminal_colors = 0
" let g:tokyonight_transparent = 1
" let g:tokyonight_transparent_sidebar = 1
" colorscheme tokyonight

" colorscheme rigel " clear views.
" colorscheme vim-warriors-away
" colorscheme warriors-away
" colorscheme colokschi-dark
" colorscheme colokschi-light

" colorscheme space-vim-dark " darktheme
" colorscheme solarized
" colorscheme papaya
" colorscheme NeoSolarized
" colorscheme duo-mini
" colorscheme atlantic-dark " well CursorLineNr Theme
" colorscheme lyla
" colorscheme bluewery " 🍺 Blue-based vim colorscheme
" colorscheme patagonia
" colorscheme magicka
" colorscheme citylights " compatible with alacritty blue theme
