#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchromv5
. build/envsetup.sh -p mt11i
cd mt11i
mkdir AntiSpam Backup BugReport Calculator Calendar CalendarProvider CloudService Contacts ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email FileExplorer MiuiCompass MiuiGallery MiuiVideo MiWallpaper NetworkAssistant2 Notes PackageInstaller PaymentService Provision QuickSearchBox SoundRecorder TelephonyProvider Transfer VpnDialogs Weather WeatherProvider XiaomiServiceFramework YellowPage temp
mkdir Settings/res/xml
mkdir -p Settings/smali/com/android/settings
cd temp
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/Settings.apk'
cat 'Settings/res/xml/settings_headers.xml' | sed -e "s/<header android:id=\"@id\/manufacturer_settings\">/<header android:title=\"@string\/header_category_xperia\" \/>/g" \
					| sed -e 's/    <intent android:action=\"com.android.settings.MANUFACTURER_APPLICATION_SETTING\" \/>/<header android:icon=\"@drawable\/ic_ringer_volume_settings\" android:title=\"@string\/viper_settings\">\
        <intent android:action="com.android.settings.VIPER\" \/>/' > '../Settings/res/xml/settings_headers.xml'
cat 'Settings/res/xml/device_info_settings.xml' | sed -e 's/android:key=\"kernel_version\" \/>/android:key=\"kernel_version\" \/>\
	<miui.preference.ValuePreference android:title=\"@string\/build_author\" android:key=\"build_author\" \/>/' > '../Settings/res/xml/device_info_settings.xml'
cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/MenuInflater;)V/MenuInflater;)V \
    return-void/' > 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings2.smali'
cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings2.smali' | sed -e 's/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V\
\
    const-string v22, \"build_author\"\
\
    new-instance v23, Ljava\/lang\/StringBuilder;\
\
    invoke-direct\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;-><init>()V\
\
    const-string v24, \"ZduneX25\"\
\
    invoke-virtual\/range {v23 .. v24}, Ljava\/lang\/StringBuilder;->append(Ljava\/lang\/String;)Ljava\/lang\/StringBuilder;\
\
    move-result-object v23\
\
    invoke-virtual\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;->toString()Ljava\/lang\/String;\
\
    move-result-object v23\
\
    move-object\/from16 v0, p0\
\
    move-object\/from16 v1, v22\
\
    move-object\/from16 v2, v23\
\
    invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V/' > '../Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali'
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/LBESEC_MIUI.apk'
grep -v '<action android:name="android.intent.action.MAIN" />' 'LBESEC_MIUI/AndroidManifest.xml' >> 'LBESEC_MIUI/AndroidManifest2.xml'
grep -v '<category android:name="android.intent.category.LAUNCHER" />' 'LBESEC_MIUI/AndroidManifest2.xml' > 'LBESEC_MIUI/AndroidManifest.xml'
rm -f 'LBESEC_MIUI/AndroidManifest2.xml'
'../../tools/apktool' --quiet b -f 'LBESEC_MIUI' '../other/unsigned-LBESEC_MIUI.apk'
cd ..
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "other/unsigned-LBESEC_MIUI.apk" "other/signed-LBESEC_MIUI.apk"
'other/zipalign' -f 4 "other/signed-LBESEC_MIUI.apk" "other/LBESEC_MIUI.apk"
rm -f "other/unsigned-LBESEC_MIUI.apk"
rm -f "other/signed-LBESEC_MIUI.apk"
rm -r "temp"
make fullota

if [ -f "out/fullota.zip" ];
then
unzip -q out/fullota.zip -d out/temp
echo -e "\nPreparing flashable zips.."

x=`date +%Y`
y=`date +.%-m.%-d`
z=${x: -1:1}
version=$z$y
time=`date +%c`
utc=`date +%s`

cp -f other/updater-script-rom out/temp/META-INF/com/google/android/updater-script

sed -i -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" out/temp/system/build.prop
sed -i -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" out/temp/system/build.prop
sed -i -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" out/temp/system/build.prop
sed -i -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=mt11i_z25/g" out/temp/system/build.prop

mv -f 'other/LBESEC_MIUI.apk' 'out/temp/system/app/LBESEC_MIUI.apk'
mkdir -p out/temp/system/usr/extras
cp -r other/extras/hallon out/temp/system/usr/extras
cp other/extras/hallon.sh out/temp/system/bin/hallon.sh
cp -f -r other/extras/data/* out/temp/system/media/theme/.data
cp -f ../miuipolska/Polish/extras/system/etc/* out/temp/system/etc

mv out/temp/system/media/theme/default/alarmscreen out/temp/system/media/theme/default/alarmscreen.zip
mv out/temp/system/media/theme/default/lockscreen out/temp/system/media/theme/default/lockscreen.zip
cd ../miuipolska/Polish/extras/alarmscreen
zip ../../../../mt11i/out/temp/system/media/theme/default/alarmscreen.zip -q strings/strings_pl.xml
cd ../lockscreen
zip ../../../../mt11i/out/temp/system/media/theme/default/lockscreen.zip -q advance/strings/strings_pl.xml
cd ../../../../mt11i
mv out/temp/system/media/theme/default/alarmscreen.zip out/temp/system/media/theme/default/alarmscreen
mv out/temp/system/media/theme/default/lockscreen.zip out/temp/system/media/theme/default/lockscreen

cd 'out/temp'
rm -r 'META-INF/CERT.RSA'
rm -r 'META-INF/CERT.SF'
rm -r 'META-INF/MANIFEST.MF'
zip -q -r "../../unsigned-miuixperia-v5-neov-$version.zip" 'boot.img' 'data' 'META-INF' 'system'
cp -rf ../../other/extras/anzu/* system
mv -f system/boot.img boot.img
rm -f system/bin/hallon.sh
rm -rf system/etc/user_manual_hallon
rm -rf system/etc/user_manual_haida
rm -rf system/usr/extras
sed -i -e "s/Neo V/Arc S/" system/build.prop
sed -i -e "s/haida/anzu/" system/build.prop
sed -i -e "s/MT11/LT18/" system/build.prop
sed -i -e "s/mt11i/lt18i/" system/build.prop
zip -q -r "../../unsigned-miuixperia-v5-arcs-$version.zip" 'boot.img' 'data' 'META-INF' 'system'
cd ../..
fi
. ../build/envsetup.sh
cd mt11i
rm -rf 'Settings/res/xml'
rm -rf 'Settings/smali'
rmdir AntiSpam Backup BugReport Calculator Calendar CalendarProvider CloudService Contacts ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email FileExplorer MiuiCompass MiuiGallery MiuiVideo MiWallpaper NetworkAssistant2 Notes PackageInstaller PaymentService Provision QuickSearchBox SoundRecorder TelephonyProvider Transfer VpnDialogs Weather WeatherProvider XiaomiServiceFramework YellowPage
make clean
echo Signing rom and ota
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuixperia-v5-neov-$version.zip" "miuixperia-v5-neov-$version.zip"
rm -r "unsigned-miuixperia-v5-neov-$version.zip"
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuixperia-v5-arcs-$version.zip" "miuixperia-v5-arcs-$version.zip"
rm -r "unsigned-miuixperia-v5-arcs-$version.zip"

echo -e "MD5 sums are\n"
md5sum -b "miuixperia-v5-neov-$version.zip"
md5sum -b "miuixperia-v5-arcs-$version.zip"

grep -v 'aapt: warning: string*' 'miui_log.log' >> 'miui_log_xperia.log'
rm miui_log.log
read -p "Done, miuixperia-v5-neov/arcs-$version.zip have been created in root of mt11i directory, copy to sd and flash it!"
