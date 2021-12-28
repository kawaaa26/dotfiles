"--------------------------------------------------------
" deoplete setting
"--------------------------------------------------------

let g:deoplete#enable_at_startup = 1


"--------------------------------------------------------
" denite setting
"--------------------------------------------------------

" denite mapping
noremap <C-G> :Denite grep<CR>
noremap <C-P> :Denite buffer<CR>
noremap <C-N> :Denite -buffer-name=file file<CR>
noremap <C-Z> :Denite file_old<CR>
noremap <C-C> :Denite file_rec<CR>
nnoremap sB :<C-u>Denite buffer -buffer-name=file<CR>
nnoremap <silent> <Leader><C-f> :<C-u>Denite line<CR>
nnoremap <silent> <expr><Space>l ":<C-u>DeniteWithCursorWord line<CR>"



"--------------------------------------------------------
" vim-devicons setting
"--------------------------------------------------------

let g:WebDevIconsUnicodeDecorateFolderNodes = 1


"--------------------------------------------------------
" vim-cheatsheet setting
"--------------------------------------------------------

let g:cheatsheet#cheat_file = '~/.cheatsheet.md'


"--------------------------------------------------------
" vim-monster setting
"--------------------------------------------------------

let g:monster#completion#backend = 'solargraph'
let g:monster#completion#rcodetools#backend = "async_rct_complete"
let g:deoplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}


"--------------------------------------------------------
" emmet-vim setting
"--------------------------------------------------------

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends': 'jsx',
\      'quote_char': "'",
\  },
\}




"--------------------------------------------------------
" tagbar settings
"--------------------------------------------------------

nmap <F8> :TagbarToggle<CR>


"--------------------------------------------------------
" vim-polyglot settings
"--------------------------------------------------------

let g:polyglot_disabled = ['md']


" -------------------------------------------------------
" indent setting
"--------------------------------------------------------

let g:indentLine_color_term = 164

" -------------------------------------------------------
" veonim setting
"--------------------------------------------------------

" if exists('veonim')

" " built-in plugin manager
" " Plug 'sheerun/vim-polyglot'
" " Plug 'tpope/vim-surround'

" " extensions for web dev
" let g:vscode_extensions = [
"   \'vscode.typescript-language-features',
"   \'vscode.css-language-features',
"   \'vscode.html-language-features',
" \]

" " multiple nvim instances
" nno <silent> <c-t>c :Veonim vim-create<cr>
" nno <silent> <c-g> :Veonim vim-switch<cr>
" nno <silent> <c-t>, :Veonim vim-rename<cr>

" " workspace functions
" nno <silent> ,f :Veonim files<cr>
" nno <silent> ,e :Veonim explorer<cr>
" nno <silent> ,b :Veonim buffers<cr>
" nno <silent> ,d :Veonim change-dir<cr>
" "or with a starting dir: nno <silent> ,d :Veonim change-dir ~/proj<cr>

" " searching text
" nno <silent> <space>fw :Veonim grep-word<cr>
" vno <silent> <space>fw :Veonim grep-selection<cr>
" nno <silent> <space>fa :Veonim grep<cr>
" nno <silent> <space>ff :Veonim grep-resume<cr>
" nno <silent> <space>fb :Veonim buffer-search<cr>

" " language features
" nno <silent> sr :Veonim rename<cr>
" nno <silent> sd :Veonim definition<cr>
" nno <silent> si :Veonim implementation<cr>
" nno <silent> st :Veonim type-definition<cr>
" nno <silent> sf :Veonim references<cr>
" nno <silent> sh :Veonim hover<cr>
" nno <silent> sl :Veonim symbols<cr>
" nno <silent> so :Veonim workspace-symbols<cr>
" nno <silent> sq :Veonim code-action<cr>
" nno <silent> sk :Veonim highlight<cr>
" nno <silent> sK :Veonim highlight-clear<cr>
" nno <silent> ,n :Veonim next-usage<cr>
" nno <silent> ,p :Veonim prev-usage<cr>
" nno <silent> sp :Veonim show-problem<cr>
" nno <silent> <c-n> :Veonim next-problem<cr>
" nno <silent> <c-p> :Veonim prev-problem<cr>

" endif
