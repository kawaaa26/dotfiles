"--------------------------------------------------------
" vim-airline setting
"--------------------------------------------------------

" vim-airline setting migrated to dein.toml

let g:airline_theme = 'luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
let g:airline#extensions#readonly#symbol   = '⊘'
let g:airline#extensions#linecolumn#prefix = '¶'
let g:airline#extensions#paste#symbol      = 'ρ'
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#enabled = 0

" airline#extensions#ale
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = '⚠️ '
let g:airline#extensions#ale#warning_symbol = ' '

" airline symbols
" airlineで表示される記号の変更
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.crypt = '🔒'		"暗号化されたファイル
let g:airline_symbols.maxlinenr = " \uF6F6 "
let g:airline_symbols.branch = " \uF408  \uE725 \uE370"
let g:airline_symbols.paste = 'ρ'			"ペーストモード
let g:airline_symbols.spell = 'Ꞩ'			"スペルチェック
let g:airline_symbols.notexists = '∄'		"git管理外
" let g:airline_symbols.notexists = "\uF00A"
let g:airline_symbols.paste     = 'ρ'
let g:airline_symbols.whitespace = "\uF0D6   "

" commented_out-----------------------------
let g:airline_left_alt_sep = '\uE0C4'
" let g:airline_left_sep = "\uE0C6"
" let g:airline_right_sep = "\uE0C7"
let g:airline_right_alt_sep = '\uE0C5'
" let g:airline_right_alt_sep = '\uE0C5'

" let g:airline_left_alt_sep = '\uE0CC'
let g:airline_left_sep = "\uE0CC "
let g:airline_right_sep = "\uE0C7\uE0C6"
" let g:airline_right_alt_sep = '\uE0C7'
let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" ------------------------------------------

let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = " \uE373 "

let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
" let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'

" let g:airline_focuslost_inactive=1
