#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchromv5
. build/envsetup.sh
cd mt11i
mkdir BugReport
mkdir Mms/smali/com/android/mms/data
mkdir Mms/smali/com/android/mms/transaction
mkdir Mms/smali/com/android/mms/ui
mkdir Settings/res/xml
mkdir -p Settings/smali/com/android/settings
mkdir XiaomiServiceFramework
mkdir temp
cd temp
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/Mms.apk'
cat 'Mms/AndroidManifest.xml' | sed -e "s/android:screenOrientation=\"portrait\" //g" \
				| sed -e "s/ android:screenOrientation=\"portrait\"//g" > '../Mms/AndroidManifest.xml'
cat 'Mms/smali/com/android/mms/data/WorkingMessage.smali' | sed -e 's/invoke-static {v3, v2}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {v3}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v3\
\
    invoke-static {v3, v2}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/data/WorkingMessage.smali'
cat 'Mms/smali/com/android/mms/transaction/SmsMessageSender.smali' | sed -e 's/iput-object p3, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;/iput-object p3, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;\
\
    invoke-static {p3}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->textToGSM(Ljava\/lang\/String;)Ljava\/lang\/String;\
\
    move-result-object v2\
\
    iput-object v2, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;/' > '../Mms/smali/com/android/mms/transaction/SmsMessageSender.smali'
cat 'Mms/smali/com/android/mms/ui/MessageUtils.smali' | sed -e 's/invoke-static {p0, v3}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {p0}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v2\
\
    invoke-static {v2, v3}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/ui/MessageUtils.smali'
cat 'Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali' | sed -e 's/invoke-static {v0, v1}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {v0}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v0\
\
    invoke-static {v0, v1}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali'
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/Settings.apk'
cat 'Settings/res/xml/settings_headers.xml' | sed -e "s/<header android:id=\"@id\/manufacturer_settings\">/<header android:title=\"@string\/header_category_xperia\" \/>/g" \
					| sed -e 's/    <intent android:action=\"com.android.settings.MANUFACTURER_APPLICATION_SETTING\" \/>/<header android:icon=\"@drawable\/ic_ringer_volume_settings\" android:title=\"@string\/viper_settings\">\
        <intent android:action="com.android.settings.VIPER\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_osb_settings\" android:title=\"@string\/osb_settings\">\
        <intent android:action="com.android.settings.OSB\" \/>/' > '../Settings/res/xml/settings_headers.xml'
cat 'Settings/res/xml/sound_settings.xml' | sed -e "s/android.musicfx/miui.player/g" \
				| sed -e "s/ControlPanelPicker/ui.EqualizerActivity/g" > '../Settings/res/xml/sound_settings.xml'
cat 'Settings/res/xml/device_info_settings.xml' | sed -e 's/android:key=\"kernel_version\" \/>/android:key=\"kernel_version\" \/>\
	<miui.preference.ValuePreference android:title=\"@string\/build_author\" android:key=\"build_author\" \/>/' > '../Settings/res/xml/device_info_settings.xml'
#cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/MenuInflater;)V/MenuInflater;)V \
#    return-void/' > 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings2.smali'
cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V\
\
    .line 116\
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
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/BugReport.apk'
grep -v '<action android:name="android.intent.action.MAIN" />' 'BugReport/AndroidManifest.xml' >> 'BugReport/AndroidManifest2.xml'
grep -v '<category android:name="android.intent.category.LAUNCHER" />' 'BugReport/AndroidManifest2.xml' >> '../BugReport/AndroidManifest.xml'
'../../tools/apktool' --quiet d -f '../../miui/HDPI/system/app/XiaomiServiceFramework.apk'
grep -v '<action android:name="android.intent.action.MAIN" />' 'XiaomiServiceFramework/AndroidManifest.xml' >> 'XiaomiServiceFramework/AndroidManifest2.xml'
grep -v '<category android:name="android.intent.category.LAUNCHER" />' 'XiaomiServiceFramework/AndroidManifest2.xml' >> '../XiaomiServiceFramework/AndroidManifest.xml'
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
time=`date +%c`
utc=`date +%s`
ota=`date +%Y%m%d-%H%M`
cat 'out/temp/system/build.prop' | sed -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" \
				| sed -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" \
				| sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" \
				| sed -e "s/updater\.time=.*/updater\.time=$ota/g" \
				| sed -e "s/updater\.ver=.*/updater\.ver=$version/g" \
				| sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=mt11i/g" > 'out/temp/system/build2.prop'
cp 'out/temp/system/build2.prop' 'out/temp/system/build.prop'
rm -f 'out/temp/system/build2.prop'
sed -i -e "s/miversion=.*/miversion=\'$version\'/" 'other/prop-ota'
sed -i -e "s/mitime=.*/mitime=\'$time\'/" 'other/prop-ota'
sed -i -e "s/miutc=.*/miutc=\'$utc\'/" 'other/prop-ota'
sed -i -e "s/miota=.*/miota=\'$ota\'/" 'other/prop-ota'

mv -f 'other/LBESEC_MIUI.apk' 'out/temp/system/app/LBESEC_MIUI.apk'
rm -f 'out/temp/system/etc/weather_city.db'
mkdir -p out/temp/system/usr/extras
cp -r other/extras/hallon out/temp/system/usr/extras
cp other/extras/hallon.sh out/temp/system/bin/hallon.sh

for DIR in out/temp/system/app/; do
	cd $DIR;
	for APK in *.apk; do
		ZIPCHECK=`../../../../other/zipalign -c -v 4 $APK | grep FAILED | wc -l`;
		if [ $ZIPCHECK == "1" ]; then
			echo "Now aligning: $DIR/$APK" >> ../../../../zipalign_app.log;
			mkdir ../app_done
			../../../../other/zipalign -v -f 4 $APK ../app_done/$APK;
			cp -f -p ../app_done/$APK $APK;
			rm -rf ../app_done
		else
			echo "Already aligned: $DIR/$APK" >> ../../../../zipalign_app.log;
		fi;
	done;
	cd ../../../..
done;

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
cp -f ../../other/updater-script META-INF/com/google/android/updater-script
cp -f ../../other/prop-ota prop-ota
rm -f system/build.prop
rm -f system/app/AntHalService.apk
rm -f system/app/antradioservice.apk
rm -f system/app/antstatenotifer.apk
rm -f system/app/ApplicationsProvider.apk
rm -f system/app/BackupRestoreConfirmation.apk
rm -f system/app/Camera.apk
rm -f system/app/CertInstaller.apk
rm -f system/app/ChromeBookmarksSyncAdapter.apk
rm -f system/app/DefaultContainerService.apk
rm -f system/app/DrmProvider.apk
rm -f system/app/DSPManager.apk
rm -f system/app/FmRxService.apk
rm -f system/app/GoogleBackupTransport.apk
rm -f system/app/GoogleCalendarSyncAdapter.apk
rm -f system/app/GoogleContactsSyncAdapter.apk
rm -f system/app/GoogleLoginService.apk
rm -f system/app/GooglePartnerSetup.apk
rm -f system/app/GoogleServicesFramework.apk
rm -f system/app/HTMLViewer.apk
rm -f system/app/InputDevices.apk
rm -f system/app/KeyChain.apk
rm -f system/app/LiveWallpapers.apk
rm -f system/app/LiveWallpapersPicker.apk
rm -f system/app/MiuiWeather.apk
rm -f system/app/MusicFX.apk
rm -f system/app/OSB.apk
rm -f system/app/SharedStorageBackup.apk
#rm -f system/app/SPN.apk
rm -f system/app/textinput-tng.apk
rm -f system/app/UserDictionaryProvider.apk
rm -f system/app/VisualizationWallpapers.apk
rm -f system/app/WAPPushManager.apk
rm -rf system/bin
cp -rf ../../../miui/HDPI/system/bin system
rm -rf system/etc
cp -rf ../../../miui/HDPI/system/etc system
rm -rf system/etc/license
rm -f system/etc/weather_city.db
rm -rf system/fonts
rm -f system/framework/am.jar
rm -f system/framework/android.test.runner.jar
rm -f system/framework/apache-xml.jar
rm -f system/framework/bmgr.jar
rm -f system/framework/bouncycastle.jar
rm -f system/framework/bu.jar
rm -f system/framework/com.android.future.usb.accessory.jar
rm -f system/framework/com.android.location.provider.jar
rm -f system/framework/com.dsi.ant.antradio_library.jar
rm -f system/framework/com.sonyericsson.suquashi.jar
rm -f system/framework/com.sonyericsson.uxp.jar
rm -f system/framework/com.sonyericsson.uxpres.jar
rm -f system/framework/content.jar
rm -f system/framework/core.jar
rm -f system/framework/core-junit.jar
rm -f system/framework/ext.jar
rm -f system/framework/fmreceiverif.jar
rm -f system/framework/ime.jar
rm -f system/framework/input.jar
rm -f system/framework/javax.obex.jar
rm -f system/framework/monkey.jar
rm -f system/framework/pm.jar
rm -f system/framework/requestsync.jar
rm -f system/framework/svc.jar
rm -f system/framework/uiautomator.jar
rm -rf system/lib
cp -rf ../../../miui/HDPI/system/lib system
rm -rf system/media/audio
rm -rf system/media/lockscreen
rm -rf system/media/wallpaper
rm -f system/media/*.emd
rm -f system/media/*.zip
rm -rf system/media/theme/miui_mod_icons
rm -f system/media/theme/simple_lockscreen.mtz
rm -rf system/semc
rm -rf system/usr
rm -rf system/xbin
cp -rf ../../../miui/HDPI/system/xbin system
zip -q -r "../../unsigned-miuixperia-v5-ota-to-$version.zip" 'META-INF' 'system' 'prop-ota'
cd ../..
fi
. ../build/envsetup.sh
cd mt11i
rm -f 'Mms/AndroidManifest.xml'
rm -rf 'BugReport'
rm -rf 'Mms/smali/com/android/mms/data'
rm -rf 'Mms/smali/com/android/mms/transaction'
rm -rf 'Mms/smali/com/android/mms/ui'
rm -rf 'Settings/res/xml'
rm -rf 'Settings/smali'
rm -rf 'XiaomiServiceFramework'
make clean
echo Signing rom and ota
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuixperia-v5-neov-$version.zip" "miuixperia-v5-neov-$version.zip"
rm -r "unsigned-miuixperia-v5-neov-$version.zip"
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuixperia-v5-arcs-$version.zip" "miuixperia-v5-arcs-$version.zip"
rm -r "unsigned-miuixperia-v5-arcs-$version.zip"
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuixperia-v5-ota-to-$version.zip" "miuixperia-v5-ota-to-$version.zip"
rm -r "unsigned-miuixperia-v5-ota-to-$version.zip"
echo -e "OTA values are\n"
grep 'miota=' other/prop-ota
echo -e "MD5 sums are\n"
md5sum -b "miuixperia-v5-neov-$version.zip"
md5sum -b "miuixperia-v5-arcs-$version.zip"
md5sum -b "miuixperia-v5-ota-to-$version.zip"
read -p "Done, miuixperia-v5-neov/arcs-$version.zip and OTA have been created in root of mt11i directory, copy to sd and flash it!"
