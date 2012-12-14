#!/bin/bash
cd ../..
export PATH=$PATH:/home/z25/android-sdk-linux/tools:/home/z25/android-sdk-linux/platform-tools
cd patchrom
. build/envsetup.sh
cd mt11i
make fullota
unzip out/fullota.zip -d out/temp

a="assert(getprop(\"ro.product.device\") == \"MT11i\" ||"
b="ui_print(\" \")\;"
c="       getprop(\"ro.build.product\") == \"MT11i\");"
d="ui_print(\"MIUI XPERIA by Z25\")\;"
g="0, 2000, 0755, 06755,"
h="0, 2000, 0755, 0644,"
cat 'out/temp/META-INF/com/google/android/updater-script' | sed -e "s/$a/$b/g" \
							| sed -e "s/$c/$d/g" \
							| sed -e "s/$g/$h/g" > 'out/temp/META-INF/com/google/android/updater-script2'
cp 'out/temp/META-INF/com/google/android/updater-script2' 'out/temp/META-INF/com/google/android/updater-script'
rm -f 'out/temp/META-INF/com/google/android/updater-script2'

x=`date +%Y`
y=`date +.%m.%d`
z=${x: -1:1}
version=$z$y
cat 'out/temp/system/build.prop' | sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" \
				| sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=mt11i/g" > 'out/temp/system/build2.prop'
echo "" >> 'out/temp/system/build2.prop'
cp 'out/temp/system/build2.prop' 'out/temp/system/build.prop'
rm -f 'out/temp/system/build2.prop'

cd 'out/temp'
'../../../tools/apktool' d -f '../../out/temp/system/framework/android.policy.jar'
cp -r '../../other/4-way-reboot/impl' '../../out/temp/android.policy.jar.out/smali/com/android/internal/policy'
'../../../tools/apktool' b -f '../../out/temp/android.policy.jar.out' '../../out/temp/system/framework/android.policy.jar'
rm -r '../../out/temp/android.policy.jar.out'
zip -r "../../miuixperia-neov-$version.zip" 'data' 'META-INF' 'system'
cd ../..
. ../build/envsetup.sh
cd mt11i
make clean
read -p "Done, miuixperia-neov-$version.zip has been created in root of mt11i directory, copy to sd and flash. Press ENTER to close this window!"
