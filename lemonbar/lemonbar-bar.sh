#!/bin/sh

Clock() {
  DATETIME=$(date "+%a %b %d, %T")
  printf "$DATETIME"
}
CurrentWorkspace() {
  WORKSPACE=$(bspc query -D -d focused --names)
  printf "$WORKSPACE"
}

# Print everything
while true; do
  echo "%{l}%{F#FFFF00}%{B#0000FF} $(CurrentWorkspace) %{c}%{F#FFFF00}%{B#0000FF} $(Clock) %{F-}%{B-}"
  sleep 1
done

