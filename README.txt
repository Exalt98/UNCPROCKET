Applications for collecting a logging sensor data during rocketry flight

Applications are started via corresponding run.sh scripts.

Timestamp for output files is generated via timestamp script.

Applications are started at boot time via calls to run.sh scripts in:
/etc/rc.local

TODO: Currently the barimetric pressure script is not started in the backgroud using '&'
as doing so was preventing data from logging in output file.

Files are stored in /boot/ at this partition is visible / mountable from Windows.

This allows the log files to be retrieved by removing the sdcard from the Pi and mounting in Windows.

Deployment

Install the wiringpi debian package:
(Optional for installing the gpio command)
cd /tmp
wget https://project-downloads.drogon.net/wiringpi-latest.deb
sudo dpkg -i wiringpi-latest.deb


Add these lines at the end of /etc/rc.local:

/home/pi/bmp388/UNCPROCKET.git/apps/gps/run.sh &
/home/pi/bmp388/UNCPROCKET.git/apps/BaremetricP/run.sh &
/home/pi/bmp388/UNCPROCKET.git/apps/gyro_accel_reading/run.sh &
