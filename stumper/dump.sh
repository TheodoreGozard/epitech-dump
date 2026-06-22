#!/bin/sh
set -e

DISK=$1
MOUNT_POINT="/mnt"
PACKAGES_LIST="
  sudo
  build-base 
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
  chroot $MOUNT_POINT $1
}

ERASE_DISKS=/dev/$1 setup-alpine -e -f http://10.50.50.4:8080/stumper/alpine-answers

mount /dev/$13 $MOUNT_POINT

sed -i 's/#/''/g' $MOUNT_POINT/etc/apk/repositories
run_cmd "apk update"
for package in "${PACKAGES_LIST}"; do
    run_cmd "apk add $package"
done

wget -O $MOUNT_POINT/usr/local/bin/epiclang https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/stumper/epiclang
chmod +x $MOUNT_POINT/usr/local/bin/epiclang
mkdir -p $MOUNT_POINT/usr/local/lib/epiclang/plugins

wget -O $MOUNT_POINT/usr/local/lib/epiclang/plugins/epiclang-plugin-banana.so https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/stumper/banana/epiclang-plugin-banana.so
wget -O $MOUNT_POINT/usr/local/bin/banana-check-repo https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/stumper/banana/banana-check-repo
chmod +x $MOUNT_POINT/usr/local/bin/banana-check-repo

wget -O $MOUNT_POINT/tmp/criterion-2.4.2.tar.xz https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/stumper/criterion-2.4.2.tar.xz
mkdir $MOUNT_POINT/tmp/criterion
tar xf $MOUNT_POINT/tmp/criterion-2.4.2.tar.xz -C $MOUNT_POINT/tmp/criterion
cp -r $MOUNT_POINT/tmp/criterion/libcriterion* $MOUNT_POINT/usr/local/lib
mkdir $MOUNT_POINT/usr/local/include
cp -r $MOUNT_POINT/tmp/criterion/include $MOUNT_POINT/usr/local/include/criterion
mkdir $MOUNT_POINT/etc/ld.so.conf.d
echo "/usr/local/lib" > $MOUNT_POINT/etc/ld.so.conf.d/usr-local.conf
run_cmd "ldconfig"
rm -rf $MOUNT_POINT/tmp/criterion-2.4.2.tar.xz $MOUNT_POINT/tmp/criterion

echo "stumper ALL= NOPASSWD: /sbin/reboot, /sbin/poweroff" > $MOUNT_POINT/etc/sudoers

echo "rm -rf /home/stumper/!(.*)" > $MOUNT_POINT/etc/local.d/reset-stumper-home.start
chmod +x $MOUNT_POINT/etc/local.d/reset-stumper-home.start
run_cmd "rc-update add local default"

umount /mnt
#reboot
