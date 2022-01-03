"--------------------------------------------------------
" tmuxline setting
"--------------------------------------------------------

" let g:tmuxline_preset = {
"       \'a'    : '#S',
"       \'c'    : ['#(whoami)'],
"       \'win'  : ['#I', '#W'],
"       \'cwin' : ['#I', '#W', '#F'],
"       \'x'    : ['#(get_volume)']}

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : ['#(whoami)'],
      \'c'    : ['#(sh ~/.config/tmux/tmux_conifg/get_current_mouse_mode.sh)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['  #(sh ~/.config/tmux/tmux_conifg/get_volume_tmux.sh)', '#(sh ~/.config/tmux/tmux_conifg/get_ssid_tmux.sh)', '#(sh ~/.config/tmux/tmux_conifg/get_battery_tmux.sh)'],
      \'z'    : ['%R', '#(LANG=C date | cut -f 1 -d " ")', '%F']}

      " \'y'    : ['%R', '%a', '%m/%d', '%Y'],
      " \'y'    : [' #(sh ~/dotfiles/battery_percentage.sh) ', '%R', '%a', '%F'],
      " \'y'    : ['  #(sh ~/.config/tmux/tmux_conifg/get_volume_tmux.sh)', '#(sh ~/.config/tmux/tmux_conifg/get_ssid_tmux.sh)', '#(sh ~/.config/tmux/get_battery_tmux.sh)'],

let g:tmuxline_theme = 'luna'

" let g:tmuxline_preset = {
"       \'a'    : '#S',
"       \'b'    : ['#(whoami)'],
      " \'c'    : [' #(ruby -v | cut -b 6-10) | ﯟ #(node -v | cut -b 2-10)'],
"       \'win'  : ['#I', '#W'],
"       \'cwin' : ['#I', '#W', '#F'],
"       \'y'    : ['  #(sh ~/dotfiles/tmux/get_volume_tmux.sh)', '#(sh ~/dotfiles/tmux/get_ssid_tmux.sh)', '#(sh ~/dotfiles/tmux/get_battery_tmux.sh)', '%R', '%a', '%F'],
"       \'z'    : '#H'}



" THIS IS SHIT.
" Currently disabled the Spotify track info. on tmuxline due to freezing whole process on tmux.
      " \'b'    : ['#(whoami)', '#(~/dotfiles/.scripts/spotify/spotify)'],
