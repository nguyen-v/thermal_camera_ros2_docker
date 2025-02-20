## Setting up dev rules
First you can hotplug your sensor and look at which device it corresponds (```videox```)
```bash
v4l2-ctl --list-devices
```
Then, you can get more information about the device with:
```bash
udevadm info -a -n /dev/videox
```

You should modify the following fields in [thermal_camera.rules](scripts/thermal_camera.rules) to match the correct device. Normally it should match the device with index 0.

```
ATTRS{index}
ATTRS{idVendor} 
ATTRS{idProduct} 
```

```bash
./scripts/create_udev_rules.sh
```

To delete the rules, you can run:
```bash
./scripts/delete_udev_rules.sh
```

## Building the docker image
```bash
docker build -t thermal_camera_ros2:latest
```

## Running the node
```bash
./docker-run.sh
```