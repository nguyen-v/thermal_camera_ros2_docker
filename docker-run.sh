#!/bin/bash
docker run -it --rm \
  --device=/dev/camera/video_thermal:/dev/camera/video_thermal \
  thermal_camera_ros2:latest \
  ros2 launch thermal_camera thermal_camera_launch.py colormap:=2 hud:=False orientation:=270 device:=/dev/camera/video_thermal
