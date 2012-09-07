#!/bin/bash
#

echo Remove old files
rm -r android.policy.jar.out
rm -r CustomizedSettings
rm -r framework.jar.out
rm -r framework-res
rm -r Lt18iSpecialSettings
rm -r Mms
rm -r Phone
rm -r SemcCamera3D
rm -r services.jar.out
rm -r Settings/res/values
rm -r ThemeManager
rm releasetools.py
rm other/handle_device_name.sh

cd ..

echo Add new files
cp -r lt18i/android.policy.jar.out mt11i/android.policy.jar.out
cp -r lt18i/CustomizedSettings mt11i/CustomizedSettings
cp -r lt18i/framework.jar.out mt11i/framework.jar.out
cp -r lt18i/framework-res mt11i/framework-res
cp -r lt18i/Lt18iSpecialSettings mt11i/Lt18iSpecialSettings
cp -r lt18i/Mms mt11i/Mms
cp -r lt18i/Phone mt11i/Phone
cp -r lt18i/SemcCamera3D mt11i/SemcCamera3D
cp -r lt18i/services.jar.out mt11i/services.jar.out
cp -r lt18i/Settings/res/values mt11i/Settings/res/values
cp -r lt18i/ThemeManager mt11i/ThemeManager
cp lt18i/releasetools.py mt11i/releasetools.py
cp lt18i/other/handle_device_name.sh mt11i/other/handle_device_name.sh

