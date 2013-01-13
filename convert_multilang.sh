#!/bin/bash
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd other/multilang
echo Extracting languages...
unzip miuiandroid_lang_LT18i.zip -d temp

echo Removing usless apps...
rm 'temp/META-INF/CERT.RSA'
rm 'temp/META-INF/CERT.SF'
rm 'temp/META-INF/MANIFEST.MF'
rm 'temp/system/app/AccessoryKeyDispatcher.apk'
rm 'temp/system/app/AirkanPhoneService.apk'
rm 'temp/system/app/AntHalService.apk'
rm 'temp/system/app/AudioEffectService.apk'
rm 'temp/system/app/BugReport.apk'
rm 'temp/system/app/CameraExtensionPermission.apk'
rm 'temp/system/app/ChromeBookmarksSyncAdapter.apk'
rm 'temp/system/app/ContactsImport.apk'
rm 'temp/system/app/CredentialManagerService.apk'
rm 'temp/system/app/CustomizationProvider.apk'
rm 'temp/system/app/CustomizedSettings.apk'
rm 'temp/system/app/DataHubProvider.apk'
rm 'temp/system/app/DefaultCapabilities.apk'
rm 'temp/system/app/DefaultContainerService.apk'
rm 'temp/system/app/FmRxService.apk'
rm 'temp/system/app/GenericApplicationInstaller.apk'
rm 'temp/system/app/GoogleBackupTransport.apk'
rm 'temp/system/app/GoogleCalendarSyncAdapter.apk'
rm 'temp/system/app/GoogleContactsSyncAdapter.apk'
rm 'temp/system/app/GoogleLoginService.apk'
rm 'temp/system/app/GooglePartnerSetup.apk'
rm 'temp/system/app/GoogleServicesFramework.apk'
rm 'temp/system/app/HTMLViewer.apk'
rm 'temp/system/app/KeyChain.apk'
rm 'temp/system/app/LatinImeGoogle.apk'
rm 'temp/system/app/LiveWallpapers.apk'
rm 'temp/system/app/LiveWallpapersPicker.apk'
rm 'temp/system/app/MediaProvider.apk'
rm 'temp/system/app/MIUIStats.apk'
rm 'temp/system/app/NetworkLocation.apk'
rm 'temp/system/app/PicoTts.apk'
rm 'temp/system/app/Provision.apk'
rm 'temp/system/app/qcsemcservice.apk'
rm 'temp/system/app/QuickSearchBox.apk'
rm 'temp/system/app/Radio.apk'
rm 'temp/system/app/SemcCamera3D.apk'
rm 'temp/system/app/SemcCameraUI.apk'
rm 'temp/system/app/SemcHdmiControlService.apk'
rm 'temp/system/app/ServiceMenu.apk'
rm 'temp/system/app/SettingsProvider.apk'
rm 'temp/system/app/Stk.apk'
rm 'temp/system/app/TetherEntitlementCheck.apk'
rm 'temp/system/app/Updater.apk'
rm 'temp/system/app/UserDictionaryProvider.apk'
rm 'temp/system/app/VpnDialogs.apk'
rm 'temp/system/app/WapiCustomization.apk'
rm 'temp/system/app/WapPush.apk'
rm 'temp/system/framework/android.policy.jar'
rm 'temp/system/framework/SemcGenericUxpRes.apk'
mv 'temp/system/app/Lt18iSettings.apk' 'temp/system/app/MT11iSettings.apk'
cp '../../stockrom/META-INF/com/android/metadata' 'temp/META-INF/com/android'

echo "show_progress(0.500000, 0);" > 'temp/META-INF/com/google/android/updater-script'
echo "ui_print(\"Lang Pack for MIUI XPERIA\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "ui_print(\"device: MT11i/MT15i\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "mount(\"yaffs2\", \"MTD\", \"system\",\"/system\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "package_extract_dir(\"system\", \"/system\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "set_perm_recursive(0, 0, 0755, 0644, \"/system/app\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "set_perm_recursive(0, 0, 0755, 0644, \"/system/framework\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "mount(\"yaffs2\", \"MTD\", \"userdata\", \"/data\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "package_extract_dir(\"data\", \"/data\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "set_perm_recursive(1000, 1000, 0755, 0644, \"data/preinstall_apps\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "delete_recursive(\"/data/dalvik-cache\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "unmount(\"/data\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "unmount(\"/system\");" >> 'temp/META-INF/com/google/android/updater-script'
echo "" >> 'temp/META-INF/com/google/android/updater-script'

echo Decompiling various apps...
cd temp
'../../../../tools/apktool' d -f 'system/app/MiuiHome.apk'
'../../../../tools/apktool' d -f 'system/app/MiuiSystemUI.apk'
'../../../../tools/apktool' d -f 'system/app/Mms.apk'
'../../../../tools/apktool' d -f 'system/app/MT11iSettings.apk'
'../../../../tools/apktool' d -f 'system/app/Settings.apk'
cd ..

echo Applying changes...
cp -r '../../MiuiHome/res/xml' '../../other/multilang/temp/MiuiHome/res'
cp -r '../../MiuiSystemUI/res/drawable-hdpi' '../../other/multilang/temp/MiuiSystemUI/res'
cp '../../Mms/AndroidManifest.xml' '../../other/multilang/temp/Mms'
cp -r '../../Mms/smali/com/android/mms' '../../other/multilang/temp/Mms/smali/com/android'
cp '../../MT11iSettings/res/values/strings.xml' '../../other/multilang/temp/MT11iSettings/res/values'
cp -r '../../Settings/res/drawable-en-hdpi' '../../other/multilang/temp/Settings/res'
cp '../../Settings/res/drawable-en-hdpi/miui_logo.9.png' '../../other/multilang/temp/Settings/res/drawable-pl-hdpi'
cp -r '../../Settings/res/drawable-hdpi' '../../other/multilang/temp/Settings/res'
cp -r '../../Settings/smali/com/android/settings' '../../other/multilang/temp/Settings/smali/com/android'

echo Compiling various apps...
'../../../tools/apktool' b -f 'temp/MiuiHome' 'temp/unsigned/uMiuiHome.apk'
'../../../tools/apktool' b -f 'temp/MiuiSystemUI' 'temp/unsigned/uMiuiSystemUI.apk'
'../../../tools/apktool' b -f 'temp/Mms' 'temp/unsigned/uMms.apk'
'../../../tools/apktool' b -f 'temp/MT11iSettings' 'temp/unsigned/uMT11iSettings.apk'
'../../../tools/apktool' b -f 'temp/Settings' 'temp/unsigned/uSettings.apk'

echo Signing various apps...
java -jar '../signapk.jar' '../testkey.x509.pem' '../testkey.pk8' "temp/unsigned/uMiuiHome.apk" "temp/system/app/MiuiHome.apk"
java -jar '../signapk.jar' '../testkey.x509.pem' '../testkey.pk8' "temp/unsigned/uMiuiSystemUI.apk" "temp/system/app/MiuiSystemUI.apk"
java -jar '../signapk.jar' '../testkey.x509.pem' '../testkey.pk8' "temp/unsigned/uMms.apk" "temp/system/app/Mms.apk"
java -jar '../signapk.jar' '../testkey.x509.pem' '../testkey.pk8' "temp/unsigned/uMT11iSettings.apk" "temp/system/app/MT11iSettings.apk"
java -jar '../signapk.jar' '../testkey.x509.pem' '../testkey.pk8' "temp/unsigned/uSettings.apk" "temp/system/app/Settings.apk"

echo Preparing flashable zip...
cd temp
zip -r "../../../unsigned-ml-miuixperia-neov.zip" 'data' 'META-INF' 'system'
java -jar '../../signapk.jar' '../../testkey.x509.pem' '../../testkey.pk8' "../../../unsigned-ml-miuixperia-neov.zip" "../../../ml-miuixperia-neov.zip"
rm "../../../unsigned-ml-miuixperia-neov.zip"
cd ..
rm -r "temp"

read -p "Done, press ENTER!"
