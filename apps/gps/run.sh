#TODO - Add timestamp script to env path and remove hard-coded absolute path below
sleep 30

gpspipe -r -d -l -o /boot/$(/home/pi/bmp388/UNCPROCKET.git/apps/scripts/timestamp)_gps.nmea

