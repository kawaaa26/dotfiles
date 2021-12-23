"--------------------------------------------------------
" ALE setting
"--------------------------------------------------------

let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = ' '
let g:ale_sign_warning = '⚠️ '
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
let g:ale_sign_columns_always = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass

" enable linter
let g:ale_linters = {
\   'python': ['flake8'],
\   'ruby': ['ruby', 'rubocop'],
\   'javascript': ['eslint'],
\}

nmap [ale] <Nop>
map <C-k> [ale]
nmap <silent> [ale]<C-P> <Plug>(ale_previous)
nmap <silent> [ale]<C-N> <Plug>(ale_next)