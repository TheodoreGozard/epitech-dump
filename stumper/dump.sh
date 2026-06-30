#!/bin/sh
set -e

DISK=$1
CHROOT="/mnt"
PACKAGES_LIST="
  sudo
  build-base 
  epiclang
  banana-coding-style-checker
  emacs
  vim
  bash
  git
  valgrind
  clang20
  libgit2
  python3
  gdb
  curl
  gcovr
  man-pages
  mandoc
  github-cli"

run_cmd() {
  chroot $CHROOT $1
}

ERASE_DISKS=/dev/$1 setup-alpine -e -f http://10.50.50.4:8080/stumper/alpine-answers

mount /dev/$13 $CHROOT

sed -i 's/#/''/g' $CHROOT/etc/apk/repositories
echo -e "https://alpine-repo.epistone.fr" >> $CHROOT/etc/apk/repositories
wget -O $CHROOT/etc/apk/keys/stumper-6a3e78e7.rsa.pub https://alpine-repo.epistone.fr/keys/stumper-6a3e78e7.rsa.pub
run_cmd "apk update"
for package in "${PACKAGES_LIST}"; do
    run_cmd "apk add $package"
done

wget -O $CHROOT/tmp/criterion-2.4.2.tar.xz https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/stumper/criterion-2.4.2.tar.xz
mkdir $CHROOT/tmp/criterion
tar xf $CHROOT/tmp/criterion-2.4.2.tar.xz -C $CHROOT/tmp/criterion
cp -r $CHROOT/tmp/criterion/libcriterion* $CHROOT/usr/local/lib
mkdir $CHROOT/usr/local/include
cp -r $CHROOT/tmp/criterion/include $CHROOT/usr/local/include/criterion
mkdir $CHROOT/etc/ld.so.conf.d
echo "/usr/local/lib" >> $CHROOT/etc/ld.so.conf.d/usr-local.conf
run_cmd "ldconfig"
rm -rf $CHROOT/tmp/criterion-2.4.2.tar.xz $CHROOT/tmp/criterion

echo "stumper ALL= NOPASSWD: /sbin/reboot, /sbin/poweroff, /sbin/apk update" >> $CHROOT/etc/sudoers

echo "rm -rf /home/stumper/!(.*)" > $CHROOT/etc/local.d/reset-stumper-home.start
chmod +x $CHROOT/etc/local.d/reset-stumper-home.start
echo "apk update" > $CHROOT/etc/local.d/update-apk.start
chmod +x $CHROOT/etc/local.d/update-apk.start
run_cmd "rc-update add local default"

umount /mnt
#reboot
