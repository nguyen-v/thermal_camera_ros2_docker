#!/bin/bash
# Resolve the actual device that /dev/video_thermal points to
DEVICE=$(readlink -f /dev/video_thermal)

if [ -z "$DEVICE" ]; then
  echo "Error: /dev/video_thermal not found. Please ensure your udev rule is working."
  exit 1
fi

# Extract just the device index (e.g., "8" from "/dev/video8")
DEVICE_INDEX=${DEVICE#/dev/video}

echo "Thermal camera detected device index: $DEVICE_INDEX"

# Run the container, passing the actual device and the device index
docker run -it --rm --device="$DEVICE" thermal_camera_ros2:latest\
  ros2 launch thermal_camera thermal_camera_launch.py colormap:=2 hud:=False orientation:=270 device:=$DEVICE_INDEX
