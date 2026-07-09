#!/bin/sh

find_wifi_interface() {
    wifi_interface=""
    if command -v iw &> /dev/null; then
        wifi_iface=$(iw dev | grep "Interface" | awk '{print $2}' | head -1)
        if [ -n "$wifi_iface" ]; then
            wifi_interface="$wifi_iface"
        fi
    fi
}

read_password() {
    local var_name=$1
    local password=""
    local char
    
    echo -n "Enter Epitech password: " >&2
    
    while IFS= read -r -s -n1 char; do
        if [[ $char == $'\0' ]]; then
            break
        fi
        password+="$char"
        echo -n "*" >&2
    done
    echo >&2
    
    # Assign to the variable passed by reference
    printf -v "$var_name" '%s' "$password"
}

find_wifi_interface
read -p "Enter Epitech email address: " epitech_email
read_password epitech_password

touch /etc/wpa_supplicant/wpa_supplicant.conf
echo 
"network={
    ssid="IONIS"
    key_mgmt=WPA-PEAP
    eap=PEAP
    phase2="auth=MSCHAPV2"
    identity="$epitech_mail"
    password="$epitech_password"
}" > /etc/wpa_supplicant/wpa_supplicant.conf

udhcpc -i "$wifi_interface"
rc-update add wpa_supplicant boot
rc-update add networking boot
rc-service wpa_supplicant start

echo
"
auto "$wifi_interface"
iface "$wifi_interface" inet dhcp
" >> /etc/network/interface
