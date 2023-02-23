#!/usr/bin/bash

source ~/.config/suckless/bin/theme.sh

updates() {
  updates=$(checkupdates | wc -l)   # arch

  if [ -z "$updates" ]; then
    printf "  ^b$green^^c$black^ 󰳢"" ^c$green^^b$black^ 0 "
  else
    printf "  ^b$green^^c$black^ 󰳢"" ^c$green^^b$black^ $updates "
  fi
}

battery() {
  BAT_ICON=$(~/.config/suckless/bin/battery --icon)
  get_capacity="$(cat /sys/class/power_supply/BAT0/capacity)%"
  echo "^c$green^ $BAT_ICON  $get_capacity"
}

volume() {
  VOL_ICON="$(~/.config/suckless/bin/volume)"
  VOLUME=$(pamixer --get-volume)
  echo "^c$blue^ $VOL_ICON $VOLUME%"
}

wlan() {
  #SSID=$(iwgetid -r)
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf " ^c$black^^b$blue^ 󰤨 ^d^%s""^c$blue^^b$black^" ;;
	down) printf " ^c$black^^b$blue^ 󰤯 ^d^%s""^c$blue^^b$black^" ;;
	esac
}

clock() {
	printf "^c$black^^b$darkblue^  "
  printf "^c$black^^b$darkblue^ $(date '+%H:%M')"
}

calendar() {
	printf "^c$black^^b$darkblue^ 󰸘 "
  printf "^b$darkblue^ $(date '+%d/%m')"
}

brightness() {
  BR_D=$(brillo)
  BR=$(echo "($BR_D+0.5)/1" | bc)
  echo "^c$yellow^ 󰃞 $BR%"
}

mem() {
  MEM=$(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)
  echo "^b$grey^^c$red^ 󰘚 ^b$black^^c$red^ $MEM ^b$black^"
}

cpu() {
  CPU=$(cat <(grep 'cpu ' /proc/stat) <(sleep 1 && grep 'cpu ' /proc/stat) | awk -v RS="" '{printf "%.1f%\n", ($13-$2+$15-$4)*100/($13-$2+$15-$4+$16-$5)}')
	echo "^c$grey^^b$green^ CPU ^c$green^^b$grey^ ${CPU} ^b$black^"
}

while true; do
  interval=$((interval + 1))
  sleep 1 && xsetroot -name " $(cpu) $(mem) $(wlan) $(clock) "
done

