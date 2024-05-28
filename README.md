# dotfiles

## Disable touchscreen
Add rule in /etc/udev/rules.d/80-touchscreen.rules

Found idVendor and idProduct by running `cat /proc/bus/input/devices`

Reload config without restarting with
`udevadm control --reload-rules && udevadm trigger`
