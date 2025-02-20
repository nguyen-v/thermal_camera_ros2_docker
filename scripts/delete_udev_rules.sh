#!/bin/bash

echo "delete remap the device camera port (/dev/videox) to /dev/video_thermal"
echo "sudo rm   /etc/udev/rules.d/thermal_camera.rules"
sudo rm   /etc/udev/rules.d/thermal_camera.rules
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish  delete"
