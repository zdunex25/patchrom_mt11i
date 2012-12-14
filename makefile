#
# Makefile for mt11i 
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
#local-out-zip-file := MIUI_mt11i.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SemcCamera3D CustomizedSettings MT11iSettings MediaProvider

local-modified-jars := #HTCExtension

local-miui-modified-apps := MiuiHome Mms Settings Phone MiuiGallery ThemeManager MiuiSystemUI #TelephonyProvider

local-miui-removed-apps  := MediaProvider LatinIME NetworkLocation SuperMarket BugReport Updater

# All apps need to be removed from original ZIP file
local-remove-apps   := AdobeFlashPlayer Conversations datatrafficswitch DigitalClockWidget \
	EventStream EventStreamPluginCallLog EventStreamPluginFacebook EventStreamPluginTelephony \
	EventStreamPluginTwitter FBIAppShare FBMediaDiscovery FBSetupwizard FBCalendarSync \
	FBMusicLike FBNotificationPublisher JapaneseIME livewaremanager FaceLock \
	MagicSmokeWallpapers MediaWidget MusicWidget officesuite PhotoWidget playnowclientarvato \
	POBoxSknPink POBoxSknWood PostViewer retaildemo SemcDeskClock SemcDlna SEMCFacebookProxy \
	SemcVideoEdit StatusSwitch storefront SyncWizard TimescapeRssPlugin TimescapeSpline \
	TimescapeWidget trackid TtsService usersupport VisualizationWallpapers WallpaperPicker \
	WeatherWidget widgetdigitalclock widgetfavouritepeople widgetonoff WikipediaPlugin wisepilot \
	YouTubeKaraokePlugin YouTubePlugin facebook SemcTelephonyProvider SemcContactsProvider \
	LocalContacts SimContacts Phonebook SemcMusic SemcCalendar SemcGallery3D UpdateCenter \
	SEMCSetupWizard PhaseBeam OmaDatasyncService Home Galaxy4 NoiseField SystemUI InfiniteView \
	Gallery2 SemcSettings OemCryptoReceiver Videos chinesetextinput Street antradioservice AppEnabler \
	widgettimer widgetanalogclock adobereader antstatenotifer PMSserviceTrigger widgetworldclock \
	widgetcalendar SemcPhone enhancedusbux AddWidget CdfInfoAccessor DefaultThemes DrmDialogs \
	FastDormancy HoloSpiralWallpaper LearningClient Protips \
	ReadyToRun SecureClockJava SemcCnapProvider SemcCrashMonitor SemcEmail \
	SemcSnpPlatformUtil SemcSnpVideoPlayer ShutDownAnimation SmartSearch SoundPicker \
	Sync talkback UnsupportedHeadsetNotifier VerifyCertificatesDummyAppApplication \
	VerifyCertificatesDummyAppMedia VerifyCertificatesDummyAppPlatform \
	VerifyCertificatesDummyAppShared Superuser DrmProvider \
	bootinfo usb-mtp-update-wrapper usb-mtp-vendor-extension-service VoipCallLogProvider \
	UseragentProvider PMSservice OmaV1AgentDownloadServices OmaDownload \
	OMAClientProvisioning VpnDialogs CustomizedApplicationInstaller 

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Replace build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	rm -rf $(ZIP_DIR)/system/bin/su
	cp other/handle_device_name.sh $(ZIP_DIR)/system/bin/
	
	@echo update bootanimation
	rm -rf $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation
	
	@echo prepare fixes
	cp other/icons $(ZIP_DIR)/system/media/theme/default/icons
	cp other/LBESEC_MIUI.apk $(ZIP_DIR)/system/app/LBESEC_MIUI.apk
	cp other/MiuiWeather.apk $(ZIP_DIR)/system/app/MiuiWeather.apk
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/*.apk
	cp other/RAMOptimizationFree.apk $(ZIP_DIR)/data/media/preinstall_apps/RAMOptimizationFree.apk
	
	@echo remove gapps
	rm -rf $(ZIP_DIR)/system/app/ChromeBookmarksSyncAdapter.apk
	rm -rf $(ZIP_DIR)/system/app/GenieWidget.apk
	rm -rf $(ZIP_DIR)/system/app/Gmail.apk
	rm -rf $(ZIP_DIR)/system/app/GMS_Maps.apk
	rm -rf $(ZIP_DIR)/system/app/GoogleBackupTransport.apk
	rm -rf $(ZIP_DIR)/system/app/GoogleCalendarSyncAdapter.apk
	rm -rf $(ZIP_DIR)/system/app/GoogleContactsSyncAdapter.apk
	rm -rf $(ZIP_DIR)/system/app/GoogleFeedback.apk
	rm -rf $(ZIP_DIR)/system/app/GoogleLoginService.apk
	rm -rf $(ZIP_DIR)/system/app/GoogleLyricsPlugin.apk
	rm -rf $(ZIP_DIR)/system/app/GooglePartnerSetup.apk
	rm -rf $(ZIP_DIR)/system/app/GoogleQuickSearchBox.apk
	rm -rf $(ZIP_DIR)/system/app/GoogleServicesFramework.apk
	rm -rf $(ZIP_DIR)/system/app/MediaUploader.apk
	rm -rf $(ZIP_DIR)/system/app/NetworkLocation.apk
	rm -rf $(ZIP_DIR)/system/app/OneTimeInitializer.apk
	rm -rf $(ZIP_DIR)/system/app/Phonesky.apk
	rm -rf $(ZIP_DIR)/system/app/SetupWizard.apk
	rm -rf $(ZIP_DIR)/system/app/Talk.apk
	rm -rf $(ZIP_DIR)/system/app/VoiceSearch.apk
	rm -rf $(ZIP_DIR)/system/app/YouTube.apk
	rm -rf $(ZIP_DIR)/system/etc/permissions/com.google.android.maps.xml
	rm -rf $(ZIP_DIR)/system/etc/permissions/com.google.android.media.effects.xml
	rm -rf $(ZIP_DIR)/system/etc/permissions/com.google.widevine.software.drm.xml
	rm -rf $(ZIP_DIR)/system/framework/com.google.android.maps.jar
	rm -rf $(ZIP_DIR)/system/framework/com.google.android.media.effects.jar
	rm -rf $(ZIP_DIR)/system/framework/com.google.widevine.software.drm.jar
	rm -rf $(ZIP_DIR)/system/lib/libfacelock_jni.so
	rm -rf $(ZIP_DIR)/system/lib/libfilterpack_facedetect.so
	rm -rf $(ZIP_DIR)/system/lib/libflint_engine_jni_api.so
	rm -rf $(ZIP_DIR)/system/lib/libfrsdk.so
	rm -rf $(ZIP_DIR)/system/lib/libgcomm_jni.so
	rm -rf $(ZIP_DIR)/system/lib/libpicowrapper.so
	rm -rf $(ZIP_DIR)/system/lib/libspeexwrapper.so
	rm -rf $(ZIP_DIR)/system/lib/libvideochat_jni.so
	rm -rf $(ZIP_DIR)/system/lib/libvideochat_stabilize.so
	rm -rf $(ZIP_DIR)/system/lib/libvoicesearch.so
	
local-test:
	echo "an example action"
