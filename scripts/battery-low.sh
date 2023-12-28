#!/bin/bash

DISCHARGING="$(cat /sys/class/power_supply/BAT0/status | grep 'Discharging')"
BATTERY_LEVEL="$(cat /sys/class/power_supply/BAT0/capacity)"

DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
export DBUS_SESSION_BUS_ADDRESS

if [ ! -z "${DISCHARGING}" ] && [ "${BATTERY_LEVEL}" -le 15 ]; then
  notify-send --icon=battery-low -u critical "Battery level is ${BATTERY_LEVEL}%!"
fi
