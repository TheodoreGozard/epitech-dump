#!/usr/bin/env bash

clear

echo "INSTALLING TOOLS AND PACKAGES FOR EPITECH'S DUMP"
echo "THIS SCRIPT IS SUPPOSSE TO RUN ON UBUNTU 24.04, IT MAY NOT WORK ON OTHER DISTRO"

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

packages_list=(
    epiclang
    banana-coding-style-checker
    emacs-nox
    gcovr
    libcsfml-dev
    libcsfml-doc
    libjpeg-dev
    libx11-xcb-dev
    libx11-doc
    libfreetype-dev
    libvorbis-dev
    libopenal-dev
    libxi-dev
    libxrandr-dev
    libxcb-image0-dev
    libxcb-util-dev
    valgrind
    vim
    x264
    tree
    unzip
    net-tools
    tcsh
    git
)

export DEBIAN_FRONTEND=noninteractive

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo tee /etc/apt/trusted.gpg.d/llvm.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/llvm.asc] https://apt.llvm.org/noble/ llvm-toolchain-noble-20 main" | sudo tee /etc/apt/sources.list.d/llvm.list

wget -O - https://epitech.github.io/epiclang/key.asc | sudo tee /etc/apt/trusted.gpg.d/epiclang-apt.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/epiclang-apt.asc] https://epitech.github.io/epiclang/ testing main" | sudo tee /etc/apt/sources.list.d/epiclang.list

wget -O - https://epitech.github.io/banana-next/key.asc | sudo tee /etc/apt/trusted.gpg.d/banana-apt.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/banana-apt.asc] https://epitech.github.io/banana-next/ testing main" | sudo tee /etc/apt/sources.list.d/banana.list

apt update

apt install -y build-essential curl libllvm20

apt install -y ${packages_list[@]}

update-alternatives --install /usr/bin/clang clang /usr/bin/clang-20 100 && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-20 100

curl -sSL "https://github.com/Snaipe/Ciriterion/releases/download/v2.4.2/criterion-2.4.2-linux-x86_64.tar.xz" -o criterion-2.4.2.tar.xz
tar xf criterion-2.4.2.tar.xz
cp -r criterion-2.4.2/* /usr/local/
echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local.conf
ldconfig
rm -rf criterion-2.4.2.tar.xz criterion-2.4.2/

git clone https://github.com/Epitech/epitech-emacs.git
cd epitech-emacs
bash INSTALL.sh system
cd .. && rm -rf epitech-emacs

git clone https://github.com/Epitech/vim-epitech.git epitech-vim
cd epitech-vim
bash install.sh system
cd .. && rm -rf epitech-vim

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
