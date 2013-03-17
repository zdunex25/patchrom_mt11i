.class public Lcom/moblynx/cameraics/VideoCamera;
.super Lcom/moblynx/cameraics/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/moblynx/cameraics/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/moblynx/cameraics/ModePicker$OnModeChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;
.implements Lcom/google/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;,
        Lcom/moblynx/cameraics/VideoCamera$MainHandler;,
        Lcom/moblynx/cameraics/VideoCamera$MyBroadcastReceiver;,
        Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;,
        Lcom/moblynx/cameraics/VideoCamera$PopupGestureListener;,
        Lcom/moblynx/cameraics/VideoCamera$ZoomChangeListener;,
        Lcom/moblynx/cameraics/VideoCamera$ZoomListener;
    }
.end annotation


# static fields
.field public static final BACKGROUND_URI_GALLERY_EXTRA:Ljava/lang/String; = "background_uri_gallery"

.field private static final CHECK_DISPLAY_ROTATION:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final EFFECT_BG_FROM_GALLERY:Ljava/lang/String; = "gallery"

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final RESET_EFFECT_EXTRA:Ljava/lang/String; = "reset_effect"

.field private static final RESTART_SOUND:I = 0x9

.field private static final RESTART_STARTPREVIEW:I = 0x8

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SHOW_TAP_TO_SNAPSHOT_TOAST:I = 0x7

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x1f4L

.field public static final STEP:I = 0xa

.field private static final SWITCH_CAMERA:Z = true

.field private static final SWITCH_VIDEO:Z = false

.field private static final TAG:Ljava/lang/String; = "videocamera"

.field private static final TIME_LAPSE_VIDEO_QUALITY:[I = null

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final VIDEO_QUALITY:[I = null

.field private static final ZOOM_START:I = 0x1

.field private static final ZOOM_STOPPED:I = 0x0

.field private static final ZOOM_STOPPING:I = 0x2


# instance fields
.field private MAX_BITRATE:I

.field private adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

.field private guideLinesLayout:Landroid/widget/LinearLayout;

.field private inMobiRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

.field private initialAudioBitRate:I

.field private initialAudioChannels:I

.field private initialAudioQuality:I

.field private initialVideoBitRate:I

.field private isInSilentMode:Z

.field private mBackCameraId:I

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/moblynx/cameraics/ui/RotateLayout;

.field private mCameraDisabled:Z

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

.field private final mErrorCallback:Lcom/moblynx/cameraics/CameraErrorCallback;

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

.field private mIsVideoCaptureIntent:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLocationManager:Lcom/moblynx/cameraics/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mModePicker:Lcom/moblynx/cameraics/ModePicker;

.field private mNoShareToast:Landroid/widget/Toast;

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationCompensationAtRecordStart:I

.field private mOrientationListener:Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPausing:Z

.field private mPopupGestureDetector:Landroid/view/GestureDetector;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

.field private mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;

.field private mPreviewPanel:Landroid/view/View;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/moblynx/cameraics/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mResetEffect:Z

.field private mReviewCancelButton:Lcom/moblynx/cameraics/ui/Rotatable;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/moblynx/cameraics/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/moblynx/cameraics/ui/Rotatable;

.field private mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

.field private mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

.field private mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

.field private mSmoothZoomSupported:Z

.field private mSnapshotInProgress:Z

.field private mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

.field private mStorageSpace:J

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetZoomValue:I

.field private mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

.field private mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

.field private final mZoomListener:Lcom/moblynx/cameraics/VideoCamera$ZoomListener;

.field private mZoomMax:I

.field private mZoomState:I

.field private mZoomValue:I

.field private promoRotable:Lcom/moblynx/cameraics/ui/Rotatable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 169
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/moblynx/cameraics/VideoCamera;->TIME_LAPSE_VIDEO_QUALITY:[I

    .line 179
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/moblynx/cameraics/VideoCamera;->VIDEO_QUALITY:[I

    .line 3293
    return-void

    .line 169
    :array_0
    .array-data 0x4
        0xeet 0x3t 0x0t 0x0t
        0xedt 0x3t 0x0t 0x0t
        0xect 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xeft 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data

    .line 179
    :array_1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/moblynx/cameraics/ActivityBase;-><init>()V

    .line 134
    const v0, 0x3938700

    iput v0, p0, Lcom/moblynx/cameraics/VideoCamera;->MAX_BITRATE:I

    .line 195
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mSnapshotInProgress:Z

    .line 199
    new-instance v0, Lcom/moblynx/cameraics/CameraErrorCallback;

    invoke-direct {v0}, Lcom/moblynx/cameraics/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mErrorCallback:Lcom/moblynx/cameraics/CameraErrorCallback;

    .line 206
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 237
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mOpenCameraFail:Z

    .line 238
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDisabled:Z

    .line 246
    iput v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    .line 247
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 248
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mResetEffect:Z

    .line 254
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    .line 256
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 276
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    .line 278
    iput v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 284
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    .line 285
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewing:Z

    .line 294
    new-instance v0, Lcom/moblynx/cameraics/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/moblynx/cameraics/VideoCamera$MainHandler;-><init>(Lcom/moblynx/cameraics/VideoCamera;Lcom/moblynx/cameraics/VideoCamera$MainHandler;)V

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    .line 310
    iput v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    .line 318
    iput v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    .line 319
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mSmoothZoomSupported:Z

    .line 324
    new-instance v0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;

    invoke-direct {v0, p0, v2}, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;-><init>(Lcom/moblynx/cameraics/VideoCamera;Lcom/moblynx/cameraics/VideoCamera$ZoomListener;)V

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomListener:Lcom/moblynx/cameraics/VideoCamera$ZoomListener;

    .line 397
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/moblynx/cameraics/VideoCamera;)Lcom/moblynx/cameraics/ShutterButton;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2465
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$10(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$11(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2326
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$12(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 307
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$13(Lcom/moblynx/cameraics/VideoCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    iput p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    return-void
.end method

.method static synthetic access$14(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 310
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$15(Lcom/moblynx/cameraics/VideoCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    return-void
.end method

.method static synthetic access$16(Lcom/moblynx/cameraics/VideoCamera;)Z
    .locals 1
    .parameter

    .prologue
    .line 2848
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/moblynx/cameraics/VideoCamera;)Lcom/moblynx/cameraics/EffectsRecorder;
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$18(Lcom/moblynx/cameraics/VideoCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$19(Lcom/moblynx/cameraics/VideoCamera;)Lcom/moblynx/cameraics/ui/IndicatorControlContainer;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 288
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$20(Lcom/moblynx/cameraics/VideoCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3083
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$21(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 321
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$22(Lcom/moblynx/cameraics/VideoCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mTargetZoomValue:I

    return-void
.end method

.method static synthetic access$23(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 318
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    return v0
.end method

.method static synthetic access$24(Lcom/moblynx/cameraics/VideoCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    iput p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    return-void
.end method

.method static synthetic access$25(Lcom/moblynx/cameraics/VideoCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    iput p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    return-void
.end method

.method static synthetic access$26(Lcom/moblynx/cameraics/VideoCamera;)Lcom/moblynx/cameraics/ui/ZoomControl;
    .locals 1
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    return-object v0
.end method

.method static synthetic access$27(Lcom/moblynx/cameraics/VideoCamera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$28(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 322
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$29(Lcom/moblynx/cameraics/VideoCamera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mSnapshotInProgress:Z

    return-void
.end method

.method static synthetic access$3(Lcom/moblynx/cameraics/VideoCamera;)Z
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$30(Lcom/moblynx/cameraics/VideoCamera;[BLandroid/location/Location;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3182
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/VideoCamera;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$31(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 299
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$32(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$33(Lcom/moblynx/cameraics/VideoCamera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mOpenCameraFail:Z

    return-void
.end method

.method static synthetic access$34(Lcom/moblynx/cameraics/VideoCamera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDisabled:Z

    return-void
.end method

.method static synthetic access$35(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->showStorageHint()V

    return-void
.end method

.method static synthetic access$36(Lcom/moblynx/cameraics/VideoCamera;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2710
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$37(Lcom/moblynx/cameraics/VideoCamera;)Lcom/moblynx/cameraics/ComboPreferences;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$38(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 300
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mFrontCameraId:I

    return v0
.end method

.method static synthetic access$39(Lcom/moblynx/cameraics/VideoCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 301
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mBackCameraId:I

    return v0
.end method

.method static synthetic access$4(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1224
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$40(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2831
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$5(Lcom/moblynx/cameraics/VideoCamera;)J
    .locals 2
    .parameter

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/moblynx/cameraics/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 3242
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$8(Lcom/moblynx/cameraics/VideoCamera;)Lcom/moblynx/cameraics/ui/SharePopup;
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    return-object v0
.end method

.method static synthetic access$9(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2402
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateThumbnailButton()V

    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 2092
    const/4 v0, 0x0

    new-instance v1, Lcom/moblynx/cameraics/VideoCamera$3;

    invoke-direct {v1, p0}, Lcom/moblynx/cameraics/VideoCamera$3;-><init>(Lcom/moblynx/cameraics/VideoCamera;)V

    invoke-static {p1, v0, v1}, Lcom/moblynx/cameraics/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 2097
    const/4 v0, 0x2

    new-instance v1, Lcom/moblynx/cameraics/VideoCamera$4;

    invoke-direct {v1, p0}, Lcom/moblynx/cameraics/VideoCamera$4;-><init>(Lcom/moblynx/cameraics/VideoCamera;)V

    invoke-static {p1, v0, v1}, Lcom/moblynx/cameraics/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 2103
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2104
    const v0, 0x7f08007d

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2105
    new-instance v1, Lcom/moblynx/cameraics/VideoCamera$5;

    invoke-direct {v1, p0}, Lcom/moblynx/cameraics/VideoCamera$5;-><init>(Lcom/moblynx/cameraics/VideoCamera;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2113
    const v1, 0x1080037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2115
    :cond_0
    return-void
.end method

.method private addVideoToMediaStore()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2028
    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v5, :cond_2

    .line 2029
    const-string v5, "content://media/external/video/media"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2030
    .local v4, videoTable:Landroid/net/Uri;
    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "_size"

    .line 2031
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2030
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2032
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingStartTime:J

    sub-long v1, v5, v7

    .line 2033
    .local v1, duration:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_3

    .line 2034
    iget-boolean v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_0

    .line 2035
    invoke-direct {p0, v1, v2}, Lcom/moblynx/cameraics/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v1

    .line 2037
    :cond_0
    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2042
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 2043
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2042
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2046
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2047
    .local v0, currentapiVersion:I
    const/16 v5, 0xe

    if-lt v0, v5, :cond_1

    .line 2049
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.action.NEW_VIDEO"

    .line 2050
    iget-object v7, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2049
    invoke-virtual {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    :cond_1
    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Current video URI: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    .end local v0           #currentapiVersion:I
    .end local v1           #duration:J
    .end local v4           #videoTable:Landroid/net/Uri;
    :cond_2
    :goto_1
    iput-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2068
    return-void

    .line 2039
    .restart local v1       #duration:J
    .restart local v4       #videoTable:Landroid/net/Uri;
    :cond_3
    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Video duration <= 0 : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2058
    :catch_0
    move-exception v3

    .line 2061
    .local v3, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2062
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2064
    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Current video URI: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2063
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 2064
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Current video URI: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    throw v5
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2953
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->readVideoPreferences()V

    .line 2954
    iget-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->showTimeLapseUI(Z)V

    .line 2955
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2956
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    .line 2957
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2961
    :cond_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2967
    :cond_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->startPreview()V

    .line 2968
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1610
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1611
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1613
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty video file deleted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1617
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1266
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1268
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :goto_0
    return-void

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1272
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/EffectsRecorder;->release()V

    .line 1274
    :cond_1
    iput v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    .line 1275
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moblynx/cameraics/CameraHolder;->release()V

    .line 1276
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1277
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1278
    iput-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1279
    iput-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewing:Z

    .line 1280
    iput-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3232
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3234
    :try_start_0
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3238
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3240
    :cond_0
    return-void

    .line 3235
    :catch_0
    move-exception v0

    .line 3236
    .local v0, e:Ljava/io/IOException;
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseCameraControls()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const/4 v0, 0x1

    .line 627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 3225
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3226
    const-string v0, ".mp4"

    .line 3228
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 3218
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3219
    const-string v0, "video/mp4"

    .line 3221
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 422
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 423
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 424
    const v2, 0x7f0800c0

    invoke-virtual {p0, v2}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 426
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2072
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2074
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2075
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2077
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2080
    :cond_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateAndShowStorageHint()V

    .line 2081
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 2084
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting video "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2086
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2087
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1597
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1599
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1600
    const/4 v0, -0x1

    .line 1601
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1605
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->setResultEx(ILandroid/content/Intent;)V

    .line 1606
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->finish()V

    .line 1607
    return-void

    .line 1603
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2849
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->setEnabled(Z)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ModePicker;->setEnabled(Z)V

    .line 635
    :cond_1
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/moblynx/cameraics/PreferenceGroup;)Lcom/moblynx/cameraics/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 2119
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2122
    const-string v1, "pref_video_quality_key"

    .line 2121
    invoke-static {p1, v1}, Lcom/moblynx/cameraics/CameraSettings;->removePreferenceFromScreen(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)V

    .line 2125
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2127
    const-string v1, "pref_video_quality_key"

    .line 2126
    invoke-static {p1, v1}, Lcom/moblynx/cameraics/CameraSettings;->removePreferenceFromScreen(Lcom/moblynx/cameraics/PreferenceGroup;Ljava/lang/String;)V

    .line 2129
    :cond_1
    return-object p1
.end method

.method private finishRecorderAndCloseCamera()V
    .locals 1

    .prologue
    .line 1286
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsDisplayResult:Z

    .line 1288
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 1289
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->stopVideoRecording()V

    .line 1290
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->showAlert()V

    .line 1298
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->closeCamera()V

    .line 1299
    return-void

    .line 1292
    :cond_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->stopVideoRecording()V

    .line 1293
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->getThumbnail()V

    goto :goto_0

    .line 1296
    :cond_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->stopVideoRecording()V

    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 10
    .parameter "outputFileFormat"

    .prologue
    .line 2003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2004
    .local v0, dateTaken:J
    invoke-direct {p0, v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v5

    .line 2006
    .local v5, title:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2007
    .local v2, filename:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 2008
    .local v4, mime:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v7}, Lcom/moblynx/cameraics/Storage;->getSelectedDirectory(Lcom/moblynx/cameraics/ComboPreferences;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2010
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2011
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2014
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "mime_type"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_data"

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "resolution"

    .line 2017
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2018
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2017
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2016
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mLocationManager:Lcom/moblynx/cameraics/LocationManager;

    invoke-virtual {v6}, Lcom/moblynx/cameraics/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 2020
    .local v3, loc:Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 2021
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2022
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2024
    :cond_0
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "New video filename: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 10

    .prologue
    .line 1084
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1085
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1086
    :cond_0
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewWidth:I

    .line 1087
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewHeight:I

    .line 1120
    :cond_1
    :goto_0
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mDesiredPreviewWidth="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1121
    const-string v8, ". mDesiredPreviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1120
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1089
    :cond_2
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 1090
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1093
    .local v2, preferred:Landroid/hardware/Camera$Size;
    if-nez v2, :cond_3

    .line 1095
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #preferred:Landroid/hardware/Camera$Size;
    check-cast v2, Landroid/hardware/Camera$Size;

    .line 1098
    .restart local v2       #preferred:Landroid/hardware/Camera$Size;
    :cond_3
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 1099
    .local v3, product:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1101
    .local v0, it:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1108
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v6, v6

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 1107
    invoke-static {p0, v5, v6, v7}, Lcom/moblynx/cameraics/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1109
    .local v1, optimalSize:Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewWidth:I

    .line 1110
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewHeight:I

    .line 1113
    const v6, 0x100400

    invoke-static {v6}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1115
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewWidth:I

    .line 1116
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 1102
    .end local v1           #optimalSize:Landroid/hardware/Camera$Size;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1103
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_4

    .line 1104
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private getThumbnail()V
    .locals 4

    .prologue
    .line 2267
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2268
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2269
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getWidth()I

    move-result v2

    .line 2268
    invoke-static {v1, v2}, Lcom/moblynx/cameraics/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2270
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2271
    new-instance v1, Lcom/moblynx/cameraics/Thumbnail;

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/moblynx/cameraics/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 2272
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/moblynx/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    .line 2277
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2461
    long-to-double v2, p1

    iget v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2462
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private gotoGallery()V
    .locals 0

    .prologue
    .line 1575
    invoke-static {p0}, Lcom/moblynx/cameraics/MenuHelper;->gotoCameraVideoGallery(Landroid/app/Activity;)V

    .line 1576
    return-void
.end method

.method private hideAlert()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2310
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2311
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-virtual {v2, v5}, Lcom/moblynx/cameraics/ShutterButton;->setEnabled(Z)V

    .line 2312
    invoke-direct {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->enableCameraControls(Z)V

    .line 2314
    const/4 v2, 0x3

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 2315
    .local v1, pickIds:[I
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 2318
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-static {v2}, Lcom/moblynx/cameraics/Util;->fadeIn(Landroid/view/View;)V

    .line 2319
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-static {v2}, Lcom/moblynx/cameraics/Util;->fadeIn(Landroid/view/View;)V

    .line 2321
    iget-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_0

    .line 2322
    invoke-direct {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->showTimeLapseUI(Z)V

    .line 2324
    :cond_0
    return-void

    .line 2315
    :cond_1
    aget v0, v1, v2

    .line 2316
    .local v0, id:I
    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/moblynx/cameraics/Util;->fadeOut(Landroid/view/View;)V

    .line 2315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2314
    :array_0
    .array-data 0x4
        0x6et 0x0t 0xdt 0x7ft
        0x6dt 0x0t 0xdt 0x7ft
        0x60t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2395
    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/moblynx/cameraics/ui/RotateImageView;

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    .line 2396
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/RotateImageView;->enableFilter(Z)V

    .line 2397
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/RotateImageView;->setVisibility(I)V

    .line 2399
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moblynx/cameraics/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/moblynx/cameraics/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 2400
    return-void
.end method

.method private initializeEffectsPreview()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1865
    const-string v4, "videocamera"

    const-string v5, "initializeEffectsPreview"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1870
    :cond_0
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 1873
    .local v0, inLandscape:Z
    :goto_1
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moblynx/cameraics/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    iget v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    aget-object v1, v4, v5

    .line 1875
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iput-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsDisplayResult:Z

    .line 1876
    new-instance v3, Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-direct {v3, p0}, Lcom/moblynx/cameraics/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    .line 1880
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v3, v0}, Lcom/moblynx/cameraics/EffectsRecorder;->setAppToLandscape(Z)V

    .line 1881
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1882
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->setCameraFacing(I)V

    .line 1883
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1884
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v3, p0}, Lcom/moblynx/cameraics/EffectsRecorder;->setEffectsListener(Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;)V

    .line 1885
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v3, p0}, Lcom/moblynx/cameraics/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1886
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v3, p0}, Lcom/moblynx/cameraics/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1890
    const/4 v2, 0x0

    .line 1891
    .local v2, rotation:I
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1892
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    rem-int/lit16 v2, v3, 0x168

    .line 1894
    :cond_1
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v3, v2}, Lcom/moblynx/cameraics/EffectsRecorder;->setOrientationHint(I)V

    .line 1896
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    iput v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1898
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    .line 1899
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1900
    iget v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceWidth:I

    .line 1901
    iget v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHeight:I

    .line 1898
    invoke-virtual {v3, v4, v5, v6}, Lcom/moblynx/cameraics/EffectsRecorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 1903
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1904
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "gallery"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1905
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/moblynx/cameraics/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_0

    .end local v0           #inLandscape:Z
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v2           #rotation:I
    :cond_2
    move v0, v3

    .line 1870
    goto :goto_1

    .line 1907
    .restart local v0       #inLandscape:Z
    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v2       #rotation:I
    :cond_3
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/moblynx/cameraics/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 15

    .prologue
    .line 1912
    const-string v10, "videocamera"

    const-string v11, "initializeEffectsRecording"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1915
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1917
    .local v5, myExtras:Landroid/os/Bundle;
    const-wide/16 v6, 0x0

    .line 1918
    .local v6, requestedSizeLimit:J
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->closeVideoFileDescriptor()V

    .line 1919
    iget-boolean v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v10, :cond_1

    if-eqz v5, :cond_1

    .line 1920
    const-string v10, "output"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1921
    .local v8, saveUri:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 1924
    :try_start_0
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "rw"

    invoke-virtual {v10, v8, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 1923
    iput-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1925
    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    :cond_0
    :goto_0
    const-string v10, "android.intent.extra.sizeLimit"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1938
    .end local v8           #saveUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getRequestedOrientation()I

    move-result v10

    if-nez v10, :cond_4

    const/4 v1, 0x1

    .line 1941
    .local v1, inLandscape:Z
    :goto_1
    if-nez v1, :cond_2

    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v11, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-le v10, v11, :cond_2

    .line 1943
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1944
    .local v9, tmp:I
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget-object v11, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v11, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1945
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iput v9, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1948
    .end local v9           #tmp:I
    :cond_2
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->configureCustomProfile()V

    .line 1950
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget-object v11, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v10, v11}, Lcom/moblynx/cameraics/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1954
    iget-boolean v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v10, :cond_5

    .line 1955
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    const-wide v11, 0x408f400000000000L

    iget v13, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lcom/moblynx/cameraics/EffectsRecorder;->setCaptureRate(D)V

    .line 1961
    :goto_2
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v10, :cond_6

    .line 1962
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget-object v11, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/moblynx/cameraics/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1969
    :goto_3
    iget-wide v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    const-wide/32 v12, 0x2faf080

    sub-long v3, v10, v12

    .line 1970
    .local v3, maxFileSize:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_3

    cmp-long v10, v6, v3

    if-gez v10, :cond_3

    .line 1971
    move-wide v3, v6

    .line 1973
    :cond_3
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v10, v3, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->setMaxFileSize(J)V

    .line 1974
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget v11, p0, Lcom/moblynx/cameraics/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v10, v11}, Lcom/moblynx/cameraics/EffectsRecorder;->setMaxDuration(I)V

    .line 1975
    return-void

    .line 1926
    .end local v1           #inLandscape:Z
    .end local v3           #maxFileSize:J
    .restart local v8       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1928
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v10, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1938
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v8           #saveUri:Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1957
    .restart local v1       #inLandscape:Z
    :cond_5
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/moblynx/cameraics/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1964
    :cond_6
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v10}, Lcom/moblynx/cameraics/VideoCamera;->generateVideoFilename(I)V

    .line 1965
    iget-object v10, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget-object v11, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/moblynx/cameraics/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private initializeIndicatorControl()V
    .locals 12

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 638
    .line 639
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    .line 638
    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    .line 640
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    if-nez v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->loadCameraPreferences()V

    .line 643
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    .line 644
    const-string v0, "pref_camera_video_flashmode_key"

    aput-object v0, v4, v9

    .line 645
    const-string v0, "pref_camera_whitebalance_key"

    aput-object v0, v4, v10

    .line 646
    const-string v0, "pref_video_effect_key"

    aput-object v0, v4, v11

    .line 647
    const-string v0, "pref_video_time_lapse_frame_interval_key"

    aput-object v0, v4, v1

    .line 648
    const-string v0, "pref_video_quality_key"

    aput-object v0, v4, v2

    .line 649
    .local v4, SETTING_KEYS:[Ljava/lang/String;
    const/16 v0, 0xb

    new-array v5, v0, [Ljava/lang/String;

    .line 650
    const-string v0, "pref_camera_recordlocation_key"

    aput-object v0, v5, v9

    .line 653
    const-string v0, "pref_camera_coloreffect_key"

    aput-object v0, v5, v10

    .line 655
    const-string v0, "pref_camera_silentmode_key"

    aput-object v0, v5, v11

    .line 657
    const-string v0, "pref_camera_bitrate_key"

    aput-object v0, v5, v1

    .line 659
    const-string v0, "pref_camera_videostab_key"

    aput-object v0, v5, v2

    const/4 v0, 0x5

    .line 661
    const-string v1, "pref_video_volumekeys_key"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    .line 663
    const-string v1, "pref_video_audio_quality_key"

    aput-object v1, v5, v0

    const/4 v0, 0x7

    .line 665
    const-string v1, "pref_video_audio_channels_key"

    aput-object v1, v5, v0

    const/16 v0, 0x8

    .line 667
    const-string v1, "pref_video_audio_source_key"

    aput-object v1, v5, v0

    const/16 v0, 0x9

    .line 669
    const-string v1, "pref_camera_guidelines_key"

    aput-object v1, v5, v0

    const/16 v0, 0xa

    .line 671
    const-string v1, "pref_camera_storagesource_key"

    aput-object v1, v5, v0

    .line 673
    .local v5, OTHER_SETTING_KEYS:[Ljava/lang/String;
    const v0, 0x7f020075

    invoke-static {v0}, Lcom/moblynx/cameraics/ui/CameraPicker;->setImageResourceId(I)V

    .line 674
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

    .line 675
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    move-object v1, p0

    .line 674
    invoke-virtual/range {v0 .. v5}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->initialize(Landroid/content/Context;Lcom/moblynx/cameraics/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0, p0}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->setListener(Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;)V

    .line 677
    new-instance v0, Landroid/view/GestureDetector;

    .line 678
    new-instance v1, Lcom/moblynx/cameraics/VideoCamera$PopupGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/moblynx/cameraics/VideoCamera$PopupGestureListener;-><init>(Lcom/moblynx/cameraics/VideoCamera;Lcom/moblynx/cameraics/VideoCamera$PopupGestureListener;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 677
    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    .line 680
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    .line 692
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 694
    .local v6, defaultQuality:Ljava/lang/String;
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    const-string v1, "pref_video_quality_key"

    invoke-virtual {v0, v1, v6}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, videoQuality:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 700
    .local v7, quality:I
    const/4 v0, 0x6

    if-ne v7, v0, :cond_2

    .line 703
    const/4 v7, 0x4

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    new-array v1, v11, [Ljava/lang/String;

    .line 706
    const-string v2, "pref_video_quality_key"

    aput-object v2, v1, v9

    .line 707
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 705
    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initializeRecorder()V
    .locals 21

    .prologue
    .line 1621
    const-string v16, "videocamera"

    const-string v17, "initializeRecorder"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 1764
    :goto_0
    return-void

    .line 1625
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 1626
    const-string v16, "videocamera"

    const-string v17, "Surface holder is null. Wait for surface changed."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1630
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1631
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1633
    .local v10, myExtras:Landroid/os/Bundle;
    const-wide/16 v11, 0x0

    .line 1634
    .local v11, requestedSizeLimit:J
    invoke-direct/range {p0 .. p0}, Lcom/moblynx/cameraics/VideoCamera;->closeVideoFileDescriptor()V

    .line 1635
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    if-eqz v10, :cond_3

    .line 1636
    const-string v16, "output"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 1637
    .local v14, saveUri:Landroid/net/Uri;
    if-eqz v14, :cond_2

    .line 1640
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "rw"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 1639
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1641
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    :cond_2
    :goto_1
    const-string v16, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1649
    .end local v14           #saveUri:Landroid/net/Uri;
    :cond_3
    new-instance v16, Landroid/media/MediaRecorder;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera;->unlock()V

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1654
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 1660
    const/4 v2, 0x5

    .line 1662
    .local v2, audioSource:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v16, v0

    .line 1663
    const-string v17, "pref_video_audio_source_key"

    .line 1664
    const v18, 0x7f080067

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1662
    invoke-virtual/range {v16 .. v18}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1666
    .local v15, source:Ljava/lang/String;
    const v16, 0x7f080049

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1669
    const/4 v2, 0x5

    .line 1682
    :cond_4
    :goto_2
    const-string v16, "videocamera"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Audio source: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1686
    .end local v2           #audioSource:I
    .end local v15           #source:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1691
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/VideoCamera;->configureCustomProfile()V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1695
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    const-wide v17, 0x408f400000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1699
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mLocationManager:Lcom/moblynx/cameraics/LocationManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/moblynx/cameraics/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 1700
    .local v7, loc:Landroid/location/Location;
    if-eqz v7, :cond_7

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    .line 1706
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 1705
    invoke-static/range {v16 .. v18}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyCompatibility;->setLocation(Landroid/media/MediaRecorder;FF)V

    .line 1713
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1720
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1723
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x2faf080

    sub-long v8, v16, v18

    .line 1724
    .local v8, maxFileSize:J
    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-lez v16, :cond_8

    cmp-long v16, v11, v8

    if-gez v16, :cond_8

    .line 1725
    move-wide v8, v11

    .line 1729
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1742
    :goto_4
    const/4 v13, 0x0

    .line 1743
    .local v13, rotation:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 1744
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/moblynx/cameraics/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    move/from16 v17, v0

    aget-object v5, v16, v17

    .line 1745
    .local v5, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 1746
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x168

    move/from16 v16, v0

    move/from16 v0, v16

    rem-int/lit16 v13, v0, 0x168

    .line 1751
    .end local v5           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensationAtRecordStart:I

    .line 1755
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1642
    .end local v7           #loc:Landroid/location/Location;
    .end local v8           #maxFileSize:J
    .end local v13           #rotation:I
    .restart local v14       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 1644
    .local v4, ex:Ljava/io/FileNotFoundException;
    const-string v16, "videocamera"

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1671
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    .end local v14           #saveUri:Landroid/net/Uri;
    .restart local v2       #audioSource:I
    .restart local v15       #source:Ljava/lang/String;
    :cond_a
    const v16, 0x7f08004a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1674
    const/4 v2, 0x1

    .line 1675
    goto/16 :goto_2

    .line 1676
    :cond_b
    const v16, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1679
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1716
    .end local v2           #audioSource:I
    .end local v15           #source:Ljava/lang/String;
    .restart local v7       #loc:Landroid/location/Location;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->generateVideoFilename(I)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1748
    .restart local v5       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v8       #maxFileSize:J
    .restart local v13       #rotation:I
    :cond_d
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    rem-int/lit16 v13, v0, 0x168

    goto/16 :goto_5

    .line 1756
    .end local v5           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_1
    move-exception v3

    .line 1757
    .local v3, e:Ljava/io/IOException;
    const-string v16, "videocamera"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "prepare failed for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    invoke-direct/range {p0 .. p0}, Lcom/moblynx/cameraics/VideoCamera;->releaseMediaRecorder()V

    .line 1759
    new-instance v16, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 1730
    .end local v3           #e:Ljava/io/IOException;
    .end local v13           #rotation:I
    :catch_2
    move-exception v16

    goto/16 :goto_4
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 3115
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3117
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3119
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 3120
    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    .line 3119
    invoke-virtual {v0, v1, v2}, Lcom/moblynx/cameraics/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3120
    if-eqz v0, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3125
    :cond_0
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 3043
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/moblynx/cameraics/ui/ZoomControl;

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    .line 3045
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3046
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3056
    :goto_0
    return-void

    .line 3048
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomMax:I

    .line 3051
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    iget v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl;->setZoomMax(I)V

    .line 3052
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 3053
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    iget-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mSmoothZoomSupported:Z

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl;->setSmoothZoomSupported(Z)V

    .line 3054
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    new-instance v1, Lcom/moblynx/cameraics/VideoCamera$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/moblynx/cameraics/VideoCamera$ZoomChangeListener;-><init>(Lcom/moblynx/cameraics/VideoCamera;Lcom/moblynx/cameraics/VideoCamera$ZoomChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl;->setOnZoomChangeListener(Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;)V

    .line 3055
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomListener:Lcom/moblynx/cameraics/VideoCamera$ZoomListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2515
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2391
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2392
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2384
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2385
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2386
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2387
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 615
    new-instance v0, Lcom/moblynx/cameraics/CameraSettings;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 616
    iget v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/moblynx/cameraics/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    .line 615
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/moblynx/cameraics/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 619
    .local v0, settings:Lcom/moblynx/cameraics/CameraSettings;
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/CameraSettings;->getPreferenceGroup(I)Lcom/moblynx/cameraics/PreferenceGroup;

    move-result-object v1

    .line 618
    invoke-direct {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->filterPreferenceScreenByIntent(Lcom/moblynx/cameraics/PreferenceGroup;)Lcom/moblynx/cameraics/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

    .line 620
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 2414
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2415
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2416
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2417
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2418
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2420
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2423
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2424
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2425
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2427
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2429
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2433
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2434
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2436
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2437
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2440
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2441
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2443
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2446
    if-eqz p2, :cond_5

    .line 2447
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2448
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2449
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2450
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2452
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2455
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording(Z)V
    .locals 1
    .parameter "valid"

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsDisplayResult:Z

    .line 816
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->stopVideoRecording()V

    .line 817
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 818
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_1

    .line 819
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->doReturnToCaller(Z)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->showAlert()V

    goto :goto_0

    .line 823
    :cond_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->getThumbnail()V

    goto :goto_0
.end method

.method private onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 3085
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 3109
    :cond_0
    :goto_0
    return-void

    .line 3087
    :cond_1
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_3

    .line 3088
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mTargetZoomValue:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    if-eqz v0, :cond_2

    .line 3089
    iput p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mTargetZoomValue:I

    .line 3090
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    if-ne v0, v1, :cond_0

    .line 3091
    const/4 v0, 0x2

    iput v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    .line 3092
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0

    .line 3094
    :cond_2
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 3095
    iput p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mTargetZoomValue:I

    .line 3096
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 3097
    iput v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    goto :goto_0

    .line 3100
    :cond_3
    iput p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    .line 3103
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_4

    .line 3104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3106
    :cond_4
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->setCameraParameters()V

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 2162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2163
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2165
    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2166
    return-void
.end method

.method private readVideoPreferences()V
    .locals 13

    .prologue
    .line 894
    iget v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    .line 895
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080088

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 894
    invoke-static {v9, v10}, Lcom/moblynx/cameraics/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10, v0}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 899
    .local v8, videoQuality:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 902
    .local v5, quality:I
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 903
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 905
    const-string v9, "android.intent.extra.videoQuality"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 906
    .local v2, extraVideoQuality:I
    if-lez v2, :cond_8

    .line 907
    const/4 v5, 0x1

    .line 915
    .end local v2           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 917
    const-string v9, "android.intent.extra.durationLimit"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 918
    .local v6, seconds:I
    mul-int/lit16 v9, v6, 0x3e8

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mMaxVideoDurationInMs:I

    .line 924
    .end local v6           #seconds:I
    :goto_1
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v9}, Lcom/moblynx/cameraics/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v9

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    .line 925
    iget v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    if-eqz v9, :cond_a

    .line 926
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v9}, Lcom/moblynx/cameraics/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 929
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 934
    const/4 v9, 0x6

    if-ne v5, v9, :cond_1

    .line 937
    const/4 v5, 0x4

    .line 946
    :cond_1
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    if-eqz v9, :cond_2

    .line 954
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 955
    const-string v12, "pref_video_quality_key"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 956
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 954
    invoke-virtual {v9, v10}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    .line 967
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 968
    const-string v10, "pref_video_time_lapse_frame_interval_key"

    .line 969
    const v11, 0x7f08008d

    invoke-virtual {p0, v11}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 967
    invoke-virtual {v9, v10, v11}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 970
    .local v3, frameIntervalStr:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 972
    iget v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    .line 974
    iget-boolean v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v9, :cond_3

    add-int/lit16 v5, v5, 0x3e8

    .line 977
    :cond_3
    iget v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    invoke-static {v9, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v9, :cond_5

    .line 979
    const/high16 v9, 0x80

    invoke-static {v9}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x3ed

    if-eq v5, v9, :cond_5

    .line 982
    :cond_4
    add-int/lit16 v5, v5, -0x3e8

    .line 984
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-virtual {v9}, Lcom/moblynx/cameraics/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 986
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v9, "pref_video_time_lapse_frame_interval_key"

    .line 987
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08008d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 985
    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 988
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 990
    const/4 v9, 0x0

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 991
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    .line 993
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v9}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 996
    const-string v7, ""

    .line 999
    .local v7, selectedResString:Ljava/lang/String;
    packed-switch v5, :pswitch_data_0

    .line 1026
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f080001

    invoke-virtual {p0, v10}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/moblynx/cameraics/Util;->showError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1036
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v7           #selectedResString:Ljava/lang/String;
    :cond_5
    const/high16 v9, 0x80

    invoke-static {v9}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1037
    const/4 v9, 0x5

    if-eq v5, v9, :cond_6

    const/16 v9, 0x3ed

    if-ne v5, v9, :cond_c

    .line 1039
    :cond_6
    iget v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v9

    iput-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 1042
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v10, 0x5

    iput v10, v9, Landroid/media/CamcorderProfile;->quality:I

    .line 1044
    const/16 v9, 0x3ed

    if-ne v5, v9, :cond_7

    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v9, Landroid/media/CamcorderProfile;->quality:I

    add-int/lit16 v10, v10, 0x3e8

    iput v10, v9, Landroid/media/CamcorderProfile;->quality:I

    .line 1046
    :cond_7
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v10, 0x1

    iput v10, v9, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 1047
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v10, 0x2

    iput v10, v9, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1048
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const v10, 0xb71b00

    iput v10, v9, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1049
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/16 v10, 0x500

    iput v10, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1050
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/16 v10, 0x2d0

    iput v10, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1051
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/16 v10, 0x1e

    iput v10, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1053
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v10, 0x3

    iput v10, v9, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1054
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const v10, 0x1f400

    iput v10, v9, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 1055
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const v10, 0xbb80

    iput v10, v9, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 1056
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v10, 0x1

    iput v10, v9, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 1064
    :goto_5
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->initialVideoBitRate:I

    .line 1067
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->initialAudioChannels:I

    .line 1070
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->initialAudioQuality:I

    .line 1071
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->initialAudioBitRate:I

    .line 1073
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->getDesiredPreviewSize()V

    .line 1074
    return-void

    .line 909
    .end local v3           #frameIntervalStr:Ljava/lang/String;
    .restart local v2       #extraVideoQuality:I
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 920
    .end local v2           #extraVideoQuality:I
    :cond_9
    const/4 v9, 0x0

    iput v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 959
    :cond_a
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 960
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    if-eqz v9, :cond_2

    .line 961
    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 962
    const-string v12, "pref_video_quality_key"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 963
    const/4 v12, 0x0

    aput-object v12, v10, v11

    .line 961
    invoke-virtual {v9, v10}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 972
    .restart local v3       #frameIntervalStr:Ljava/lang/String;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1002
    .restart local v1       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v7       #selectedResString:Ljava/lang/String;
    :pswitch_0
    const-string v7, "(1080p)"

    .line 1003
    goto/16 :goto_4

    .line 1006
    :pswitch_1
    const-string v7, "(720p)"

    .line 1007
    goto/16 :goto_4

    .line 1010
    :pswitch_2
    const-string v7, "(480p)"

    .line 1011
    goto/16 :goto_4

    .line 1014
    :pswitch_3
    const-string v7, "(CIF)"

    .line 1017
    :pswitch_4
    const-string v7, "(QVGA)"

    .line 1020
    :pswitch_5
    const-string v7, "(QCIF)"

    goto/16 :goto_4

    .line 1060
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v7           #selectedResString:Ljava/lang/String;
    :cond_c
    iget v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    invoke-static {v9, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v9

    iput-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_5

    .line 999
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1993
    const-string v0, "videocamera"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1995
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->cleanupEmptyFile()V

    .line 1996
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/EffectsRecorder;->release()V

    .line 1997
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    .line 1999
    :cond_0
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2000
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1979
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1981
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->cleanupEmptyFile()V

    .line 1982
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1983
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1984
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1987
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 1989
    :cond_0
    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1990
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 3205
    iget-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 3206
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    .line 3207
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 3206
    invoke-virtual {v2, v3, v4}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3208
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3209
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 3214
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 3213
    :cond_0
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mResetEffect:Z

    .line 3214
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2380
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2381
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;

    .line 1126
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 1125
    invoke-virtual {v0, v1, v2}, Lcom/moblynx/cameraics/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1127
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2833
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2834
    iput v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    .line 2835
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->setCameraParameters()V

    .line 2836
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 2839
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    if-eqz v0, :cond_1

    .line 2840
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 2841
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 2842
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2841
    invoke-static {p0, v0, v1}, Lcom/moblynx/cameraics/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/moblynx/cameraics/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 2843
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2844
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->onSharedPreferenceChanged()V

    .line 2846
    :cond_1
    return-void
.end method

.method private setCameraParameters()V
    .locals 23

    .prologue
    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2524
    const/16 v19, 0x400

    invoke-static/range {v19 .. v19}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mBackCameraId:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "cam_mode"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-size"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    :cond_0
    const/16 v19, 0x800

    invoke-static/range {v19 .. v19}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "capture-mode"

    const-string v21, "normal"

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "cache-first-frame"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "cam-mode"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-size"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v19, v0

    .line 2545
    const-string v20, "pref_camera_video_flashmode_key"

    .line 2546
    const v21, 0x7f0800a9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2544
    invoke-virtual/range {v19 .. v21}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2547
    .local v5, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v15

    .line 2548
    .local v15, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5, v15}, Lcom/moblynx/cameraics/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2559
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v19, v0

    .line 2560
    const-string v20, "pref_camera_whitebalance_key"

    .line 2561
    const v21, 0x7f0800aa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2559
    invoke-virtual/range {v19 .. v21}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2563
    .local v18, whiteBalance:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v19

    .line 2562
    invoke-static/range {v18 .. v19}, Lcom/moblynx/cameraics/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    .line 2563
    if-eqz v19, :cond_c

    .line 2564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2574
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/moblynx/cameraics/OnScreenHint;->cancel()V

    .line 2576
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    .line 2577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/moblynx/cameraics/Storage;->getAvailableSpace(Lcom/moblynx/cameraics/ComboPreferences;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    .line 2583
    :cond_4
    const-string v3, "on"

    .line 2585
    .local v3, VALUE_ON:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v19, v0

    .line 2586
    const-string v20, "pref_camera_silentmode_key"

    const v21, 0x7f080061

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2585
    invoke-virtual/range {v19 .. v21}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2588
    .local v11, silentString:Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/moblynx/cameraics/VideoCamera;->isInSilentMode:Z

    .line 2589
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " silent mode "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/moblynx/cameraics/VideoCamera;->isInSilentMode:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2598
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v16

    .line 2601
    .local v16, supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "continuous-video"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "continuous-video"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2614
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->setRecordingHint(Landroid/hardware/Camera$Parameters;Z)V

    .line 2619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v19, v0

    .line 2620
    const-string v20, "pref_camera_coloreffect_key"

    .line 2621
    const v21, 0x7f08005d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2619
    invoke-virtual/range {v19 .. v21}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2622
    .local v4, colorEffect:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/moblynx/cameraics/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2631
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->guideLinesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v19, v0

    .line 2635
    const-string v20, "pref_camera_guidelines_key"

    const v21, 0x7f080065

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2634
    invoke-virtual/range {v19 .. v21}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2637
    .local v7, guidelinesString:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2638
    .local v6, guidelines:Z
    if-eqz v6, :cond_d

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->guideLinesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2653
    .end local v6           #guidelines:Z
    .end local v7           #guidelinesString:Ljava/lang/String;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->isVideoStabilizationSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v17

    .line 2655
    .local v17, vstabSupported:Z
    if-eqz v17, :cond_9

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v19, v0

    .line 2660
    const-string v20, "pref_camera_videostab_key"

    .line 2659
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2662
    .local v13, stabString:Ljava/lang/String;
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 2663
    .local v12, stabEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->setVideoStabilization(Landroid/hardware/Camera$Parameters;Z)V

    .line 2690
    .end local v12           #stabEnabled:Z
    .end local v13           #stabString:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v14

    .line 2692
    .local v14, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    .line 2691
    move-wide/from16 v0, v19

    invoke-static {v14, v0, v1}, Lcom/moblynx/cameraics/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 2693
    .local v9, optimalSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2694
    .local v10, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v10, v9}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2697
    :cond_a
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Video snapshot size is "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2698
    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2697
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    move/from16 v19, v0

    .line 2702
    const/16 v20, 0x2

    .line 2701
    invoke-static/range {v19 .. v20}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v8

    .line 2703
    .local v8, jpegQuality:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2708
    return-void

    .line 2551
    .end local v3           #VALUE_ON:Ljava/lang/String;
    .end local v4           #colorEffect:Ljava/lang/String;
    .end local v8           #jpegQuality:I
    .end local v9           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v10           #original:Landroid/hardware/Camera$Size;
    .end local v11           #silentString:Ljava/lang/String;
    .end local v14           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v16           #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #vstabSupported:Z
    .end local v18           #whiteBalance:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    .line 2552
    if-nez v5, :cond_2

    .line 2554
    const v19, 0x7f0800a4

    .line 2553
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2566
    .restart local v18       #whiteBalance:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v18

    .line 2567
    if-nez v18, :cond_3

    .line 2568
    const-string v18, "auto"

    goto/16 :goto_1

    .line 2644
    .restart local v3       #VALUE_ON:Ljava/lang/String;
    .restart local v4       #colorEffect:Ljava/lang/String;
    .restart local v6       #guidelines:Z
    .restart local v7       #guidelinesString:Ljava/lang/String;
    .restart local v11       #silentString:Ljava/lang/String;
    .restart local v16       #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->guideLinesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private setOrientationIndicator(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 752
    const/16 v2, 0xc

    new-array v1, v2, [Lcom/moblynx/cameraics/ui/Rotatable;

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 753
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mBgLearningMessageRotater:Lcom/moblynx/cameraics/ui/RotateLayout;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 754
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewDoneButton:Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewPlayButton:Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewCancelButton:Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    .line 756
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->promoRotable:Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    .line 757
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->inMobiRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

    aput-object v4, v1, v2

    const/16 v2, 0xb

    .line 758
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

    aput-object v4, v1, v2

    .line 759
    .local v1, indicators:[Lcom/moblynx/cameraics/ui/Rotatable;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_1

    .line 765
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 766
    div-int/lit8 v2, p1, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_3

    .line 767
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 772
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeRect:Lcom/moblynx/cameraics/ui/RotateLayout;

    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v2, v3}, Lcom/moblynx/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 773
    return-void

    .line 759
    :cond_1
    aget-object v0, v1, v2

    .line 760
    .local v0, indicator:Lcom/moblynx/cameraics/ui/Rotatable;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/moblynx/cameraics/ui/Rotatable;->setOrientation(I)V

    .line 759
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 769
    .end local v0           #indicator:Lcom/moblynx/cameraics/ui/Rotatable;
    :cond_3
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 1210
    :try_start_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    .line 1212
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1213
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceWidth:I

    .line 1214
    iget v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHeight:I

    .line 1211
    invoke-virtual {v1, v2, v3, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 1222
    :goto_0
    return-void

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->closeCamera()V

    .line 1220
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private showAlert()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2280
    const/4 v0, 0x0

    .line 2281
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_2

    .line 2282
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 2283
    iget-object v7, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;

    invoke-virtual {v7}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getWidth()I

    move-result v7

    .line 2282
    invoke-static {v6, v7}, Lcom/moblynx/cameraics/Thumbnail;->createVideoThumbnail(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2288
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2291
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/moblynx/cameraics/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    .line 2292
    .local v2, info:[Landroid/hardware/Camera$CameraInfo;
    iget v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    aget-object v6, v2, v6

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v3, :cond_3

    .line 2293
    .local v3, mirror:Z
    :goto_1
    iget v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensationAtRecordStart:I

    neg-int v6, v6

    invoke-static {v0, v6, v3}, Lcom/moblynx/cameraics/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2295
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2296
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2299
    .end local v2           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v3           #mirror:Z
    :cond_1
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-static {v6}, Lcom/moblynx/cameraics/Util;->fadeOut(Landroid/view/View;)V

    .line 2300
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-static {v6}, Lcom/moblynx/cameraics/Util;->fadeOut(Landroid/view/View;)V

    .line 2301
    const/4 v6, 0x3

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 2302
    .local v4, pickIds:[I
    array-length v7, v4

    move v6, v5

    :goto_2
    if-lt v6, v7, :cond_4

    .line 2306
    invoke-direct {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->showTimeLapseUI(Z)V

    .line 2307
    return-void

    .line 2284
    .end local v4           #pickIds:[I
    :cond_2
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 2285
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2286
    iget-object v7, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;

    invoke-virtual {v7}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getWidth()I

    move-result v7

    .line 2285
    invoke-static {v6, v7}, Lcom/moblynx/cameraics/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v2       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v3, v5

    .line 2292
    goto :goto_1

    .line 2302
    .end local v2           #info:[Landroid/hardware/Camera$CameraInfo;
    .restart local v4       #pickIds:[I
    :cond_4
    aget v1, v4, v6

    .line 2303
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/moblynx/cameraics/Util;->fadeIn(Landroid/view/View;)V

    .line 2302
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2301
    nop

    :array_0
    .array-data 0x4
        0x6et 0x0t 0xdt 0x7ft
        0x6dt 0x0t 0xdt 0x7ft
        0x60t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private showRecordingUI(Z)V
    .locals 4
    .parameter "recording"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2237
    if-eqz p1, :cond_3

    .line 2238
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->dismissSecondLevelIndicator()V

    .line 2239
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/moblynx/cameraics/ui/RotateImageView;->setEnabled(Z)V

    .line 2240
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ShutterButton;->setBackgroundResource(I)V

    .line 2241
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2242
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2243
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2244
    :cond_1
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 2245
    invoke-static {}, Lcom/moblynx/cameraics/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2246
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    check-cast v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheelContainer;

    .line 2248
    iget v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 2249
    iget-wide v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingStartTime:J

    .line 2247
    invoke-virtual {v0, v1, v2, v3}, Lcom/moblynx/cameraics/ui/IndicatorControlWheelContainer;->startTimeLapseAnimation(IJ)V

    .line 2264
    :cond_2
    :goto_0
    return-void

    .line 2253
    :cond_3
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/RotateImageView;->setEnabled(Z)V

    .line 2254
    :cond_4
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ShutterButton;->setBackgroundResource(I)V

    .line 2255
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2256
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2257
    :cond_5
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 2258
    invoke-static {}, Lcom/moblynx/cameraics/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2259
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    check-cast v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheelContainer;

    .line 2260
    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheelContainer;->stopTimeLapseAnimation()V

    goto :goto_0
.end method

.method private showSharePopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2977
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 2978
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SharePopup;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2979
    :cond_0
    new-instance v0, Lcom/moblynx/cameraics/ui/SharePopup;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2980
    iget v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewPanel:Landroid/view/View;

    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/moblynx/cameraics/ui/SharePopup;-><init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/graphics/Bitmap;ILandroid/view/View;Landroid/os/Handler;)V

    .line 2979
    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    .line 2982
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-virtual {v0, v1, v7, v7, v7}, Lcom/moblynx/cameraics/ui/SharePopup;->showAtLocation(Landroid/view/View;III)V

    .line 2983
    return-void
.end method

.method private showStorageHint()V
    .locals 5

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, errorMessage:Ljava/lang/String;
    iget-wide v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 869
    const v1, 0x7f080072

    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 879
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    if-nez v1, :cond_5

    .line 880
    invoke-static {p0, v0}, Lcom/moblynx/cameraics/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/moblynx/cameraics/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    .line 884
    :goto_1
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/OnScreenHint;->show()V

    .line 889
    :cond_1
    :goto_2
    return-void

    .line 870
    :cond_2
    iget-wide v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 871
    const v1, 0x7f080074

    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 873
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 874
    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    const-wide/32 v3, 0x2faf080

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 875
    const v1, 0x7f0800be

    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 882
    :cond_5
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/moblynx/cameraics/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 885
    :cond_6
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    if-eqz v1, :cond_1

    .line 886
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/OnScreenHint;->cancel()V

    .line 887
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    goto :goto_2
.end method

.method private showTapToSnapshotToast()V
    .locals 4

    .prologue
    .line 3243
    new-instance v1, Lcom/moblynx/cameraics/ui/RotateTextToast;

    const v2, 0x7f0800e2

    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/moblynx/cameraics/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    .line 3244
    invoke-virtual {v1}, Lcom/moblynx/cameraics/ui/RotateTextToast;->show()V

    .line 3246
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3247
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3249
    return-void
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2972
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2974
    :cond_0
    return-void

    .line 2972
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 776
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/moblynx/cameraics/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t view video "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1225
    const-string v2, "videocamera"

    const-string v3, "startPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mErrorCallback:Lcom/moblynx/cameraics/CameraErrorCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1228
    iget-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewing:Z

    if-eqz v2, :cond_1

    .line 1229
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 1230
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    if-eqz v2, :cond_0

    .line 1231
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->release()V

    .line 1233
    :cond_0
    iput-boolean v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewing:Z

    .line 1236
    :cond_1
    invoke-static {p0}, Lcom/moblynx/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mDisplayRotation:I

    .line 1237
    iget v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mDisplayRotation:I

    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    invoke-static {v2, v3}, Lcom/moblynx/cameraics/Util;->getDisplayOrientation(II)I

    move-result v1

    .line 1238
    .local v1, orientation:I
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1239
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->setCameraParameters()V

    .line 1241
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1242
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v2}, Lcom/moblynx/cameraics/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1244
    :try_start_0
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :goto_0
    const/16 v2, 0x800

    invoke-static {v2}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1258
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->setCameraParameters()V

    .line 1261
    :cond_2
    iput v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I

    .line 1262
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewing:Z

    .line 1263
    return-void

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->closeCamera()V

    .line 1247
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startPreview failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1250
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_3
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->initializeEffectsPreview()V

    .line 1251
    const-string v2, "videocamera"

    const-string v3, "effectsStartPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->startPreview()V

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2174
    const-string v1, "videocamera"

    const-string v2, "startVideoRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->isInSilentMode:Z

    if-eqz v1, :cond_0

    .line 2179
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/custom/NewFeatures;->setMuteMode(Landroid/content/Context;Z)V

    .line 2183
    :cond_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateAndShowStorageHint()V

    .line 2184
    iget-wide v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    const-wide/32 v3, 0x2faf080

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 2185
    const-string v1, "videocamera"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :goto_0
    return-void

    .line 2189
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2190
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2191
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->initializeEffectsRecording()V

    .line 2192
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    if-nez v1, :cond_3

    .line 2193
    const-string v1, "videocamera"

    const-string v2, "Fail to initialize effect recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2197
    :cond_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->initializeRecorder()V

    .line 2198
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_3

    .line 2199
    const-string v1, "videocamera"

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2204
    :cond_3
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->pauseAudioPlayback()V

    .line 2206
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2208
    :try_start_0
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->enableCameraControls(Z)V

    .line 2228
    iput-boolean v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    .line 2229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingStartTime:J

    .line 2230
    invoke-direct {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->showRecordingUI(Z)V

    .line 2232
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateRecordingTime()V

    .line 2233
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->keepScreenOn()V

    goto :goto_0

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2211
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->releaseEffectsRecorder()V

    goto :goto_0

    .line 2216
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2217
    :catch_1
    move-exception v0

    .line 2218
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2219
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->releaseMediaRecorder()V

    .line 2221
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2327
    const-string v2, "videocamera"

    const-string v3, "stopVideoRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_2

    .line 2329
    const/4 v1, 0x0

    .line 2332
    .local v1, shouldAddToMediaStoreNow:Z
    :try_start_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2337
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->isInSilentMode:Z

    invoke-virtual {v2, v3}, Lcom/moblynx/cameraics/EffectsRecorder;->stopRecording(Z)V

    .line 2345
    :goto_0
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2346
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting current video filename: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2347
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2346
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    .line 2354
    invoke-direct {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->showRecordingUI(Z)V

    .line 2355
    iget-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_1

    .line 2356
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/moblynx/cameraics/VideoCamera;->enableCameraControls(Z)V

    .line 2360
    :cond_1
    iget v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v2}, Lcom/moblynx/cameraics/VideoCamera;->setOrientationIndicator(I)V

    .line 2361
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->keepScreenOnAwhile()V

    .line 2362
    if-eqz v1, :cond_2

    .line 2363
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->addVideoToMediaStore()V

    .line 2367
    .end local v1           #shouldAddToMediaStoreNow:Z
    :cond_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2368
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->releaseMediaRecorder()V

    .line 2371
    :cond_3
    iget-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->isInSilentMode:Z

    if-eqz v2, :cond_4

    .line 2373
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2376
    :cond_4
    return-void

    .line 2340
    .restart local v1       #shouldAddToMediaStoreNow:Z
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2341
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2342
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2343
    const/4 v1, 0x1

    goto :goto_0

    .line 2348
    :catch_0
    move-exception v0

    .line 2349
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    const-string v3, "stop fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2350
    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/moblynx/cameraics/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 14
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 3183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3184
    .local v2, dateTaken:J
    invoke-static {v2, v3}, Lcom/moblynx/cameraics/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 3185
    .local v1, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/moblynx/cameraics/Exif;->getOrientation([B)I

    move-result v5

    .line 3186
    .local v5, orientation:I
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 3187
    .local v12, s:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 3188
    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    iget v8, v12, Landroid/hardware/Camera$Size;->height:I

    iget-object v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move-object/from16 v4, p2

    move-object v6, p1

    .line 3187
    invoke-static/range {v0 .. v9}, Lcom/moblynx/cameraics/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BIILcom/moblynx/cameraics/ComboPreferences;)Landroid/net/Uri;

    move-result-object v13

    .line 3189
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_1

    .line 3191
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v0

    .line 3192
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getWidth()I

    move-result v0

    int-to-double v8, v0

    .line 3191
    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v11, v6

    .line 3193
    .local v11, ratio:I
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    .line 3194
    .local v10, inSampleSize:I
    invoke-static {p1, v5, v10, v13}, Lcom/moblynx/cameraics/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/moblynx/cameraics/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 3195
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-eqz v0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v4}, Lcom/moblynx/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/moblynx/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    .line 3200
    invoke-static {p0, v13}, Lcom/moblynx/cameraics/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3202
    .end local v10           #inSampleSize:I
    .end local v11           #ratio:I
    :cond_1
    return-void
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 2711
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2714
    :goto_0
    return v0

    .line 2712
    :cond_0
    invoke-static {p1, p0}, Lcom/moblynx/cameraics/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 2713
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->finish()V

    .line 2714
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAndShowStorageHint()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v0}, Lcom/moblynx/cameraics/Storage;->getAvailableSpace(Lcom/moblynx/cameraics/ComboPreferences;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    .line 863
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->showStorageHint()V

    .line 864
    return-void
.end method

.method private updateEffectSelection()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2912
    iget v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    .line 2913
    .local v2, previousEffectType:I
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 2914
    .local v1, previousEffectParameter:Ljava/lang/Object;
    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v5}, Lcom/moblynx/cameraics/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v5

    iput v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    .line 2915
    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v5}, Lcom/moblynx/cameraics/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    .line 2917
    iget v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    if-ne v5, v2, :cond_2

    .line 2918
    iget v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    if-nez v5, :cond_1

    .line 2947
    :cond_0
    :goto_0
    return v3

    .line 2919
    :cond_1
    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2921
    :cond_2
    const-string v3, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "New effect selection: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 2922
    const-string v7, "pref_video_effect_key"

    const-string v8, "none"

    .line 2921
    invoke-virtual {v6, v7, v8}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    if-nez v3, :cond_3

    .line 2926
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/EffectsRecorder;->stopPreview()V

    move v3, v4

    .line 2927
    goto :goto_0

    .line 2929
    :cond_3
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    if-ne v3, v9, :cond_4

    .line 2930
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v5, "gallery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2932
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2933
    .local v0, i:Landroid/content/Intent;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2934
    const-string v5, "video/*"

    .line 2933
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2935
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2936
    invoke-virtual {p0, v0, v9}, Lcom/moblynx/cameraics/VideoCamera;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v4

    .line 2937
    goto :goto_0

    .line 2939
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    if-nez v2, :cond_5

    .line 2941
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 2942
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->checkQualityAndStartPreview()V

    :goto_1
    move v3, v4

    .line 2947
    goto :goto_0

    .line 2945
    :cond_5
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    iget v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectType:I

    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/moblynx/cameraics/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateRecordingTime()V
    .locals 19

    .prologue
    .line 2466
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v15, :cond_0

    .line 2512
    :goto_0
    return-void

    .line 2469
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2470
    .local v10, now:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingStartTime:J

    sub-long v6, v10, v15

    .line 2474
    .local v6, delta:J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v15, :cond_3

    .line 2475
    move-object/from16 v0, p0

    iget v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mMaxVideoDurationInMs:I

    const v16, 0xea60

    sub-int v15, v15, v16

    int-to-long v15, v15

    .line 2474
    cmp-long v15, v6, v15

    if-ltz v15, :cond_3

    const/4 v5, 0x1

    .line 2477
    .local v5, countdownRemainingTime:Z
    :goto_1
    move-wide v8, v6

    .line 2478
    .local v8, deltaAdjusted:J
    if-eqz v5, :cond_1

    .line 2479
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v17, v17, v8

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    const-wide/16 v17, 0x3e7

    add-long v8, v15, v17

    .line 2484
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v15, :cond_4

    .line 2485
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Lcom/moblynx/cameraics/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2486
    .local v14, text:Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    .line 2495
    .local v12, targetNextUpdateDelay:J
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2497
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v15, v5, :cond_2

    .line 2500
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 2502
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    if-eqz v5, :cond_5

    .line 2503
    const v15, 0x7f0a0001

    .line 2502
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2506
    .local v4, color:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2509
    .end local v4           #color:I
    :cond_2
    rem-long v15, v6, v12

    sub-long v2, v12, v15

    .line 2510
    .local v2, actualNextUpdateDelay:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 2511
    const/16 v16, 0x5

    .line 2510
    move/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2474
    .end local v2           #actualNextUpdateDelay:J
    .end local v5           #countdownRemainingTime:Z
    .end local v8           #deltaAdjusted:J
    .end local v12           #targetNextUpdateDelay:J
    .end local v14           #text:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 2491
    .restart local v5       #countdownRemainingTime:Z
    .restart local v8       #deltaAdjusted:J
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/moblynx/cameraics/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v15

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/moblynx/cameraics/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2492
    .restart local v14       #text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/moblynx/cameraics/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v12, v15

    .restart local v12       #targetNextUpdateDelay:J
    goto :goto_2

    .line 2504
    :cond_5
    const/high16 v15, 0x7f0a

    goto :goto_3
.end method

.method private updateThumbnailButton()V
    .locals 2

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/moblynx/cameraics/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/moblynx/cameraics/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/moblynx/cameraics/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 2406
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-eqz v0, :cond_2

    .line 2407
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2411
    :goto_0
    return-void

    .line 2409
    :cond_2
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 3

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1078
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    .line 1079
    const v2, 0x7f0800d3

    invoke-virtual {p0, v2}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1078
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1080
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1081
    return-void
.end method


# virtual methods
.method public configureCustomProfile()V
    .locals 9

    .prologue
    .line 1769
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 1770
    const-string v7, "pref_camera_bitrate_key"

    .line 1771
    const v8, 0x7f080060

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1769
    invoke-virtual {v6, v7, v8}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1773
    .local v5, bitRate:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 1776
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, p0, Lcom/moblynx/cameraics/VideoCamera;->initialVideoBitRate:I

    iput v7, v6, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1790
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 1791
    const-string v7, "pref_video_audio_channels_key"

    .line 1792
    const v8, 0x7f080068

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1790
    invoke-virtual {v6, v7, v8}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1794
    .local v2, audioChannelsString:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1797
    .local v1, audioChannels:I
    packed-switch v1, :pswitch_data_0

    .line 1808
    iget v1, p0, Lcom/moblynx/cameraics/VideoCamera;->initialAudioChannels:I

    .line 1812
    :goto_1
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iput v1, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 1815
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 1816
    const-string v7, "pref_video_audio_quality_key"

    .line 1817
    const v8, 0x7f080069

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1815
    invoke-virtual {v6, v7, v8}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1819
    .local v4, audioQualityString:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1820
    .local v3, audioQuality:I
    const v0, 0x1f400

    .line 1822
    .local v0, audioBitRate:I
    sparse-switch v3, :sswitch_data_0

    .line 1841
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->initialAudioQuality:I

    .line 1842
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->initialAudioBitRate:I

    .line 1847
    :goto_2
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 1849
    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v0, v6, 0x2

    .line 1852
    :cond_1
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iput v3, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 1853
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iput v0, v6, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 1856
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Video bitrate: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Video fps: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Audio channels: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Audio quality: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const-string v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Audio bitrate: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    return-void

    .line 1781
    .end local v0           #audioBitRate:I
    .end local v1           #audioChannels:I
    .end local v2           #audioChannelsString:Ljava/lang/String;
    .end local v3           #audioQuality:I
    .end local v4           #audioQualityString:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, p0, Lcom/moblynx/cameraics/VideoCamera;->initialVideoBitRate:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1782
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v7, p0, Lcom/moblynx/cameraics/VideoCamera;->MAX_BITRATE:I

    if-le v6, v7, :cond_0

    .line 1784
    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, p0, Lcom/moblynx/cameraics/VideoCamera;->MAX_BITRATE:I

    iput v7, v6, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto/16 :goto_0

    .line 1799
    .restart local v1       #audioChannels:I
    .restart local v2       #audioChannelsString:Ljava/lang/String;
    :pswitch_0
    const/4 v1, 0x1

    .line 1800
    goto/16 :goto_1

    .line 1803
    :pswitch_1
    const/4 v1, 0x2

    .line 1804
    goto/16 :goto_1

    .line 1824
    .restart local v0       #audioBitRate:I
    .restart local v3       #audioQuality:I
    .restart local v4       #audioQualityString:Ljava/lang/String;
    :sswitch_0
    const/16 v0, 0x7d00

    .line 1825
    goto/16 :goto_2

    .line 1828
    :sswitch_1
    const v0, 0xfa00

    .line 1829
    goto/16 :goto_2

    .line 1832
    :sswitch_2
    const v0, 0x1f400

    .line 1833
    goto/16 :goto_2

    .line 1836
    :sswitch_3
    const v0, 0x1f400

    .line 1837
    goto/16 :goto_2

    .line 1797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1822
    :sswitch_data_0
    .sparse-switch
        0x2b11 -> :sswitch_0
        0x5622 -> :sswitch_1
        0xac44 -> :sswitch_2
        0xbb80 -> :sswitch_3
    .end sparse-switch
.end method

.method public decreaseZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3319
    :goto_0
    return-void

    .line 3313
    :cond_0
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    .line 3315
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    .line 3317
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    iget v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 3318
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->onZoomValueChanged(I)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2989
    const/4 v0, 0x1

    .line 2992
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1131
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOpenCameraFail:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDisabled:Z

    if-eqz v3, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iput-boolean v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    .line 1134
    iput v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    .line 1136
    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 1140
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationListener:Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;->enable()V

    .line 1141
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewing:Z

    if-nez v3, :cond_3

    .line 1142
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->resetEffect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1143
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 1147
    :cond_2
    :try_start_0
    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    invoke-static {p0, v3}, Lcom/moblynx/cameraics/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1148
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->readVideoPreferences()V

    .line 1149
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1150
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->startPreview()V

    .line 1153
    const/16 v3, 0x800

    invoke-static {v3}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1155
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Lcom/moblynx/cameraics/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/moblynx/cameraics/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1168
    :cond_3
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->initializeZoom()V

    .line 1170
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->keepScreenOnAwhile()V

    .line 1174
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1176
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1177
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1178
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1179
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1180
    new-instance v3, Lcom/moblynx/cameraics/VideoCamera$MyBroadcastReceiver;

    invoke-direct {v3, p0, v7}, Lcom/moblynx/cameraics/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/moblynx/cameraics/VideoCamera;Lcom/moblynx/cameraics/VideoCamera$MyBroadcastReceiver;)V

    iput-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1181
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/moblynx/cameraics/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1182
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v3}, Lcom/moblynx/cameraics/Storage;->getAvailableSpace(Lcom/moblynx/cameraics/ComboPreferences;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageSpace:J

    .line 1184
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/moblynx/cameraics/VideoCamera$2;

    invoke-direct {v4, p0}, Lcom/moblynx/cameraics/VideoCamera$2;-><init>(Lcom/moblynx/cameraics/VideoCamera;)V

    .line 1188
    const-wide/16 v5, 0xc8

    .line 1184
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1192
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1191
    invoke-static {v3, v4}, Lcom/moblynx/cameraics/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v2

    .line 1193
    .local v2, recordLocation:Z
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mLocationManager:Lcom/moblynx/cameraics/LocationManager;

    invoke-virtual {v3, v2}, Lcom/moblynx/cameraics/LocationManager;->recordLocation(Z)V

    .line 1195
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_4

    .line 1196
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateThumbnailButton()V

    .line 1197
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/ModePicker;->setCurrentMode(I)V

    .line 1200
    :cond_4
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewing:Z

    if-eqz v3, :cond_5

    .line 1201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mOnResumeTime:J

    .line 1202
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1205
    :cond_5
    invoke-static {p0}, Lcom/moblynx/cameraics/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/moblynx/cameraics/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/moblynx/cameraics/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1158
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .end local v2           #recordLocation:Z
    :catch_0
    move-exception v0

    .line 1159
    .local v0, e:Lcom/moblynx/cameraics/CameraHardwareException;
    const v3, 0x7f08006b

    invoke-static {p0, v3}, Lcom/moblynx/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 1161
    .end local v0           #e:Lcom/moblynx/cameraics/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1162
    .local v0, e:Lcom/moblynx/cameraics/CameraDisabledException;
    const v3, 0x7f08006c

    invoke-static {p0, v3}, Lcom/moblynx/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0
.end method

.method public increaseZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3306
    :goto_0
    return-void

    .line 3300
    :cond_0
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    .line 3302
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    iget v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomMax:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomMax:I

    iput v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    .line 3304
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;

    iget v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 3305
    iget v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->onZoomValueChanged(I)V

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2170
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2727
    packed-switch p1, :pswitch_data_0

    .line 2742
    const-string v0, "videocamera"

    const-string v1, "Unknown activity result sent to Camera!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :goto_0
    return-void

    .line 2729
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2732
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2733
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received URI from gallery: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 2736
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2737
    const-string v0, "videocamera"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mResetEffect:Z

    goto :goto_0

    .line 2727
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1347
    :cond_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    invoke-super {p0}, Lcom/moblynx/cameraics/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2789
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->writeDefaultEffectToPrefs()V

    .line 2791
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2793
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->onSharedPreferenceChanged()V

    .line 2794
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 2812
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2813
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 433
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/moblynx/cameraics/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 436
    new-instance v8, Lcom/moblynx/cameraics/ComboPreferences;

    invoke-direct {v8, p0}, Lcom/moblynx/cameraics/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 437
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-virtual {v8}, Lcom/moblynx/cameraics/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {v8}, Lcom/moblynx/cameraics/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 438
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v8}, Lcom/moblynx/cameraics/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v8

    iput v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    .line 441
    invoke-static {p0}, Lcom/moblynx/cameraics/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v4

    .line 442
    .local v4, intentCameraId:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 443
    iput v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    .line 446
    :cond_0
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    iget v9, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    invoke-virtual {v8, p0, v9}, Lcom/moblynx/cameraics/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 447
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-virtual {v8}, Lcom/moblynx/cameraics/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {v8}, Lcom/moblynx/cameraics/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 449
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/moblynx/cameraics/CameraHolder;->getNumberOfCameras()I

    move-result v8

    iput v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mNumberOfCameras:I

    .line 450
    const v8, 0x7f0800d3

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 453
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "reset_effect"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mResetEffect:Z

    .line 456
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "background_uri_gallery"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->resetEffect()Z

    .line 463
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/moblynx/cameraics/VideoCamera$1;

    invoke-direct {v8, p0}, Lcom/moblynx/cameraics/VideoCamera$1;-><init>(Lcom/moblynx/cameraics/VideoCamera;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 476
    .local v7, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 478
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v8}, Lcom/moblynx/cameraics/Util;->enterLightsOutMode(Landroid/view/Window;)V

    .line 480
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 482
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->requestWindowFeature(I)Z

    .line 483
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->isVideoCaptureIntent()Z

    move-result v8

    iput-boolean v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 484
    const v8, 0x7f04001e

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->setContentView(I)V

    .line 488
    const v8, 0x7f0d001d

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->guideLinesLayout:Landroid/widget/LinearLayout;

    .line 490
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 491
    const-string v9, "pref_camera_guidelines_key"

    const v10, 0x7f080065

    invoke-virtual {p0, v10}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 490
    invoke-virtual {v8, v9, v10}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, guidelinesString:Ljava/lang/String;
    const-string v0, "on"

    .line 495
    .local v0, VALUE_ON:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 497
    .local v1, guidelines:Z
    if-eqz v1, :cond_4

    .line 499
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->guideLinesLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    :goto_0
    sget v8, Lcom/moblynx/cameraics/compatibility/Settings;->SELECTED_MODE:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 510
    const v8, 0x7f0d006b

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 511
    .local v6, promoView:Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 513
    const/high16 v8, 0x7f0d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ui/Rotatable;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->promoRotable:Lcom/moblynx/cameraics/ui/Rotatable;

    .line 527
    .end local v6           #promoView:Landroid/view/View;
    :cond_1
    :goto_1
    iget-boolean v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_6

    .line 528
    const v8, 0x7f0d006d

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ui/Rotatable;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewDoneButton:Lcom/moblynx/cameraics/ui/Rotatable;

    .line 529
    const v8, 0x7f0d0060

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ui/Rotatable;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewPlayButton:Lcom/moblynx/cameraics/ui/Rotatable;

    .line 530
    const v8, 0x7f0d006f

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ui/Rotatable;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewCancelButton:Lcom/moblynx/cameraics/ui/Rotatable;

    .line 531
    const v8, 0x7f0d006f

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :goto_2
    new-instance v8, Lcom/moblynx/cameraics/RotateDialogController;

    const v9, 0x7f040019

    invoke-direct {v8, p0, v9}, Lcom/moblynx/cameraics/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

    .line 541
    const v8, 0x7f0d0041

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewPanel:Landroid/view/View;

    .line 542
    const v8, 0x7f0d0059

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/PreviewFrameLayout;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;

    .line 543
    const v8, 0x7f0d005f

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mReviewImage:Landroid/widget/ImageView;

    .line 548
    const v8, 0x7f0d005a

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    .line 549
    .local v5, preview:Landroid/view/SurfaceView;
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    .line 550
    .local v3, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 551
    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 553
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.intent.extra.quickCapture"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mQuickCapture:Z

    .line 555
    const v8, 0x7f0d0009

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ShutterButton;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    .line 556
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const v9, 0x7f02002c

    invoke-virtual {v8, v9}, Lcom/moblynx/cameraics/ShutterButton;->setBackgroundResource(I)V

    .line 557
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-virtual {v8, p0}, Lcom/moblynx/cameraics/ShutterButton;->setOnShutterButtonListener(Lcom/moblynx/cameraics/ShutterButton$OnShutterButtonListener;)V

    .line 558
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-virtual {v8}, Lcom/moblynx/cameraics/ShutterButton;->requestFocus()Z

    .line 566
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 567
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/moblynx/cameraics/ShutterButton;->setEnabled(Z)V

    .line 570
    :cond_2
    const v8, 0x7f0d008c

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 571
    const v8, 0x7f0d005d

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ui/RotateLayout;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mRecordingTimeRect:Lcom/moblynx/cameraics/ui/RotateLayout;

    .line 572
    new-instance v8, Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;

    invoke-direct {v8, p0, p0}, Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;-><init>(Lcom/moblynx/cameraics/VideoCamera;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationListener:Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;

    .line 573
    const v8, 0x7f0d008d

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    .line 576
    const v8, 0x7f0d005e

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 578
    const v8, 0x7f0d0005

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ui/RotateLayout;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mBgLearningMessageRotater:Lcom/moblynx/cameraics/ui/RotateLayout;

    .line 579
    const v8, 0x7f0d0004

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    .line 581
    new-instance v8, Lcom/moblynx/cameraics/LocationManager;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/moblynx/cameraics/LocationManager;-><init>(Landroid/content/Context;Lcom/moblynx/cameraics/LocationManager$Listener;)V

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mLocationManager:Lcom/moblynx/cameraics/LocationManager;

    .line 585
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Thread;->join()V

    .line 586
    iget-boolean v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mOpenCameraFail:Z

    if-eqz v8, :cond_7

    .line 587
    const v8, 0x7f08006b

    invoke-static {p0, v8}, Lcom/moblynx/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_3
    :goto_3
    return-void

    .line 503
    .end local v3           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #preview:Landroid/view/SurfaceView;
    :cond_4
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->guideLinesLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 517
    :cond_5
    sget v8, Lcom/moblynx/cameraics/compatibility/Settings;->SELECTED_MODE:I

    if-nez v8, :cond_1

    .line 521
    const/high16 v8, 0x7f04

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ui/RotateLayout;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

    .line 522
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/moblynx/cameraics/compatibility/AdsManager;->requestAdMob(Landroid/app/Activity;Lcom/moblynx/cameraics/ui/RotateLayout;Z)V

    goto/16 :goto_1

    .line 533
    :cond_6
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->initThumbnailButton()V

    .line 534
    const v8, 0x7f0d0035

    invoke-virtual {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/ModePicker;

    iput-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    .line 535
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/moblynx/cameraics/ModePicker;->setVisibility(I)V

    .line 536
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    invoke-virtual {v8, p0}, Lcom/moblynx/cameraics/ModePicker;->setOnModeChangeListener(Lcom/moblynx/cameraics/ModePicker$OnModeChangeListener;)V

    goto/16 :goto_2

    .line 589
    .restart local v3       #holder:Landroid/view/SurfaceHolder;
    .restart local v5       #preview:Landroid/view/SurfaceView;
    :cond_7
    :try_start_1
    iget-boolean v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDisabled:Z

    if-eqz v8, :cond_8

    .line 590
    const v8, 0x7f08006c

    invoke-static {p0, v8}, Lcom/moblynx/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 593
    :catch_0
    move-exception v8

    .line 597
    :cond_8
    iget-boolean v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v8}, Lcom/moblynx/cameraics/VideoCamera;->showTimeLapseUI(Z)V

    .line 598
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->initializeVideoSnapshot()V

    .line 599
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 601
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/moblynx/cameraics/CameraHolder;->getBackCameraId()I

    move-result v8

    iput v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mBackCameraId:I

    .line 602
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/moblynx/cameraics/CameraHolder;->getFrontCameraId()I

    move-result v8

    iput v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mFrontCameraId:I

    .line 604
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->initializeIndicatorControl()V

    .line 607
    const/16 v8, 0x800

    invoke-static {v8}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 609
    iget-object v8, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x8

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1580
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1582
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1584
    const/4 v0, 0x0

    .line 1588
    :goto_0
    return v0

    .line 1586
    :cond_0
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 1588
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "add"

    .prologue
    .line 3258
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 2800
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2801
    invoke-direct {p0, p2}, Lcom/moblynx/cameraics/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2803
    :cond_0
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_1

    .line 2804
    const-string v0, "videocamera"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2805
    monitor-exit p0

    return-void

    .line 2807
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2800
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 3
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2749
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 2752
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2753
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->checkQualityAndStartPreview()V

    .line 2783
    :cond_0
    :goto_0
    return-void

    .line 2754
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 2758
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_2

    .line 2759
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->addVideoToMediaStore()V

    .line 2760
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 2761
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mQuickCapture:Z

    if-nez v0, :cond_2

    .line 2762
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->showAlert()V

    .line 2768
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsDisplayResult:Z

    goto :goto_0

    .line 2765
    :cond_3
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->getThumbnail()V

    goto :goto_1

    .line 2769
    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 2771
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2772
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2773
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2775
    :pswitch_0
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2779
    :pswitch_1
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2134
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaRecorder error. what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2137
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->stopVideoRecording()V

    .line 2138
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateAndShowStorageHint()V

    .line 2140
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0
    .parameter "ad"
    .parameter "error"

    .prologue
    .line 3265
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 2144
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2145
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->onStopVideoRecording(Z)V

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2146
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 2147
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->onStopVideoRecording(Z)V

    .line 2150
    :cond_2
    const v0, 0x7f0800c2

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2151
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v6, 0x7f0800a9

    const v5, 0x7f080063

    const/4 v2, 0x1

    .line 1355
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    if-eqz v3, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return v2

    .line 1361
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1512
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/moblynx/cameraics/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1368
    :sswitch_0
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 1369
    const-string v4, "pref_video_volumekeys_key"

    .line 1370
    invoke-virtual {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1368
    invoke-virtual {v3, v4, v5}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1372
    .local v1, videoVolumeKeysMode:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1376
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/moblynx/cameraics/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1382
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1384
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1391
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/moblynx/cameraics/VideoCamera;->increaseZoom(I)V

    goto :goto_0

    .line 1397
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/moblynx/cameraics/VideoCamera;->decreaseZoom(I)V

    goto :goto_0

    .line 1403
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1405
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 1406
    const-string v4, "pref_camera_video_flashmode_key"

    .line 1407
    invoke-virtual {p0, v6}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1405
    invoke-virtual {v3, v4, v5}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, flashMode:Ljava/lang/String;
    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1410
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v3

    const-string v4, "torch"

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1417
    :goto_2
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v3, :cond_3

    .line 1419
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->onSharedPreferenceChanged()V

    .line 1422
    :cond_3
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->setCameraParameters()V

    goto :goto_0

    .line 1414
    :cond_4
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 1434
    .end local v0           #flashMode:Ljava/lang/String;
    .end local v1           #videoVolumeKeysMode:Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 1435
    const-string v4, "pref_video_volumekeys_key"

    .line 1436
    invoke-virtual {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1434
    invoke-virtual {v3, v4, v5}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1438
    .restart local v1       #videoVolumeKeysMode:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 1442
    :pswitch_5
    invoke-super {p0, p1, p2}, Lcom/moblynx/cameraics/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1447
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1449
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/ShutterButton;->performClick()Z

    goto/16 :goto_0

    .line 1456
    :pswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/moblynx/cameraics/VideoCamera;->decreaseZoom(I)V

    goto/16 :goto_0

    .line 1462
    :pswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/moblynx/cameraics/VideoCamera;->increaseZoom(I)V

    goto/16 :goto_0

    .line 1467
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1469
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 1470
    const-string v4, "pref_camera_video_flashmode_key"

    .line 1471
    invoke-virtual {p0, v6}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1469
    invoke-virtual {v3, v4, v5}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    .restart local v0       #flashMode:Ljava/lang/String;
    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1474
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v3

    const-string v4, "torch"

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1481
    :goto_3
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v3, :cond_5

    .line 1483
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->onSharedPreferenceChanged()V

    .line 1486
    :cond_5
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->setCameraParameters()V

    goto/16 :goto_0

    .line 1478
    :cond_6
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Lcom/moblynx/cameraics/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 1496
    .end local v0           #flashMode:Ljava/lang/String;
    .end local v1           #videoVolumeKeysMode:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 1497
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/ShutterButton;->performClick()Z

    goto/16 :goto_0

    .line 1502
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 1503
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/ShutterButton;->performClick()Z

    goto/16 :goto_0

    .line 1508
    :sswitch_4
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 1361
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_3
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x52 -> :sswitch_4
    .end sparse-switch

    .line 1372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1438
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1517
    packed-switch p1, :pswitch_data_0

    .line 1522
    invoke-super {p0, p1, p2}, Lcom/moblynx/cameraics/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1519
    :pswitch_0
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ShutterButton;->setPressed(Z)V

    .line 1520
    const/4 v0, 0x1

    goto :goto_0

    .line 1517
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 3271
    return-void
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 2718
    if-eq p1, v0, :cond_0

    .line 2719
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->switchToOtherMode(I)Z

    move-result v0

    .line 2721
    :cond_0
    return v0
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 0

    .prologue
    .line 2816
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1303
    invoke-super {p0}, Lcom/moblynx/cameraics/ActivityBase;->onPause()V

    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    .line 1306
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 1310
    :cond_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->finishRecorderAndCloseCamera()V

    .line 1311
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->closeVideoFileDescriptor()V

    .line 1313
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SharePopup;->dismiss()V

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1316
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1317
    iput-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1319
    :cond_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->resetScreenOn()V

    .line 1321
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1322
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 1325
    :cond_3
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    if-eqz v0, :cond_4

    .line 1326
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/OnScreenHint;->cancel()V

    .line 1327
    iput-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mStorageHint:Lcom/moblynx/cameraics/OnScreenHint;

    .line 1330
    :cond_4
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationListener:Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/VideoCamera$MyOrientationEventListener;->disable()V

    .line 1331
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mLocationManager:Lcom/moblynx/cameraics/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/LocationManager;->recordLocation(Z)V

    .line 1333
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1334
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 3277
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 830
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 3286
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

    iget v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 3288
    :cond_0
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    .line 2819
    new-instance v4, Lcom/moblynx/cameraics/VideoCamera$6;

    invoke-direct {v4, p0}, Lcom/moblynx/cameraics/VideoCamera$6;-><init>(Lcom/moblynx/cameraics/VideoCamera;)V

    .line 2824
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

    .line 2825
    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2826
    const v2, 0x7f080077

    invoke-virtual {p0, v2}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2827
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2828
    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/moblynx/cameraics/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2824
    invoke-virtual/range {v0 .. v6}, Lcom/moblynx/cameraics/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2829
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/moblynx/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->stopVideoRecording()V

    .line 811
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->doReturnToCaller(Z)V

    .line 812
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/moblynx/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 805
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/VideoCamera;->doReturnToCaller(Z)V

    .line 806
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/moblynx/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->startPlayVideoActivity()V

    .line 801
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/moblynx/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->deleteCurrentVideo()V

    .line 795
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->hideAlert()V

    .line 796
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 7

    .prologue
    .line 2854
    iget-boolean v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    if-eqz v4, :cond_0

    .line 2909
    :goto_0
    return-void

    .line 2855
    :cond_0
    iget-object v5, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    monitor-enter v5

    .line 2858
    :try_start_0
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_1

    monitor-exit v5

    goto :goto_0

    .line 2855
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2861
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2860
    invoke-static {v4, v6}, Lcom/moblynx/cameraics/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v2

    .line 2862
    .local v2, recordLocation:Z
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mLocationManager:Lcom/moblynx/cameraics/LocationManager;

    invoke-virtual {v4, v2}, Lcom/moblynx/cameraics/LocationManager;->recordLocation(Z)V

    .line 2865
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->updateEffectSelection()Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 2868
    :cond_2
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v4}, Lcom/moblynx/cameraics/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 2869
    .local v0, cameraId:I
    iget v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    if-eq v4, v0, :cond_4

    .line 2874
    iget-boolean v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_3

    .line 2876
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2883
    .local v1, intent:Landroid/content/Intent;
    :goto_1
    const-string v4, "background_uri_gallery"

    iget-object v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2884
    const-string v4, "reset_effect"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2885
    invoke-static {p0, v1}, Lcom/moblynx/cameraics/MenuHelper;->gotoVideoMode(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2886
    invoke-virtual {p0}, Lcom/moblynx/cameraics/VideoCamera;->finish()V

    .line 2855
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2
    monitor-exit v5

    goto :goto_0

    .line 2878
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAMERA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 2888
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->readVideoPreferences()V

    .line 2889
    iget-boolean v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v4}, Lcom/moblynx/cameraics/VideoCamera;->showTimeLapseUI(Z)V

    .line 2891
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 2892
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v4, v6, :cond_5

    .line 2893
    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/moblynx/cameraics/VideoCamera;->mDesiredPreviewHeight:I

    if-ne v4, v6, :cond_5

    .line 2895
    const v4, 0x100400

    invoke-static {v4}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2897
    :cond_5
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2898
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 2902
    :goto_3
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2903
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->startPreview()V

    goto :goto_2

    .line 2900
    :cond_6
    iget-object v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mEffectsRecorder:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v4}, Lcom/moblynx/cameraics/EffectsRecorder;->release()V

    goto :goto_3

    .line 2905
    :cond_7
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->collapseCameraControls()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    .line 838
    .local v0, stop:Z
    if-eqz v0, :cond_3

    .line 839
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/moblynx/cameraics/VideoCamera;->onStopVideoRecording(Z)V

    .line 843
    :goto_1
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/moblynx/cameraics/ShutterButton;->setEnabled(Z)V

    .line 848
    iget-boolean v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 849
    :cond_2
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 850
    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    .line 849
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 841
    :cond_3
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 857
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/moblynx/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-eqz v0, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->showSharePopup()V

    .line 790
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 3142
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3143
    new-instance v2, Lcom/moblynx/cameraics/ui/RotateTextToast;

    const v3, 0x7f0800e3

    .line 3144
    iget v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    .line 3143
    invoke-direct {v2, p0, v3, v4}, Lcom/moblynx/cameraics/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    .line 3144
    invoke-virtual {v2}, Lcom/moblynx/cameraics/ui/RotateTextToast;->show()V

    .line 3163
    :cond_0
    :goto_0
    return v1

    .line 3148
    :cond_1
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mSnapshotInProgress:Z

    if-nez v3, :cond_0

    .line 3149
    iget-boolean v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->effectsActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3154
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I

    iget v4, p0, Lcom/moblynx/cameraics/VideoCamera;->mOrientation:I

    invoke-static {v1, v3, v4}, Lcom/moblynx/cameraics/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 3155
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mLocationManager:Lcom/moblynx/cameraics/LocationManager;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 3156
    .local v0, loc:Landroid/location/Location;
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/moblynx/cameraics/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 3157
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3159
    const-string v1, "videocamera"

    const-string v3, "Video snapshot start"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v3, Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;

    invoke-direct {v3, p0, v0}, Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;-><init>(Lcom/moblynx/cameraics/VideoCamera;Landroid/location/Location;)V

    invoke-virtual {v1, v5, v5, v5, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 3161
    invoke-virtual {p0, v2}, Lcom/moblynx/cameraics/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 3162
    iput-boolean v2, p0, Lcom/moblynx/cameraics/VideoCamera;->mSnapshotInProgress:Z

    move v1, v2

    .line 3163
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1338
    invoke-super {p0}, Lcom/moblynx/cameraics/ActivityBase;->onUserInteraction()V

    .line 1339
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->keepScreenOnAwhile()V

    .line 1340
    :cond_0
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3132
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3133
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/PreviewFrameLayout;->showBorder(Z)V

    .line 3134
    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/moblynx/cameraics/ui/IndicatorControlContainer;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;->enableZoom(Z)V

    .line 3135
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ShutterButton;->setEnabled(Z)V

    .line 3137
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 3134
    goto :goto_0

    :cond_2
    move v1, v2

    .line 3135
    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1527
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1528
    const-string v0, "videocamera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceChanged. w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iput-object p1, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1535
    iput p3, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceWidth:I

    .line 1536
    iput p4, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHeight:I

    .line 1538
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1558
    iget-boolean v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/moblynx/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/moblynx/cameraics/VideoCamera;->mDisplayRotation:I

    if-ne v0, v1, :cond_2

    .line 1559
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1560
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1562
    :cond_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->stopVideoRecording()V

    .line 1563
    invoke-direct {p0}, Lcom/moblynx/cameraics/VideoCamera;->startPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1568
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moblynx/cameraics/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1572
    return-void
.end method
