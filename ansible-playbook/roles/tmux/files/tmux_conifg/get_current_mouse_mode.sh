mouse=$(tmux show-option -gw mouse|sed 's/mode-//;s/ /:/')

if [ "`echo $mouse | grep on`" ]; then
  echo mouse:  Enabled 
elif [ "`echo $mouse | grep off`" ]; then
  echo mouse:  Disabled 
else
  echo NOT WORKING
fi
