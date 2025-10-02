#!/usr/bin/env bash

clear

echo "INSTALLING TOOLS AND PACKAGES FOR EPITECH'S DUMP"
echo "THIS SCRIPT IS SUPPOSSE TO RUN ON UBUNTU 24.04, IT MAY NOT WORK ON OTHER DISTRO"

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

export DEBIAN_FRONTEND=noninteractive

add-apt-repository -y -s ppa:epitech/ppa
add-apt-repository -y -s universe
apt update

apt install -y wget

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo tee /etc/apt/trusted.gpg.d/llvm.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/llvm.asc] https://apt.llvm.org/noble/ llvm-toolchain-noble-20 main" | sudo tee /etc/apt/sources.list.d/llvm.list
apt update
apt install -y clang-20
update-alternatives --install /usr/bin/clang clang /usr/bin/clang-20 100 && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-20 100

apt install -y epitech-cpool
apt install -y epitech-emacs
apt install -y epitech-vim

apt purge -y postfix

snap install teams-for-linux

curl -o /boot/grub/background.png https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/background.png
curl -o /etc/default/grub https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/grub
update-grub

cp /boot/grub/background.png /usr/share/backgrounds
echo -e "user-db:user\nsystem-db:local" > /etc/dconf/profile/user
mkdir /etc/dconf/db/local.d/
curl -o /etc/dconf/db/local.d/00-background https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/00-background
dconf update

apt upgrade -y
