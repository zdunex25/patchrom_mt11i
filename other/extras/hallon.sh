#!/system/bin/sh

echo Installing hallon libs
cp /system/usr/extras/hallon/*.so /system/lib
chmod 644 /system/lib/libcald_hal.so
chmod 644 /system/lib/libcald_pal.so
chmod 644 /system/lib/liboemcamera.so
cp /system/usr/extras/hallon/*.dat /system/usr/semc/camera
chmod -R 644 /system/usr/semc/camera/
chmod 755 /system/usr/semc/camera/
cat /system/build.prop | sed -e "s/MT11/MT15/g" \
			| sed -e "s/Xperia Neo V/Xperia Neo/g" \
			| sed -e "s/haida/hallon/g" > /system/build2.prop
mv /system/build2.prop /system/build.prop
chmod 644 /system/build.prop
echo Done, reboot your phone!
