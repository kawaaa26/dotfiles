#!/bin/bash

if battery_info=$(/usr/bin/pmset -g ps | awk '{ if (NR == 2) print $2 " " $3 }' | sed -e "s/;//g" -e "s/%//") ; then
  battery_quantity=$(echo $battery_info | cut -b 13-)
  if [[ ! $battery_info =~ "discharging" ]]; then
    battery="#[fg=white]$battery_quantity% "
  elif (( $battery_quantity < 16 )); then
    battery="#[fg=white]$battery_quantity % "
  else
    battery="#[fg=black]$battery_quantity % "
  fi
  echo $battery
fi

# the battery symbol somehow disppeared
# battery_quantity=$(echo $battery_info | awk '{print $1}')
# battery="#[fg=white]  $battery_quantity% "
