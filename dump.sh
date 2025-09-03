#!/usr/bin/env bash

clear

echo "INSTALLING TOOLS AND PACKAGES FOR EPITECH'S DUMP"
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

packages_list=(
    build-essential
    clang-20
    clang-tools
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
    curl
    net-tools
    tcsh
    sudo
    git
)

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo tee /etc/apt/trusted.gpg.d/llvm.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/llvm.asc] https://apt.llvm.org/noble/ llvm-toolchain-noble-20 main" | sudo tee /etc/apt/sources.list.d/llvm.list

wget -O - https://epitech.github.io/epiclang/key.asc | sudo tee /etc/apt/trusted.gpg.d/epiclang-apt.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/epiclang-apt.asc] https://epitech.github.io/epiclang/ testing main" | sudo tee /etc/apt/sources.list.d/epiclang.list

wget -O - https://epitech.github.io/banana-next/key.asc | sudo tee /etc/apt/trusted.gpg.d/banana-apt.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/banana-apt.asc] https://epitech.github.io/banana-next/ testing main" | sudo tee /etc/apt/sources.list.d/banana.list

apt update

apt install -y ${packages_list[@]}

curl -sSL "https://github.com/Snaipe/Criterion/releases/download/v2.4.2/criterion-2.4.2-linux-x86_64.tar.xz" -o criterion-2.4.2.tar.xz
tar xf criterion-2.4.2.tar.xz
cp -r criterion-2.4.2/* /usr/local/
echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local.conf
ldconfig
rm -rf criterion-2.4.2.tar.xz criterion-2.4.2/

git clone https://github.com/TheodoreGozard/epitech-emacs.git epitech-emacs
sudo -u "#1000" ./epitech-emacs/INSTALL.sh local
rm -rf epitech-emacs
git clone https://github.com/Epitech/vim-epitech.git epitech-vim
cd epitech-vim
sudo -u "#1000" ./install.sh local
cd .. && rm -rf epitech-vim
curl -o /boot/grub/background.png https://dump.sayro.fr/background.png
curl -o /etc/default/grub https://dump.sayro.fr/grub
update-grub
cp /boot/grub/background.png /usr/share/backgrounds
echo "user-db:user\nsystem-db:local" > /etc/dconf/profile/user
mkdir /etc/dconf/db/local.d/
curl -o /etc/dconf/db/local.d/00-background https://dump.sayro.fr/00-background
dconf update
snap install teams-for-linux
