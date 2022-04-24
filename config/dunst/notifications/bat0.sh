#!/bin/sh

CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)

STATUS=$(cat /sys/class/power_supply/BAT0/status)

[ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -lt 20 ] && \

/usr/bin/notify-send -u critical -a power_supply_low "Low Battery" "You are running low on battery ($CAPACITY%)." && \

echo "Low Battery notification sent" || \

echo "Low Battery notification not sent"


[ "$STATUS" = "Charging" ] && [ "$CAPACITY" -gt 97 ] && \

/usr/bin/notify-send -u normal -a power_supply_full "Battery Full" "Charge full ($CAPACITY%)." && \

echo "Full Battery notification sent" || \

echo "Full Battery notification not sent"
