#!/usr/bin/env bash

clear

echo "INSTALLING TOOLS AND PACKAGES FOR EPITECH'S DUMP"
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

packages_list=(
    build-essential
    clang-tools
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
)

apt update

apt install -y ${packages_list[@]}

curl -sSL "https://github.com/Snaipe/Criterion/releases/download/v2.4.2/criterion-2.4.2-linux-x86_64.tar.xz" -o criterion-2.4.2.tar.xz
tar xf criterion-2.4.2.tar.xz
cp -r criterion-2.4.2/* /usr/local/
echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local.conf
ldconfig
rm -rf criterion-2.4.2.tar.xz criterion-2.4.2/
