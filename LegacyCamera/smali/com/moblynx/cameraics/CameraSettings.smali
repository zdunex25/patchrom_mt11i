.class public Lcom/moblynx/cameraics/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field public static final CURRENT_LOCAL_VERSION:I = 0x2

.field public static final CURRENT_VERSION:I = 0x5

.field public static final DEFAULT_VIDEO_DURATION:I = 0x0

.field public static final EXPOSURE_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final KEY_AUDIO_CHANNELS:Ljava/lang/String; = "pref_video_audio_channels_key"

.field public static final KEY_AUDIO_QUALITY:Ljava/lang/String; = "pref_video_audio_quality_key"

.field public static final KEY_AUDIO_SOURCE:Ljava/lang/String; = "pref_video_audio_source_key"

.field public static final KEY_CAMERA_FIRST_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_use_hint_shown_key"

.field public static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field public static final KEY_COLOR_EFFECT:Ljava/lang/String; = "pref_camera_coloreffect_key"

.field public static final KEY_EXPOSURE:Ljava/lang/String; = "pref_camera_exposure_key"

.field public static final KEY_FLASH_MODE:Ljava/lang/String; = "pref_camera_flashmode_key"

.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "pref_camera_focusmode_key"

.field public static final KEY_GUIDELINES:Ljava/lang/String; = "pref_camera_guidelines_key"

.field public static final KEY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera_jpegquality_key"

.field public static final KEY_LOCAL_VERSION:Ljava/lang/String; = "pref_local_version_key"

.field public static final KEY_MY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera_myjpegquality_key"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "pref_camera_picturesize_key"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera_recordlocation_key"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "pref_camera_scenemode_key"

.field public static final KEY_SILENT_MODE:Ljava/lang/String; = "pref_camera_silentmode_key"

.field public static final KEY_STORAGE_SOURCE:Ljava/lang/String; = "pref_camera_storagesource_key"

.field public static final KEY_TIMER:Ljava/lang/String; = "pref_camera_timer_key"

.field public static final KEY_VERSION:Ljava/lang/String; = "pref_version_key"

.field public static final KEY_VIDEOCAMERA_FLASH_MODE:Ljava/lang/String; = "pref_camera_video_flashmode_key"

.field public static final KEY_VIDEO_BITRATE:Ljava/lang/String; = "pref_camera_bitrate_key"

.field public static final KEY_VIDEO_EFFECT:Ljava/lang/String; = "pref_video_effect_key"

.field public static final KEY_VIDEO_FIRST_USE_HINT_SHOWN:Ljava/lang/String; = "pref_video_first_use_hint_shown_key"

.field public static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "pref_video_quality_key"

.field public static final KEY_VIDEO_STAB:Ljava/lang/String; = "pref_camera_videostab_key"

.field public static final KEY_VIDEO_TIME_LAPSE_FRAME_INTERVAL:Ljava/lang/String; = "pref_video_time_lapse_frame_interval_key"

.field public static final KEY_VIDEO_VOLUME_KEYS:Ljava/lang/String; = "pref_video_volumekeys_key"

.field public static final KEY_VOLUME_KEYS:Ljava/lang/String; = "pref_camera_volumekeys_key"

.field public static final KEY_WHITE_BALANCE:Ljava/lang/String; = "pref_camera_whitebalance_key"

.field private static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CameraSettings"


# instance fields
.field private final mCameraId:I

.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "activity"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/moblynx/cameraics/CameraSettings;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 123
    iput p3, p0, Lcom/moblynx/cameraics/CameraSettings;->mCameraId:I

    .line 124
    iput-object p4, p0, Lcom/moblynx/cameraics/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 125
    return-void
.end method

.method private buildCameraId(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/IconListPreference;)V
    .locals 8
    .parameter "group"
    .parameter "preference"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 362
    iget-object v6, p0, Lcom/moblynx/cameraics/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v3, v6

    .line 363
    .local v3, numOfCameras:I
    if-ge v3, v7, :cond_0

    .line 364
    invoke-virtual {p2}, Lcom/moblynx/cameraics/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/moblynx/cameraics/CameraSettings;->removePreference(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)Z

    .line 380
    :goto_0
    return-void

    .line 368
    :cond_0
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 369
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/moblynx/cameraics/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v6, v6

    if-lt v1, v6, :cond_2

    .line 379
    :cond_1
    invoke-virtual {p2, v0}, Lcom/moblynx/cameraics/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v6, p0, Lcom/moblynx/cameraics/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v6, v6, v1

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v4, :cond_4

    move v2, v4

    .line 374
    .local v2, index:I
    :goto_2
    aget-object v6, v0, v2

    if-nez v6, :cond_3

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 376
    if-ne v2, v4, :cond_5

    move v6, v5

    :goto_3
    aget-object v6, v0, v6

    if-nez v6, :cond_1

    .line 369
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #index:I
    :cond_4
    move v2, v5

    .line 373
    goto :goto_2

    .restart local v2       #index:I
    :cond_5
    move v6, v4

    .line 376
    goto :goto_3
.end method

.method private buildExposureCompensation(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;)V
    .locals 11
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 337
    iget-object v9, p0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    .line 338
    .local v4, max:I
    iget-object v9, p0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 339
    .local v6, min:I
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    .line 340
    invoke-virtual {p2}, Lcom/moblynx/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/moblynx/cameraics/CameraSettings;->removePreference(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)Z

    .line 358
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v9, p0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v8

    .line 346
    .local v8, step:F
    int-to-float v9, v4

    mul-float/2addr v9, v8

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v5, v9

    .line 347
    .local v5, maxValue:I
    int-to-float v9, v6

    mul-float/2addr v9, v8

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 348
    .local v7, minValue:I
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 349
    .local v1, entries:[Ljava/lang/CharSequence;
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 350
    .local v2, entryValues:[Ljava/lang/CharSequence;
    move v3, v7

    .local v3, i:I
    :goto_1
    if-le v3, v5, :cond_1

    .line 356
    invoke-virtual {p2, v1}, Lcom/moblynx/cameraics/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {p2, v2}, Lcom/moblynx/cameraics/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 351
    :cond_1
    sub-int v9, v5, v3

    int-to-float v10, v3

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, builder:Ljava/lang/StringBuilder;
    if-lez v3, :cond_2

    const/16 v9, 0x2b

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :cond_2
    sub-int v9, v5, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moblynx/cameraics/PreferenceGroup;",
            "Lcom/moblynx/cameraics/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 404
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 405
    :cond_0
    invoke-virtual {p2}, Lcom/moblynx/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/moblynx/cameraics/CameraSettings;->removePreference(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)Z

    .line 416
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p2, p3}, Lcom/moblynx/cameraics/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 410
    invoke-virtual {p2}, Lcom/moblynx/cameraics/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 411
    invoke-virtual {p2}, Lcom/moblynx/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/moblynx/cameraics/CameraSettings;->removePreference(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 415
    :cond_2
    invoke-direct {p0, p2}, Lcom/moblynx/cameraics/CameraSettings;->resetIfInvalid(Lcom/moblynx/cameraics/ListPreference;)V

    goto :goto_0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"
    .parameter "defaultQuality"

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 138
    .local v0, quality:I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const/high16 v1, 0x80

    invoke-static {v1}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getSupportedVideoQuality()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v0, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Lcom/moblynx/cameraics/CameraSettings;->mCameraId:I

    invoke-static {v1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_0
    iget v1, p0, Lcom/moblynx/cameraics/CameraSettings;->mCameraId:I

    invoke-static {v1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 625
    const/high16 v1, 0x80

    invoke-static {v1}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_2
    iget v1, p0, Lcom/moblynx/cameraics/CameraSettings;->mCameraId:I

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 629
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_3
    return-object v0
.end method

.method private initPreference(Lcom/moblynx/cameraics/PreferenceGroup;)V
    .locals 25
    .parameter "group"

    .prologue
    .line 187
    const-string v23, "pref_video_quality_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v18

    .line 188
    .local v18, videoQuality:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v14

    .line 189
    .local v14, timeLapseInterval:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_picturesize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v11

    .line 191
    .local v11, pictureSize:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_storagesource_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v13

    .line 192
    .local v13, storageSource:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_whitebalance_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v22

    .line 193
    .local v22, whiteBalance:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v12

    .line 194
    .local v12, sceneMode:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v8

    .line 195
    .local v8, flashMode:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_focusmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v9

    .line 196
    .local v9, focusMode:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_exposure_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v7

    .line 198
    .local v7, exposure:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_id_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/IconListPreference;

    .line 200
    .local v4, cameraIdPref:Lcom/moblynx/cameraics/IconListPreference;
    const-string v23, "pref_camera_video_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v17

    .line 201
    .local v17, videoFlashMode:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_video_effect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v16

    .line 204
    .local v16, videoEffect:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_coloreffect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v5

    .line 206
    .local v5, colorEffect:Lcom/moblynx/cameraics/ListPreference;
    if-eqz v5, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v23

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v5, v2}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 211
    :cond_0
    if-eqz v13, :cond_1

    invoke-static {}, Landroid/support/custom/NewFeatures;->getExtraStorageSource()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_1

    .line 214
    const/16 v23, 0x0

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 218
    :cond_1
    const-string v23, "pref_video_volumekeys_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v20

    .line 220
    .local v20, videoVolumeKeys:Lcom/moblynx/cameraics/ListPreference;
    if-eqz v20, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v23

    const-string v24, "off"

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v23

    const-string v24, "torch"

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 224
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xe

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 225
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v6, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v23, "2"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v23, "3"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 241
    .end local v6           #entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v23, "pref_camera_videostab_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v19

    .line 244
    .local v19, videoStab:Lcom/moblynx/cameraics/ListPreference;
    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->isVideoStabilizationSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 246
    const/16 v23, 0x0

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 251
    :cond_4
    const-string v23, "pref_camera_guidelines_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v10

    .line 252
    .local v10, guidelines:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_timer_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v15

    .line 253
    .local v15, timer:Lcom/moblynx/cameraics/ListPreference;
    const-string v23, "pref_camera_volumekeys_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v21

    .line 255
    .local v21, volumeKeys:Lcom/moblynx/cameraics/ListPreference;
    sget v23, Lcom/moblynx/cameraics/compatibility/Settings;->SELECTED_MODE:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 258
    if-eqz v10, :cond_5

    .line 260
    const/16 v23, 0x0

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v10, v2}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 263
    :cond_5
    if-eqz v15, :cond_6

    .line 266
    const/16 v23, 0x0

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 269
    :cond_6
    if-eqz v21, :cond_7

    .line 270
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .restart local v6       #entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v23, "2"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    const-string v23, "3"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v23, "4"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v23, "5"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v23, "6"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v6}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 289
    .end local v6           #entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    if-eqz v18, :cond_8

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/moblynx/cameraics/CameraSettings;->getSupportedVideoQuality()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 293
    :cond_8
    if-eqz v11, :cond_9

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v23

    .line 294
    invoke-static/range {v23 .. v23}, Lcom/moblynx/cameraics/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 297
    :cond_9
    if-eqz v22, :cond_a

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v23

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 301
    :cond_a
    if-eqz v12, :cond_b

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v23

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v12, v2}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 305
    :cond_b
    if-eqz v8, :cond_c

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v23

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v8, v2}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 309
    :cond_c
    if-eqz v9, :cond_d

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->getMaxNumFocusAreas(Landroid/hardware/Camera$Parameters;)I

    move-result v23

    if-nez v23, :cond_13

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v23

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 321
    :cond_d
    :goto_0
    if-eqz v17, :cond_e

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v23

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 325
    :cond_e
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/moblynx/cameraics/CameraSettings;->buildExposureCompensation(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;)V

    .line 326
    :cond_f
    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/moblynx/cameraics/CameraSettings;->buildCameraId(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/IconListPreference;)V

    .line 328
    :cond_10
    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/moblynx/cameraics/CameraSettings;->resetIfInvalid(Lcom/moblynx/cameraics/ListPreference;)V

    .line 329
    :cond_11
    if-eqz v16, :cond_12

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/moblynx/cameraics/CameraSettings;->initVideoEffect(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;)V

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/moblynx/cameraics/CameraSettings;->resetIfInvalid(Lcom/moblynx/cameraics/ListPreference;)V

    .line 333
    :cond_12
    return-void

    .line 318
    :cond_13
    invoke-virtual {v9}, Lcom/moblynx/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/moblynx/cameraics/CameraSettings;->removePreference(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private initVideoEffect(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;)V
    .locals 12
    .parameter "group"
    .parameter "videoEffect"

    .prologue
    const v11, 0x100400

    const/16 v10, 0x800

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 636
    invoke-virtual {p2}, Lcom/moblynx/cameraics/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 642
    .local v6, values:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/moblynx/cameraics/EffectsRecorder;->isEffectSupported(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 645
    invoke-static {v11}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 646
    invoke-static {v10}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 647
    :cond_0
    const/16 v9, 0x404

    invoke-static {v9}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 648
    invoke-static {v7}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move v3, v7

    .line 659
    .local v3, goofyFaceSupported:Z
    :goto_0
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/moblynx/cameraics/EffectsRecorder;->isEffectSupported(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 660
    iget-object v9, p0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v9}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 661
    iget-object v9, p0, Lcom/moblynx/cameraics/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v9}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 663
    invoke-static {v11}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 664
    const v9, 0x200400

    invoke-static {v9}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 665
    invoke-static {v10}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 669
    .local v0, backdropperSupported:Z
    :goto_1
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/moblynx/cameraics/EffectsRecorder;->isEffectSupported(I)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v3, :cond_4

    move v2, v7

    .line 671
    .local v2, fxSupported:Z
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v4, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v7, v6

    :goto_3
    if-lt v8, v7, :cond_5

    .line 681
    invoke-direct {p0, p1, p2, v4}, Lcom/moblynx/cameraics/CameraSettings;->filterUnsupportedOptions(Lcom/moblynx/cameraics/PreferenceGroup;Lcom/moblynx/cameraics/ListPreference;Ljava/util/List;)V

    .line 682
    return-void

    .end local v0           #backdropperSupported:Z
    .end local v2           #fxSupported:Z
    .end local v3           #goofyFaceSupported:Z
    .end local v4           #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move v3, v8

    .line 641
    goto :goto_0

    .restart local v3       #goofyFaceSupported:Z
    :cond_3
    move v0, v8

    .line 658
    goto :goto_1

    .restart local v0       #backdropperSupported:Z
    :cond_4
    move v2, v8

    .line 668
    goto :goto_2

    .line 672
    .restart local v2       #fxSupported:Z
    .restart local v4       #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    aget-object v5, v6, v8

    .line 673
    .local v5, value:Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, effectSelection:Ljava/lang/String;
    if-nez v2, :cond_7

    const-string v9, "fx"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 672
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 676
    :cond_7
    if-nez v3, :cond_8

    const-string v9, "goofy_face"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 677
    :cond_8
    if-nez v0, :cond_9

    const-string v9, "backdropper"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 678
    :cond_9
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 154
    const v4, 0x7f090007

    .line 153
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v5, :cond_1

    .line 163
    const-string v3, "CameraSettings"

    const-string v4, "No supported picture size found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_1
    aget-object v0, v4, v3

    .line 155
    .local v0, candidate:Ljava/lang/String;
    invoke-static {v0, v2, p1}, Lcom/moblynx/cameraics/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 157
    invoke-static {p0}, Lcom/moblynx/cameraics/ComboPreferences;->get(Landroid/content/Context;)Lcom/moblynx/cameraics/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/moblynx/cameraics/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 158
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_picturesize_key"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 153
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 9
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 540
    const-string v4, "pref_video_effect_key"

    const-string v5, "none"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, effectSelection:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 579
    :cond_0
    :goto_0
    return-object v0

    .line 544
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 546
    .local v2, separatorIndex:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, effectParameter:Ljava/lang/String;
    const-string v4, "goofy_face"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 548
    const-string v4, "squeeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 549
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_2
    const-string v4, "big_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 551
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_3
    const-string v4, "big_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 553
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_4
    const-string v4, "small_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 555
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_5
    const-string v4, "big_nose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 557
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_6
    const-string v4, "small_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 559
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_7
    const-string v4, "backdropper"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 568
    const-string v4, "fx"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 569
    const-string v4, "pencil"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 570
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 571
    :cond_8
    const-string v4, "lomo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 572
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 573
    :cond_9
    const-string v4, "documentary"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 574
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 578
    :cond_a
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid effect selection: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 579
    goto/16 :goto_0
.end method

.method public static readEffectType(Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 523
    const-string v2, "pref_video_effect_key"

    const-string v3, "none"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, effectSelection:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    :goto_0
    return v1

    .line 526
    :cond_0
    const-string v2, "goofy_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    const/4 v1, 0x1

    goto :goto_0

    .line 528
    :cond_1
    const-string v2, "backdropper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    const/4 v1, 0x2

    goto :goto_0

    .line 532
    :cond_2
    const-string v2, "fx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    const/4 v1, 0x3

    goto :goto_0

    .line 535
    :cond_3
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid effect selection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readExposure(Lcom/moblynx/cameraics/ComboPreferences;)I
    .locals 5
    .parameter "preferences"

    .prologue
    .line 511
    .line 512
    const-string v2, "pref_camera_exposure_key"

    .line 513
    const-string v3, "0"

    .line 511
    invoke-virtual {p0, v2, v3}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, exposure:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 519
    :goto_0
    return v2

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid exposure: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 500
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static removePreference(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 383
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/moblynx/cameraics/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 396
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 384
    :cond_0
    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->get(I)Lcom/moblynx/cameraics/CameraPreference;

    move-result-object v0

    .line 385
    .local v0, child:Lcom/moblynx/cameraics/CameraPreference;
    instance-of v3, v0, Lcom/moblynx/cameraics/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 386
    check-cast v3, Lcom/moblynx/cameraics/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/moblynx/cameraics/CameraSettings;->removePreference(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 387
    goto :goto_1

    .line 390
    :cond_1
    instance-of v3, v0, Lcom/moblynx/cameraics/ListPreference;

    if-eqz v3, :cond_2

    .line 391
    check-cast v0, Lcom/moblynx/cameraics/ListPreference;

    .end local v0           #child:Lcom/moblynx/cameraics/CameraPreference;
    invoke-virtual {v0}, Lcom/moblynx/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 393
    goto :goto_1

    .line 383
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static removePreferenceFromScreen(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/moblynx/cameraics/CameraSettings;->removePreference(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)Z

    .line 169
    return-void
.end method

.method private resetIfInvalid(Lcom/moblynx/cameraics/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/moblynx/cameraics/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/moblynx/cameraics/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 422
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/moblynx/cameraics/ListPreference;->setValueIndex(I)V

    .line 424
    :cond_0
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/moblynx/cameraics/ComboPreferences;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"

    .prologue
    const/4 v5, -0x1

    .line 585
    invoke-static {p1}, Lcom/moblynx/cameraics/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 588
    .local v1, currentCameraId:I
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moblynx/cameraics/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 589
    .local v0, backCameraId:I
    if-eq v0, v5, :cond_0

    .line 590
    invoke-virtual {p1, p0, v0}, Lcom/moblynx/cameraics/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 591
    invoke-virtual {p1}, Lcom/moblynx/cameraics/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 592
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 595
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moblynx/cameraics/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 596
    .local v3, frontCameraId:I
    if-eq v3, v5, :cond_1

    .line 597
    invoke-virtual {p1, p0, v3}, Lcom/moblynx/cameraics/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 598
    invoke-virtual {p1}, Lcom/moblynx/cameraics/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 599
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 600
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/moblynx/cameraics/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 607
    invoke-virtual {p1}, Lcom/moblynx/cameraics/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/moblynx/cameraics/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 608
    invoke-virtual {p1}, Lcom/moblynx/cameraics/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/moblynx/cameraics/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 613
    invoke-static {p0, p2}, Lcom/moblynx/cameraics/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 614
    invoke-static {p1, v1}, Lcom/moblynx/cameraics/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 615
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v4, 0x0

    .line 173
    const/16 v5, 0x78

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 174
    .local v1, index:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v4

    .line 175
    :cond_1
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, width:I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 178
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v3, :cond_2

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 179
    invoke-virtual {p2, v3, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 180
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    return-object v0

    .line 428
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 429
    .local v1, size:Landroid/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 456
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 460
    .local v3, version:I
    :goto_0
    if-ne v3, v7, :cond_0

    .line 497
    :goto_1
    return-void

    .line 457
    .end local v3           #version:I
    :catch_0
    move-exception v1

    .line 458
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #version:I
    goto :goto_0

    .line 462
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 463
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 466
    const/4 v3, 0x1

    .line 468
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 470
    const-string v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 472
    const-string v2, "normal"

    .line 478
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    const/4 v3, 0x2

    .line 481
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 482
    const-string v5, "pref_camera_recordlocation_key"

    .line 483
    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 484
    const-string v4, "on"

    .line 482
    :goto_3
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    const/4 v3, 0x3

    .line 488
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 491
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 492
    const-string v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 495
    :cond_4
    const-string v4, "pref_version_key"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 473
    .restart local v2       #quality:Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 474
    const-string v2, "fine"

    .line 475
    goto :goto_2

    .line 476
    :cond_6
    const-string v2, "superfine"

    goto :goto_2

    .line 485
    .end local v2           #quality:Ljava/lang/String;
    :cond_7
    const-string v4, "none"

    goto :goto_3
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x2

    .line 437
    :try_start_0
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 441
    .local v2, version:I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 451
    :goto_1
    return-void

    .line 438
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 439
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #version:I
    goto :goto_0

    .line 443
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 444
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 447
    const-string v3, "pref_video_quality_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 449
    :cond_1
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 505
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 506
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 508
    return-void
.end method


# virtual methods
.method public getPreferenceGroup(I)Lcom/moblynx/cameraics/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 128
    new-instance v1, Lcom/moblynx/cameraics/PreferenceInflater;

    iget-object v2, p0, Lcom/moblynx/cameraics/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/moblynx/cameraics/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, inflater:Lcom/moblynx/cameraics/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/moblynx/cameraics/PreferenceInflater;->inflate(I)Lcom/moblynx/cameraics/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/moblynx/cameraics/PreferenceGroup;

    .line 131
    .local v0, group:Lcom/moblynx/cameraics/PreferenceGroup;
    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/CameraSettings;->initPreference(Lcom/moblynx/cameraics/PreferenceGroup;)V

    .line 132
    return-object v0
.end method
