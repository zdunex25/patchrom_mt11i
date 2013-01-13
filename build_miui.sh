#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchrom
. build/envsetup.sh
cd mt11i
make fullota
unzip out/fullota.zip -d out/temp

a="assert(getprop(\"ro.product.device\") == \"MT11i\" ||"
b="ui_print(\" \")\;"
c="       getprop(\"ro.build.product\") == \"MT11i\");"
d="ui_print(\"MIUI XPERIA by Z25\")\;"
e="ui_print(\"Update Boot image...\")\;"
f="ui_print(\"Finishing installation...\")\;"
cat 'out/temp/META-INF/com/google/android/updater-script' | sed -e "s/$a/$b/g" \
							| sed -e "s/$c/$d/g" \
							| sed -e "s/$e/$f/g" > 'out/temp/META-INF/com/google/android/updater-script2'
cp 'out/temp/META-INF/com/google/android/updater-script2' 'out/temp/META-INF/com/google/android/updater-script'
rm -f 'out/temp/META-INF/com/google/android/updater-script2'

x=`date +%Y`
y=`date +.%-m.%d`
z=${x: -1:1}
version=$z$y
time=`date +%_a%_4b%_3d%_3H:%M:%S%_5Y`
utc=`date +%s`
cat 'out/temp/system/build.prop' | sed -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" \
				| sed -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" \
				| sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" \
				| sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=mt11i/g" > 'out/temp/system/build2.prop'
echo "" >> 'out/temp/system/build2.prop'
cp 'out/temp/system/build2.prop' 'out/temp/system/build.prop'
rm -f 'out/temp/system/build2.prop'

cd 'out/temp'
'../../../tools/apktool' d -f '../../out/temp/system/framework/android.policy.jar'
cp -r '../../other/4-way-reboot/impl' '../../out/temp/android.policy.jar.out/smali/com/android/internal/policy'
'../../../tools/apktool' b -f '../../out/temp/android.policy.jar.out' '../../out/temp/system/framework/android.policy.jar'
rm -r '../../out/temp/android.policy.jar.out'
rm -r 'META-INF/CERT.RSA'
rm -r 'META-INF/CERT.SF'
rm -r 'META-INF/MANIFEST.MF'
zip -r "../../unsigned-miuixperia-neov-$version.zip" 'boot.img' 'data' 'META-INF' 'system'
cd ../..
. ../build/envsetup.sh
cd mt11i
make clean
echo Signing rom
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuixperia-neov-$version.zip" "miuixperia-neov-$version.zip"
rm -r "unsigned-miuixperia-neov-$version.zip"
read -p "Done, miuixperia-neov-$version.zip has been created in root of mt11i directory, copy to sd and flash. Press ENTER to close this window!"
