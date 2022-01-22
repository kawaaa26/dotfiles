" ------------------------------------------------------
" kazoo key-mapping
"--------------------------------------------------------

" jump to right or left with shift + H, L
noremap <S-h> 0
noremap <S-l> $

" ESC with jjj in insert mode.
inoremap <silent> <C-d> <ESC>

" refresh vim window
" nnoremap <C-l> <Nop>
nnoremap qq <C-l>

"next tab
" nnoremap <unique> <C-l> gt
nnoremap <unique> <S-Right> gt

"previous tab
" map <unique> <C-h> gT
map <unique> <S-Left> gT

"close tab
map <unique> <C-w> sq

"create a new tab
nnoremap <C-t> :<C-u>tabnew<CR>

"reload init.vim
map <unique> <C-e><C-r> :source $HOME/dotfiles/nvim/init.vim<CR>

"clear cache for dein.vim
map <unique> <Space>rr :call dein#recache_runtimepath()<CR>

" Switch showing lint symbol column
map <unique> <C-a> :set signcolumn=no<CR>
" map <unique> <C-a><C-a> :set signcolumn=yes<CR>
map <unique> <C-a><C-a> :ALEToggle<CR>
inoremap <silent> <C-s> <Esc> :set signcolumn=no<CR>i
inoremap <silent> <C-s><C-s> <Esc> :set signcolumn=yes<CR>i

"highlight words under the cursor
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

"remove highlight
nnoremap <silent> <C-x> :<C-u>nohlsearch<CR><C-l>

"highlight words under the cursor and replace them by new words.
nmap # <Space><Space>:%s/<C-r>///g<Left><Left>

"correct typo
inoremap <C-t> <Esc><Left>"zx"zpa

"split pane horizontally
map <silent> <C-a>- :<C-u>sp<CR>

"split pane vertically
map <silent> <C-a>¥ :<C-u>vs<CR>

nnoremap <silent> <C-p> :<C-u>Denite file_rec<CR>

" nnoremap <silent> <C-a>h <c-w>h
" nnoremap <silent> <C-a>j <c-w>j
" nnoremap <silent> <C-a>k <c-w>k
" nnoremap <silent> <C-a>l <c-w>l

" nnoremap sn <D-l>
" nnoremap sp <D-h>
" nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

" nmap <C-p> <Plug>AirlineSelectPrevTab
" nmap <C-n> <Plug>AirlineSelectNextTab
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <C-s> :<C-u>FixWhitespace<CR>


" ---------------------------------------------
" vim-fugitive key-bindings here
" ---------------------------------------------

nnoremap :gs :Gstatus<CR> " git status
nnoremap :gd :Gdiff<CR> " git diff
nnoremap :ga :Gwrite<CR> " git add
nnoremap :gb :Gblame<CR> " git blame (showing which commit every single line belongs to.)
nnoremap :gc :Gcommit<CR> " git commit

" ---------------------------------------------
" coc jumping to method defined file.
" ---------------------------------------------

nmap  gd (coc-definition)
