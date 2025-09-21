#!/bin/sh

Clock() {
    DATETIME=$(date "+%a %b %d, %T")
    echo "$DATETIME"
}

CurrentWorkspace() {
    WORKSPACE=$(bspc query -D -d focused --names)
    echo " > $WORKSPACE"
}

Volume(){
    #awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master)
    amixer sget Master | awk -F"[][]" '/Left:/ { print $2 }'
}

#MyVPN() {
#    VPN=$()
#    echo "$VPN"
#}
#
#MyWifi() {
#    Wifi=$(nmcli device show wlo1 | grep "CONNECTION" | awk -F"  +" '{ print $2 }')
#    echo "$Wifi"
#}

# Print everything
while true; do
    echo "%{l}%{F#000000}%{B#f9a602}$(CurrentWorkspace) \
        %{c}%{F#000000}%{B#f9a602} $(Clock) %{F-}%{B-} \
        %{r}%{F#000000}%{B#f9a602} Vol: $(Volume) %{F-}%{B-}"
    sleep 0.2
done

