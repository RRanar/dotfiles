#!/bin/bash


ps -ef | grep hideIt | grep -v grep | awk '{print $2}' | xargs kill
# Завершить текущие экземпляры polybar
killall -q polybar
# Ожидание полного завершения работы процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запуск Polybar со стандартным расположением конфигурационного файла в ~/.config/polybar/config
polybar example


hideIt.sh -N "^polybar-example" -p 3 -d top -H

echo "Polybar загрузился..."
