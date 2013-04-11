#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchromv5
. build/envsetup.sh
cd mt11i
mkdir temp
cd temp
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/Mms.apk'
cat 'Mms/AndroidManifest.xml' | sed -e "s/android:screenOrientation=\"portrait\" //g" \
				| sed -e "s/ android:screenOrientation=\"portrait\"//g" > '../Mms/AndroidManifest.xml'
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/Settings.apk'
cat 'Settings/res/xml/sound_settings.xml' | sed -e "s/android.musicfx/miui.player/g" \
				| sed -e "s/ControlPanelPicker/ui.EqualizerActivity/g" > '../Settings/res/xml/sound_settings.xml'
cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/MenuInflater;)V/MenuInflater;)V \
    return-void/' > '../Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali'
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/LBESEC_MIUI.apk'
grep -v '<action android:name="android.intent.action.MAIN" />' 'LBESEC_MIUI/AndroidManifest.xml' >> 'LBESEC_MIUI/AndroidManifest2.xml'
grep -v '<category android:name="android.intent.category.LAUNCHER" />' 'LBESEC_MIUI/AndroidManifest2.xml' > 'LBESEC_MIUI/AndroidManifest.xml'
rm -f 'LBESEC_MIUI/AndroidManifest2.xml'
'../../tools/apktool' --quiet b -f 'LBESEC_MIUI' '../other/unsigned-LBESEC_MIUI.apk'
cd ..
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "other/unsigned-LBESEC_MIUI.apk" "other/LBESEC_MIUI.apk"
rm -f "other/unsigned-LBESEC_MIUI.apk"
rm -r "temp"
make fullota
unzip out/fullota.zip -d out/temp

a="assert(getprop(\"ro.product.device\") == \"haida\" ||"
b="ui_print(\" \")\;"
c="       getprop(\"ro.build.product\") == \"haida\" || getprop(\"ro.product.device\") == \"MT11i\" || getprop(\"ro.build.product\") == \"MT11i\");"
d="ui_print(\"MIUI XPERIA by Z25\")\;"
e="ui_print(\"Update Boot image...\")\;"
f="ui_print(\"Finishing installation...\")\;"
cat 'out/temp/META-INF/com/google/android/updater-script' | sed -e "s/$a/$b/g" \
							| sed -e "s/$c/$d/g" \
							| sed -e "s/$e/$f/g" > 'out/temp/META-INF/com/google/android/updater-script2'
cp 'out/temp/META-INF/com/google/android/updater-script2' 'out/temp/META-INF/com/google/android/updater-script'
rm -f 'out/temp/META-INF/com/google/android/updater-script2'

x=`date +%Y`
y=`date +.%-m.%-d`
z=${x: -1:1}
version=$z$y
time=`date +%_a%_3d%_4b%_9X%_5Z%_5Y`
utc=`date +%s`
cat 'out/temp/system/build.prop' | sed -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" \
				| sed -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" \
				| sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" \
				| sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=mt11i/g" > 'out/temp/system/build2.prop'
echo "" >> 'out/temp/system/build2.prop'
cp 'out/temp/system/build2.prop' 'out/temp/system/build.prop'
rm -f 'out/temp/system/build2.prop'

mv -f 'other/LBESEC_MIUI.apk' 'out/temp/system/app/LBESEC_MIUI.apk'
rm -f 'out/temp/system/etc/weather_city.db'
cd 'out/temp'
rm -r 'META-INF/CERT.RSA'
rm -r 'META-INF/CERT.SF'
rm -r 'META-INF/MANIFEST.MF'
zip -r "../../unsigned-miuixperia-v5-neov-$version.zip" 'boot.img' 'data' 'META-INF' 'system'
cd ../..
. ../build/envsetup.sh
cd mt11i
rm -f 'Mms/AndroidManifest.xml'
rm -f 'Settings/res/xml/sound_settings.xml'
rm -f 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali'
make clean
echo Signing rom
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuixperia-v5-neov-$version.zip" "miuixperia-v5-neov-$version.zip"
rm -r "unsigned-miuixperia-v5-neov-$version.zip"
exec ./other/neo_patch.sh
