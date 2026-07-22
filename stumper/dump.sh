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
  openssh-keygen
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

HASH=$6$6Jj.tJgVAoCbz4Ju$pR2tlICUd3SP6vGjKheKHOBYBQTI/SAlcT.MdcdTYubSb26Jlz.NFrBaJ/QvrzmSsI.Q.ZcIl94P41YHa02oX/

run_cmd() {
  chroot $CHROOT $1
}

read -p "Enter Epitech email address: " epitech_email
read -p "Enter Epitech password: " epitech_password

USERNAME="${epitech_email%@epitech.eu}"

ERASE_DISKS=/dev/$DISK ROOT_DISK=$DISK USERNAME=$USERNAME setup-alpine -e -f https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/stumper/alpine-answers

if [ ${DISK:0:1} == 's' ]; then
    PART="${DISK}3"
else
    PART="${DISK}p3"
fi
mount /dev/$PART $CHROOT

run_cmd "wget -O /tmp/setup-wifi.sh https://raw.githubusercontent.com/TheodoreGozard/epitech-dump/refs/heads/main/stumper/setup-wifi.sh"
run_cmd "sh /tmp/setup-wifi.sh $epitech_email $epitech_password"

echo "root:$HASH" | chroot $CHROOT chpasswd -e
echo "$USERNAME:$epitech_password" | chroot $CHROOT chpasswd

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

echo "$USERNAME ALL= NOPASSWD: /sbin/reboot, /sbin/poweroff, /sbin/apk update" >> $CHROOT/etc/sudoers

echo "rm -rf /home/$USERNAME/!(.*)" > $CHROOT/etc/local.d/reset-home.start
chmod +x $CHROOT/etc/local.d/reset-home.start
#echo "apk update" > $CHROOT/etc/local.d/update-apk.start
#chmod +x $CHROOT/etc/local.d/update-apk.start
run_cmd "rc-update add local default"

umount /mnt
#reboot
