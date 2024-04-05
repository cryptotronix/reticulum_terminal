#!/bin/sh

set -u
set -e


# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
    # systemd doesn't use /etc/inittab, enable getty.tty1.service instead
elif [ -d ${TARGET_DIR}/etc/systemd ]; then
    mkdir -p "${TARGET_DIR}/etc/systemd/system/getty.target.wants"
    ln -sf /lib/systemd/system/getty@.service \
       "${TARGET_DIR}/etc/systemd/system/getty.target.wants/getty@tty1.service"
fi


mkdir -p ${TARGET_DIR}/etc/network/


cp ${BR2_EXTERNAL_RETICULUM_TERMINAL_PATH}/board/rpizerow2/interfaces ${TARGET_DIR}/etc/network/interfaces
cp ${BR2_EXTERNAL_RETICULUM_TERMINAL_PATH}/board/rpizerow2/wpa_supplicant.conf ${TARGET_DIR}/etc/wpa_supplicant.conf
#cp ${BR2_EXTERNAL_RPI4_PATH}/board/raspberrypi4/sshd_config ${TARGET_DIR}/etc/ssh/sshd_config

#mkdir -p ${TARGET_DIR}/root/.ssh
#cp ${BR2_EXTERNAL_RPI4_PATH}/board/raspberrypi4/authorized_keys ${TARGET_DIR}/root/.ssh/authorized_keys
