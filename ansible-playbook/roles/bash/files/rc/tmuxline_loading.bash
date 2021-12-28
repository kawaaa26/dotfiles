
# --------------------------------------------------------------------
# tmuxline loading settings



# bash_process=$(ps xj | grep '\-bash' | grep -v grep | wc -l)
# echo $bash_process # the variable should be containing 2 as an integer.

bash_process=$(ps xj | grep '\-bash' | grep -v grep | wc -l)
check_tmux=$(ps xj | grep tmuximum | grep -v grep | wc -l)

# echo "bash_process: $bash_process" # check pid for bash
# echo "tmux_check: $check_tmux" # check pid for tmux

# the below line is for using TMD alias.
# if [ "$(echo $bash_process)" = "2" ] && [ "$(echo $check_tmux)" = "1" ] || [ "$(echo $bash_process)" = "3" ] && [ "$(echo $check_tmux)" = "1" ] ; then
if [ "$(echo $bash_process)" = "3" ] && [ "$(echo $check_tmux)" = "1" ]; then
  echo "Start loading tmuxline..."
  vim -c :q
  echo "tmuxline loading completed!"
else
  echo "here's new pane"
  # echo "--------------------"
  # echo $bash_process
  # echo "--------------------"
  # echo $check_tmux
fi

# --------------------------------------------------------------------
