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
  echo "%{l}%{F#000000}%{B#f9a602} $(CurrentWorkspace) %{c}%{F#000000}%{B#f9a602} $(Clock) %{F-}%{B-}"
  sleep 1
done

