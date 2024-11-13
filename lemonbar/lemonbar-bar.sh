#!/bin/sh

Clock() {
  DATETIME=$(date "+%a %b %d, %T")
  printf "$DATETIME"
}

CurrentWorkspace() {
  WORKSPACE=$(bspc query -D -d focused --names)
  printf " > $WORKSPACE"
}

Volume(){
  awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master)
}

# Print everything
while true; do
  echo "%{l}%{F#000000}%{B#f9a602}$(CurrentWorkspace) %{c}%{F#000000}%{B#f9a602} $(Clock) %{F-}%{B-} %{r}%{F#000000}%{B#f9a602} Vol: $(Volume) %{F-}%{B-}"
  sleep 0.2
done

