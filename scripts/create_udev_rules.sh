#!/bin/bash

echo "remap the device USB camera port (/dev/videox) to /dev/video_thermal"
echo "Thermal camera USB connection as /dev/videox, check it using the command : v4l2-ctl --list-devices"
echo "start copy thermal_camera.rules to  /etc/udev/rules.d/"
sudo cp scripts/thermal_camera.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "