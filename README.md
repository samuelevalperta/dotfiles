# dotfiles

## Login
Don't ask for username on startup

```bash
# /etc/systemd/system/getty@tty1.service.d/skip-username.conf
[Service]
ExecStart=
ExecStart=-/sbin/agetty -o '-p -- samuele' --noclear --skip-login - $TERM
```

## Compositor
Launch sway
```bash
# $HOME/.zlogin
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway
fi
```

## Tulizu
Used to write the content of /etc/issue, which is shown before DM selection
