"--------------------------------------------------------
" basic settings
"--------------------------------------------------------

map ; :
syntax on
syntax enable
set background=dark
set scrolloff=100
set smartindent
set smarttab
set autoindent
set clipboard+=unnamedplus
set cursorline
set display=lastline
set encoding=UTF-8
set expandtab
set guifont=Cica:h16
set hlsearch
set ignorecase
set laststatus=2
set noswapfile "no more swap shit.
set matchtime=1
let mapleader = "\<Space>"
set number
set printfont=Cica:h12
set ruler
set shiftwidth=2
set showtabline=2
set smartcase
set statusline=2
" set statusline+=%{fugitive#statusline()}
set statusline+=%#warningmsg#
set statusline+=%*
set smartcase
set showcmd
set showmatch
set title
set tabstop=4
set ttimeoutlen=10
set visualbell t_vb=
set wrap
set wrapscan
set whichwrap=b,s,h,l,<,>,[,]
nnoremap Y y$
set guifont=DroidSansMono\ Nerd\ Font\ 12