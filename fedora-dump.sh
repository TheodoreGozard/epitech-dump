#!/usr/bin/env bash

clear

echo "INSTALLING TOOLS AND PACKAGES FOR EPITECH'S DUMP"
echo "THIS SCRIPT IS SUPPOSSE TO RUN ON FEDORA 42, IT MAY NOT WORK ON OTHER DISTRO"

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

packages_list=(
    make
    gcc
    gcc-c++
    kernel-devel
    clang
    emacs-nox
    gcovr
    CSFML
    CSFML-doc
    CSFML-devel
    libjpeg-turbo-devel
    libX11-devel
    freetype-devel
    libvorbis-devel
    openal-soft-devel
    libXi-devel
    libXrandr-devel
    xcb-util-image
    xcb-util-devel
    xcb-util-image-devel
    valgrind
    vim
    tree
    unzip
    net-tools
    tcsh
    git
    snapd
    git
    glibc
    glibc-devel
    glibc-locale-source
)

dnf update

dnf install -y  curl tar

dnf install -y ${packages_list[@]}

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

dnf upgrade -y
