"--------------------------------------------------------
" NERDTree setting
"--------------------------------------------------------

nnoremap <silent><C-i> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let g:NERDTreeShowBookmarks=1
" let g:NERDTreeIndicatorMapCustom = {
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDSpaceDelims=1
let g:NERDDefaultAlign='left'
filetype on