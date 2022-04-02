set -x

sleep 30
nohup $(/home/pi/bmp388/BerryIMU/gyro_accelerometer_tutorial01_angles/gyro_accelerometer_tutorial01 > /boot/$(/home/pi/bmp388/UNCPROCKET.git/apps/scripts/timestamp)_gyro_accel.txt) > /dev/null

exit 0
