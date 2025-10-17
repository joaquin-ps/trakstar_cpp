# Trakstar C++

Minimal build of trakstar usb driver based on: 

- https://github.com/ChristophJud/ATC3DGTracker 
- https://github.com/seanyun/trakstar_ros

## Docker Installation: 

Install Docker following the [official instructions](https://docs.docker.com/engine/install/ubuntu/) and [Linux post-install](https://docs.docker.com/engine/install/linux-postinstall/).

## Runnning with 20.04 docker:

From project root directory, build container: 
```
./docker_20.04/build.sh
```

Start container with usb priviledges: 
```
./docker_20.04/start.sh
```

Build trakstar code: 
```
cd /workspace
mkdir -p build && cd build
cmake ..
make -j$(nproc)
```

Test trakstar: 
```
./PointATC3DG_test 
```

## Without Docker: 


Dependencies: 
```
sudo apt install libusb-1.0-0-dev cmake build-essential
```

Setup udev rules: 
```
cp 99-trakstar.rules /lib/udev/rules.d/99-libusb.rules
```