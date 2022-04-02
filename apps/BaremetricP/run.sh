set -x

sleep 30

nohup $(python /home/pi/bmp388/UNCPROCKET.git/apps/BaremetricP/bmp388.py > /boot/$(/home/pi/bmp388/UNCPROCKET.git/apps/scripts/timestamp)_barimetric.txt) > /dev/null

exit 0
