#!/bin/bash

DISCHARGING="$(cat /sys/class/power_supply/BAT0/status | grep 'Discharging')"
BATTERY_LEVEL="$(cat /sys/class/power_supply/BAT0/capacity)"

if [ ! -z "${DISCHARGING}" ] && [ "${BATTERY_LEVEL}" -le 10 ]; then
  notify-send --icon=battery-low -u critical "Battery level is ${BATTERY_LEVEL}%!"
fi
