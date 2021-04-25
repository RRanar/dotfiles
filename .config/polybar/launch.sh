#!/bin/bash
# Запуск Polybar со стандартным расположением конфигурационного файла в ~/.config/polybar/config
ps aux | grep hideIt | grep -v grep | awk '{print $2}' | xargs kill
killall -q polybar

polybar example -l warning  > /dev/null 2>&1 &

sleep 1

hideIt.sh -N '^polybar-example' -p 3 -d top -H > /dev/null 2>&1 &

echo "Polybar загрузился..."
