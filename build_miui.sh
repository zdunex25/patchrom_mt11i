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
cat 'Settings/res/xml/sound_settings.xml' | sed -e "s/android.musicfx/miui.player/g" \
				| sed -e "s/ControlPanelPicker/ui.EqualizerActivity/g" > '../Settings/res/xml/sound_settings.xml'
cat 'Settings/res/xml/device_info_settings.xml' | sed -e 's/android:key=\"kernel_version\" \/>/android:key=\"kernel_version\" \/>\
	<miui.preference.ValuePreference android:title=\"@string\/build_author\" android:key=\"build_author\" \/>/' > '../Settings/res/xml/device_info_settings.xml'
cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/MenuInflater;)V/MenuInflater;)V \
    return-void/' > 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings2.smali'
cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings2.smali' | sed -e 's/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V\
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
#cat 'XiaomiServiceFramework/res/xml/micloud_settings_preference.xml' | sed -e "s/<PreferenceScreen android:title=\"@string\/mili_center\" android:key=\"miliCenterSettings\" \/>/<\!--PreferenceScreen android:title=\"@string\/mili_center\" android:key=\"miliCenterSettings\" \/-->/g" > '../XiaomiServiceFramework/res/xml/micloud_settings_preference.xml'
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
unzip -q out/fullota.zip -d out/temp

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
ota=`date +%Y%m%d-%H%M`
cat 'out/temp/system/build.prop' | sed -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" \
				| sed -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" \
				| sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" \
				| sed -e "s/updater\.time=.*/updater\.time=$ota/g" \
				| sed -e "s/updater\.ver=.*/updater\.ver=$version/g" \
				| sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=mt11i/g" > 'out/temp/system/build2.prop'
echo "" >> 'out/temp/system/build2.prop'
cp 'out/temp/system/build2.prop' 'out/temp/system/build.prop'
rm -f 'out/temp/system/build2.prop'

mv -f 'other/LBESEC_MIUI.apk' 'out/temp/system/app/LBESEC_MIUI.apk'
rm -f 'out/temp/system/etc/weather_city.db'
mkdir -p out/temp/system/usr/device/hallon
cp -r other/extras/hallon out/temp/system/usr/extras/hallon
cp other/extras/hallon.sh out/temp/system/bin/hallon.sh
cp -r other/extras/user_manual_haida out/temp/system/etc/user_manual_haida
#cp other/extras/sound/app/*.apk out/temp/system/app
#cp other/extras/sound/etc/permissions/*.xml out/temp/system/etc/permissions
#cp -f other/extras/sound/etc/*.conf out/temp/system/etc
#cp other/extras/sound/framework/*.jar out/temp/system/framework
#cp -f other/extras/sound/lib/soundfx/*.so out/temp/system/lib/soundfx
#cp -f other/extras/sound/lib/*.so out/temp/system/lib


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


for DIR in out/temp/system/framework/; do
	cd $DIR;
	for APK in *.apk; do
		ZIPCHECK=`../../../../other/zipalign -c -v 4 $APK | grep FAILED | wc -l`;
		if [ $ZIPCHECK == "1" ]; then
			echo "Now aligning: $DIR/$APK" >> ../../../../zipalign_framework.log;
			mkdir ../framework_done
			../../../../other/zipalign -v -f 4 $APK ../framework_done/$APK;
			cp -f -p ../framework_done/$APK $APK;
			rm -rf ../framework_done
		else
			echo "Already aligned: $DIR/$APK" >> ../../../../zipalign_framework.log;
		fi;
	done;
	cd ../../../..
done;


cd 'out/temp'
rm -r 'META-INF/CERT.RSA'
rm -r 'META-INF/CERT.SF'
rm -r 'META-INF/MANIFEST.MF'
zip -q -r "../../unsigned-miuixperia-v5-neov-$version.zip" 'boot.img' 'data' 'META-INF' 'system'
cd ../..
. ../build/envsetup.sh
cd mt11i
rm -f 'Mms/AndroidManifest.xml'
rm -f 'Mms/smali/com/android/mms/data/WorkingMessage.smali'
rm -f 'Mms/smali/com/android/mms/transaction/SmsMessageSender.smali'
rm -f 'Mms/smali/com/android/mms/ui/MessageUtils.smali'
rm -f 'Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali'
rm -f 'Settings/res/xml/device_info_settings.xml'
rm -f 'Settings/res/xml/sound_settings.xml'
rm -f 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali'
rm -f 'BugReport/AndroidManifest.xml'
rm -f 'XiaomiServiceFramework/AndroidManifest.xml'
#rm -f 'XiaomiServiceFramework/res/xml/micloud_settings_preference.xml'
rm -rf 'BugReport'
rm -rf 'Mms/smali/com/android/mms/data'
rm -rf 'Mms/smali/com/android/mms/transaction'
rm -rf 'Mms/smali/com/android/mms/ui'
rm -rf 'Settings/res/xml'
rm -rf 'Settings/smali'
rm -rf 'XiaomiServiceFramework'
make clean
echo Signing rom
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuixperia-v5-neov-$version.zip" "miuixperia-v5-neov-$version.zip"
rm -r "unsigned-miuixperia-v5-neov-$version.zip"
echo MD5sum is
md5sum -b "miuixperia-v5-neov-$version.zip"
read -p "Done, miuixperia-v5-neov-$version.zip and patch have been created in root of mt11i directory, copy to sd and flash it!"
