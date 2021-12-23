# auto_cdls()
# {
#     if [ "$OLDPWD" != "$PWD" ]; then
#         ls
#         OLDPWD="$PWD"
#     fi
# }
# PROMPT_COMMAND="$PROMPT_COMMAND"$'\n'auto_cdls



function estimate_battery() {
  if battery_info=$(/usr/bin/pmset -g ps | awk '{ if (NR == 2) print $2 " " $3 }' | sed -e "s/;//g" -e "s/%//") ; then
    battery_quantity=$(echo $battery_info | cut -b 14-)
    if [[ ! $battery_info =~ "discharging" ]]; then
      battery="  $battery_quantity%"
    elif (( $battery_quantity < 16 )); then
      battery="  $battery_quantity%"
  else
      battery="  $battery_quantity%"
    fi
    echo $battery
  fi
}
# PROMPT_COMMAND="$PROMPT_COMMAND"$'\n'estimate_battery

# PROMPT_COMMAND+=estimate_battery
battery=$(estimate_battery)
# PROMPT_COMMAND+=$battery

# battery=$(sh ~/dotfiles/prompt/get_battery_prompt.sh)

# export PS1='
# \[\e[1;31m\]- ❯\[\e[1;37m\]❯\[\e[1;32m\]❯ \[\e[0m\] '

# \[\e[1;37;45m\] 太字、文字白、背景紫色 \[\e[0m\] \


export PS1='
\[\e[37;43m\]  \t \[\e[0m\]\[\e[33;41m\] \[\e[0m\]\[\e[37;41m\]$battery \[\e[31;45m\]\[\e[0m\]\[\e[37;45m\]   \w  \[\e[35;40m\]\[\e[0m\]
\[\e[1;31m\]- ❱\[\e[1;37m\]❱\[\e[1;32m\]❱ \[\e[0m\]'

# PROMPT_COMMAND="$PROMPT_COMMAND"$'\n'PS1

function __command_rprompt() {
    # 右プロンプトに表示させる内容。今回はタイムスタンプ。
    local rprompt=$(date "+%Y/%m/%d %H:%M:%S")

    #右プロンプトを表示するために必要となる幅
    local num=$(($COLUMNS - ${#rprompt} - 2))

    # 右プロンプトの表示(\rがないとうまく動作しないので注意)
    printf "%${num}s $rprompt\r" ''
}


# ------------------------------------------

# auto_cdls()
# {
#     if [ "$OLDPWD" != "$PWD" ]; then
#         ls
#         OLDPWD="$PWD"
#     fi
# }
# PROMPT_COMMAND="$PROMPT_COMMAND"$'\n'auto_cdls

# ------------------------------------------

PROMPT_COMMAND=__command_rprompt
