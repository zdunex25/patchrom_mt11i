#
# Makefile for mt11i 
#

# The original zip file, MUST be specified by each product
local-zip-file     := MT11i_4.1.B.0.587.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
#local-out-zip-file := MIUI_mt11i.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SemcCamera3D CustomizedSettings

local-modified-jars := #HTCExtension

local-miui-modified-apps := MiuiHome Mms Settings Phone MiuiGallery Updater ThemeManager #TelephonyProvider MiuiSystemUI

local-miui-removed-apps  := MediaProvider QuickSearchBox LatinIME LBESEC_MIUI NetworkLocation SuperMarket BugReport

# All apps need to be removed from original ZIP file
local-remove-apps   := AdobeFlashPlayer Conversations datatrafficswitch DigitalClockWidget \
	EventStream EventStreamPluginCallLog EventStreamPluginFacebook EventStreamPluginTelephony \
	EventStreamPluginTwitter FBIAppShare FBMediaDiscovery FBSetupwizard FBCalendarSync \
	FBMusicLike FBNotificationPublisher JapaneseIME livewaremanager \
	MagicSmokeWallpapers MediaWidget MusicWidget officesuite PhotoWidget playnowclientarvato \
	POBoxSknPink POBoxSknWood PostViewer retaildemo SemcDeskClock SemcDlna SEMCFacebookProxy \
	SemcVideoEdit StatusSwitch storefront SyncWizard TimescapeRssPlugin TimescapeSpline \
	TimescapeWidget trackid TtsService usersupport VisualizationWallpapers WallpaperPicker \
	WeatherWidget widgetdigitalclock widgetfavouritepeople widgetonoff WikipediaPlugin wisepilot \
	YouTubeKaraokePlugin YouTubePlugin facebook SemcTelephonyProvider SemcContactsProvider \
	LocalContacts SimContacts Phonebook SemcMusic SemcCalendar SemcGallery3D UpdateCenter \
	SEMCSetupWizard PhaseBeam OmaDatasyncService Home Galaxy4 NoiseField SystemUI InfiniteView \
	Gallery2 SemcSettings OemCryptoReceiver Videos chinesetextinput Street \
	antradioservice AppEnabler widgettimer  widgetanalogclock adobereader \
	antstatenotifer PMSserviceTrigger neoreader \
	widgetworldclock  widgetcalendar  \
	SemcPhone enhancedusbux \
	AddWidget CdfInfoAccessor DefaultThemes DrmDialogs FastDormancy \
	HoloSpiralWallpaper LearningClient Protips \
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
#	cp misc/com.google.android.maps.jar $(ZIP_DIR)/system/framework/
#	@echo Add google apks
#	cp misc/apk/* $(ZIP_DIR)/system/app/
	@echo Replace build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/MT11iSettings.apk $(ZIP_DIR)/system/app/MT11iSettings.apk
	rm $(ZIP_DIR)/system/bin/su
	cp other/handle_device_name.sh $(ZIP_DIR)/system/bin/
	
	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation
	
	@echo prepare fixes
	cp other/LBESEC_MIUI.apk $(ZIP_DIR)/system/app/LBESEC_MIUI.apk
	cp other/NetworkLocation.apk $(ZIP_DIR)/system/app/NetworkLocation.apk
	cp other/icons $(ZIP_DIR)/system/media/theme/default/icons
	cp other/587/CustomizedSettings.apk $(ZIP_DIR)/system/app/CustomizedSettings.apk
	cp other/587/SemcCamera3D.apk $(ZIP_DIR)/system/app/SemcCamera3D.apk
	cp other/587/android.policy.jar $(ZIP_DIR)/system/framework/android.policy.jar
	cp other/587/framework.jar $(ZIP_DIR)/system/framework/framework.jar
	cp other/587/framework-res.apk $(ZIP_DIR)/system/framework/framework-res.apk
	cp other/587/services.jar $(ZIP_DIR)/system/framework/services.jar

local-test:
	echo "an example action"
