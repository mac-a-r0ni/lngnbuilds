if ! grep -q ^lightdm: /etc/group ; then
  chroot . groupadd -g 380 lightdm
  chroot . useradd -d /var/lib/lightdm -s /bin/false -u 380 -g 380 lightdm -G video
fi
