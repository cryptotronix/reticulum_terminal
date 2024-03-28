# reticulum_terminal
An OS, based on Buildroot, that specializes in tools for the Reticulum Network

# What this is?

At the moment, Reticulum Terminal (RT) is a prototype. The only supported board is a Raspberry Pi 4 64bit and only works with an external Radio. The only tested radio is the LilyGo TBeam and it was lightly tested.

It is based on Buildroot (https://buildroot.org/), which, if you are not used to it, is quite a different philosophy of linux systems. It is by default, a static, immutable distro that's meant to run on embedded systems. For example, there is no package manager as packages are cross compiled, by the tool, at build time.

Therefore, RT is meant to be a self contained SD card image that users could flash the SD card and have most of the tools they need to use Reticulum.

At the moment, it just has python-rns and python-lxmf, so it's lacking quite a bit.

# How to use it

Unless you are experienced in building buildroot systems, please don't start from scratch. If you are, documentation PRs are welcome. Instead please download the SDcard image.

There is only one user: `root` with no password. YOLO. Plus anyway, it's trivial to change the password of any sdcard based linux distribution.

## Hardware connection

You will need a USB-to-UART device and connect to the standard UART pins on the Raspberry Pi to get to the terminal. Additionally, you'll want to plug in your TBEAM or such to the USB port on the pi.

## Software

You'll need to run rnsd manually for now, with something like `rnsd &`. It should be a systemd unit file.

## What works

The rnsd runs, rnstatus and other utilities run. I have no idea if they are working as I'm less an expert on the actual reticulum network, so file an issue or so and let me know.
