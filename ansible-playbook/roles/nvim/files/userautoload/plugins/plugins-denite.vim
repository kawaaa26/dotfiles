if executable('rg')
  call denite#custom#var('file_rec', 'command',
        \ ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts',['-i', '--vimgrep'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
endif

call denite#custom#option('default', 'prompt', '>')

" denite/insert モードのときは，C- で移動できるようにする
call denite#custom#map('insert', "<C-j>", '<denite:move_to_next_line>')
call denite#custom#map('insert', "<C-k>", '<denite:move_to_previous_line>')

" tabopen や vsplit のキーバインドを割り当て
call denite#custom#map('insert', "<C-t>", '<denite:do_action:tabopen>')
call denite#custom#map('insert', "<C-v>", '<denite:do_action:vsplit>')
call denite#custom#map('normal', "v", '<denite:do_action:vsplit>')

call denite#custom#map('insert', '<C-S>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-V>', '<denite:do_action:vsplit>', 'noremap')

"denite/insert を抜けるようにする
call denite#custom#map('insert', '<esc>', '<denite:enter_mode:normal>', 'noremap')


" denite kazoo settings
call denite#custom#map('normal', '<esc>', '<denite:quit>', 'noremap')
call denite#custom#map('insert', '<C-J>', '<denite:assign_next_text>')
call denite#custom#map('insert', '<C-K>', '<denite:assign_previous_text>')
call denite#custom#map('insert', '<C-O>', '<denite:do_action:tabopen>')