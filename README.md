# Trakstar C++

Minimal build of trakstar usb driver based on: 

- https://github.com/ChristophJud/ATC3DGTracker 
- https://github.com/seanyun/trakstar_ros

Dependencies: 

```
sudo apt install libusb-1.0-0-dev cmake build-essential
```

Setup udev rules: 

```
cp 99-trakstar.rules /lib/udev/rules.d/99-libusb.rules
```