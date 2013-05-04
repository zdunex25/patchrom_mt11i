.class public Lcom/android/cameraics/Camera;
.super Lcom/android/cameraics/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/android/cameraics/FocusManager$Listener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/cameraics/ModePicker$OnModeChangeListener;
.implements Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/cameraics/LocationManager$Listener;
.implements Lcom/google/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/Camera$AutoFocusCallback;,
        Lcom/android/cameraics/Camera$ImageSaver;,
        Lcom/android/cameraics/Camera$JpegPictureCallback;,
        Lcom/android/cameraics/Camera$MainHandler;,
        Lcom/android/cameraics/Camera$MyOrientationEventListener;,
        Lcom/android/cameraics/Camera$PopupGestureListener;,
        Lcom/android/cameraics/Camera$PostViewPictureCallback;,
        Lcom/android/cameraics/Camera$RawPictureCallback;,
        Lcom/android/cameraics/Camera$SaveRequest;,
        Lcom/android/cameraics/Camera$ShutterCallback;,
        Lcom/android/cameraics/Camera$ZoomChangeListener;,
        Lcom/android/cameraics/Camera$ZoomListener;
    }
.end annotation


# static fields
.field private static final CHECK_DISPLAY_ROTATION:I = 0x5

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final CROP_MSG:I = 0x1

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final FOCUSING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x4

.field private static final SHOW_TAP_TO_FOCUS_TOAST:I = 0x6

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field public static final STEP:I = 0xa

.field private static final TAG:Ljava/lang/String; = "camera"

.field private static final TIMER_UPDATE:I = 0x8

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final UPDATE_THUMBNAIL:I = 0x7

.field private static final ZOOM_START:I = 0x1

.field private static final ZOOM_STOPPED:I = 0x0

.field private static final ZOOM_STOPPING:I = 0x2

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private final TIMER_READY:I

.field private final TIMER_RUNNING:I

.field private final TIMER_STOPPED:I

.field private adMobRotable:Lcom/android/cameraics/ui/RotateLayout;

.field private faceDetectionListener:Ljava/lang/Object;

.field private guideLinesLayout:Landroid/widget/LinearLayout;

.field private inMobiRotable:Lcom/android/cameraics/ui/RotateLayout;

.field private isBurstModeActive:Z

.field private isInSilentMode:Z

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/cameraics/Camera$AutoFocusCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBackCameraId:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mBurstIndicator:Landroid/widget/TextView;

.field private mCameraDisabled:Z

.field private mCameraId:I

.field mCameraOpenThread:Ljava/lang/Thread;

.field mCameraPreviewThread:Ljava/lang/Thread;

.field private mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

.field private mCameraState:I

.field private mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/cameraics/CameraErrorCallback;

.field private mExposureIndicator:Landroid/widget/TextView;

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/cameraics/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFocusAreaIndicator:Lcom/android/cameraics/ui/RotateLayout;

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/widget/ImageView;

.field private mFocusManager:Lcom/android/cameraics/FocusManager;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mFrontCameraId:I

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

.field private mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mLocationManager:Lcom/android/cameraics/LocationManager;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mModePicker:Lcom/android/cameraics/ModePicker;

.field private mNoShareToast:Landroid/widget/Toast;

.field private mNotSelectableToast:Landroid/widget/Toast;

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Lcom/android/cameraics/ui/Rotatable;

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/cameraics/Camera$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPicturesRemaining:J

.field private mPopupGestureDetector:Landroid/view/GestureDetector;

.field private final mPostViewPictureCallback:Lcom/android/cameraics/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;

.field private mPreferences:Lcom/android/cameraics/ComboPreferences;

.field private mPreviewFrame:Landroid/view/View;

.field private mPreviewFrameLayout:Lcom/android/cameraics/PreviewFrameLayout;

.field private mPreviewPanel:Landroid/view/View;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/cameraics/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReviewCancelButton:Lcom/android/cameraics/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/cameraics/ui/Rotatable;

.field private mRotateDialog:Lcom/android/cameraics/RotateDialogController;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneIndicator:Landroid/widget/ImageView;

.field private mSceneMode:Ljava/lang/String;

.field private mSharePopup:Lcom/android/cameraics/ui/SharePopup;

.field private mShutterButton:Lcom/android/cameraics/ShutterButton;

.field private final mShutterCallback:Lcom/android/cameraics/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSmoothZoomSupported:Z

.field private mSnapshotOnIdle:Z

.field private mStartTime:J

.field private mStorageHint:Lcom/android/cameraics/OnScreenHint;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetZoomValue:I

.field private mThumbnail:Lcom/android/cameraics/Thumbnail;

.field private mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

.field private mTimerIndicator:Landroid/widget/TextView;

.field private mUpdateSet:I

.field private mWhiteBalanceIndicator:Landroid/widget/ImageView;

.field private mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

.field private final mZoomListener:Lcom/android/cameraics/Camera$ZoomListener;

.field private mZoomMax:I

.field private mZoomState:I

.field private mZoomValue:I

.field private promoRotable:Lcom/android/cameraics/ui/Rotatable;

.field private timerDelay:J

.field private timerState:I

.field private vstabSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/cameraics/ActivityBase;-><init>()V

    .line 138
    iput v2, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    .line 139
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mSmoothZoomSupported:Z

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cameraics/Camera;->mOrientation:I

    .line 161
    iput v2, p0, Lcom/android/cameraics/Camera;->mOrientationCompensation:I

    .line 167
    iput-object v3, p0, Lcom/android/cameraics/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 170
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mOpenCameraFail:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mCameraDisabled:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mFaceDetectionStarted:Z

    .line 218
    new-instance v0, Lcom/android/cameraics/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/cameraics/Camera$1;-><init>(Lcom/android/cameraics/Camera;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 242
    iput-wide v5, p0, Lcom/android/cameraics/Camera;->mStartTime:J

    .line 243
    iput-wide v5, p0, Lcom/android/cameraics/Camera;->timerDelay:J

    .line 244
    iput v2, p0, Lcom/android/cameraics/Camera;->TIMER_STOPPED:I

    .line 245
    iput v4, p0, Lcom/android/cameraics/Camera;->TIMER_RUNNING:I

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/cameraics/Camera;->TIMER_READY:I

    .line 249
    iput v2, p0, Lcom/android/cameraics/Camera;->timerState:I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mBuilder:Ljava/lang/StringBuilder;

    .line 253
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mFormatter:Ljava/util/Formatter;

    .line 254
    new-array v0, v4, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mFormatterArgs:[Ljava/lang/Object;

    .line 279
    iput v2, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    .line 280
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    .line 283
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mDidRegister:Z

    .line 287
    new-instance v0, Lcom/android/cameraics/Camera$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/cameraics/Camera$ShutterCallback;-><init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$ShutterCallback;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mShutterCallback:Lcom/android/cameraics/Camera$ShutterCallback;

    .line 289
    new-instance v0, Lcom/android/cameraics/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/cameraics/Camera$PostViewPictureCallback;-><init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$PostViewPictureCallback;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mPostViewPictureCallback:Lcom/android/cameraics/Camera$PostViewPictureCallback;

    .line 291
    new-instance v0, Lcom/android/cameraics/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/cameraics/Camera$RawPictureCallback;-><init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$RawPictureCallback;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mRawPictureCallback:Lcom/android/cameraics/Camera$RawPictureCallback;

    .line 293
    new-instance v0, Lcom/android/cameraics/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/cameraics/Camera$AutoFocusCallback;-><init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$AutoFocusCallback;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mAutoFocusCallback:Lcom/android/cameraics/Camera$AutoFocusCallback;

    .line 294
    new-instance v0, Lcom/android/cameraics/Camera$ZoomListener;

    invoke-direct {v0, p0, v3}, Lcom/android/cameraics/Camera$ZoomListener;-><init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$ZoomListener;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mZoomListener:Lcom/android/cameraics/Camera$ZoomListener;

    .line 295
    new-instance v0, Lcom/android/cameraics/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/cameraics/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mErrorCallback:Lcom/android/cameraics/CameraErrorCallback;

    .line 320
    new-instance v0, Lcom/android/cameraics/Camera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/cameraics/Camera$MainHandler;-><init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$MainHandler;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    .line 711
    new-instance v0, Lcom/android/cameraics/Camera$2;

    invoke-direct {v0, p0}, Lcom/android/cameraics/Camera$2;-><init>(Lcom/android/cameraics/Camera;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1306
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/cameraics/Camera$3;

    invoke-direct {v1, p0}, Lcom/android/cameraics/Camera$3;-><init>(Lcom/android/cameraics/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mCameraOpenThread:Ljava/lang/Thread;

    .line 1318
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/cameraics/Camera$4;

    invoke-direct {v1, p0}, Lcom/android/cameraics/Camera$4;-><init>(Lcom/android/cameraics/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    .line 105
    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1606
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/cameraics/Camera;)Z
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$10(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 267
    iget v0, p0, Lcom/android/cameraics/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$11(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2371
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$12(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$13(Lcom/android/cameraics/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3039
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$15(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/Camera$ImageSaver;
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$16(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->timerDelay:J

    return-wide v0
.end method

.method static synthetic access$17(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$18(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->updateTimerOnScreenIndicator(I)V

    return-void
.end method

.method static synthetic access$19(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput p1, p0, Lcom/android/cameraics/Camera;->timerState:I

    return-void
.end method

.method static synthetic access$2(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$20(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/ui/SharePopup;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    return-object v0
.end method

.method static synthetic access$21(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$22(Lcom/android/cameraics/Camera;)Z
    .locals 1
    .parameter

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$23(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$24(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput p1, p0, Lcom/android/cameraics/Camera;->mTargetZoomValue:I

    return-void
.end method

.method static synthetic access$25(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 138
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    return v0
.end method

.method static synthetic access$26(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput p1, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    return-void
.end method

.method static synthetic access$27(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/ui/IndicatorControlContainer;
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    return-object v0
.end method

.method static synthetic access$28(Lcom/android/cameraics/Camera;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPreviewFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$29(Lcom/android/cameraics/Camera;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-wide p1, p0, Lcom/android/cameraics/Camera;->mShutterCallbackTime:J

    return-void
.end method

.method static synthetic access$3(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 326
    iget v0, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$30(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$31(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$32(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/FocusManager;
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    return-object v0
.end method

.method static synthetic access$33(Lcom/android/cameraics/Camera;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/android/cameraics/Camera;->mPostViewPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$34(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$35(Lcom/android/cameraics/Camera;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/android/cameraics/Camera;->mRawPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$36(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$37(Lcom/android/cameraics/Camera;)Z
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->isInSilentMode:Z

    return v0
.end method

.method static synthetic access$38(Lcom/android/cameraics/Camera;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    iput-wide p1, p0, Lcom/android/cameraics/Camera;->mJpegPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$39(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/android/cameraics/Camera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/cameraics/Camera;->mOpenCameraFail:Z

    return-void
.end method

.method static synthetic access$40(Lcom/android/cameraics/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$41(Lcom/android/cameraics/Camera;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/cameraics/Camera;->mJpegImageData:[B

    return-void
.end method

.method static synthetic access$42(Lcom/android/cameraics/Camera;)Z
    .locals 1
    .parameter

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$43(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2802
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$44(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1642
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$45(Lcom/android/cameraics/Camera;)J
    .locals 2
    .parameter

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$46(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$47(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    return-void
.end method

.method static synthetic access$48(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/ui/ZoomControl;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    return-object v0
.end method

.method static synthetic access$49(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/android/cameraics/Camera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$5(Lcom/android/cameraics/Camera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/cameraics/Camera;->mCameraDisabled:Z

    return-void
.end method

.method static synthetic access$50(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/PreviewFrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPreviewFrameLayout:Lcom/android/cameraics/PreviewFrameLayout;

    return-object v0
.end method

.method static synthetic access$51(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Thumbnail;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    return-void
.end method

.method static synthetic access$52(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/ui/RotateImageView;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$53(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/Thumbnail;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    return-object v0
.end method

.method static synthetic access$54(Lcom/android/cameraics/Camera;Lcom/android/cameraics/ui/SharePopup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    return-void
.end method

.method static synthetic access$55(Lcom/android/cameraics/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$56(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/ComboPreferences;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$57(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 158
    iget v0, p0, Lcom/android/cameraics/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$58(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput p1, p0, Lcom/android/cameraics/Camera;->mOrientation:I

    return-void
.end method

.method static synthetic access$59(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 161
    iget v0, p0, Lcom/android/cameraics/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$6(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3047
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$60(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput p1, p0, Lcom/android/cameraics/Camera;->mOrientationCompensation:I

    return-void
.end method

.method static synthetic access$61(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1583
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$62(Lcom/android/cameraics/Camera;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2876
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$63(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 327
    iget v0, p0, Lcom/android/cameraics/Camera;->mFrontCameraId:I

    return v0
.end method

.method static synthetic access$64(Lcom/android/cameraics/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 328
    iget v0, p0, Lcom/android/cameraics/Camera;->mBackCameraId:I

    return v0
.end method

.method static synthetic access$65(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2984
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$7(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2380
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$8(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$9(Lcom/android/cameraics/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2762
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 2851
    new-instance v0, Lcom/android/cameraics/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/cameraics/Camera$6;-><init>(Lcom/android/cameraics/Camera;)V

    invoke-static {p1, v2, v0}, Lcom/android/cameraics/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 2856
    const/4 v0, 0x2

    new-instance v1, Lcom/android/cameraics/Camera$7;

    invoke-direct {v1, p0}, Lcom/android/cameraics/Camera$7;-><init>(Lcom/android/cameraics/Camera;)V

    invoke-static {p1, v0, v1}, Lcom/android/cameraics/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 2862
    iget v0, p0, Lcom/android/cameraics/Camera;->mNumberOfCameras:I

    if-le v0, v2, :cond_0

    .line 2863
    const v0, 0x7f08007d

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2864
    new-instance v1, Lcom/android/cameraics/Camera$8;

    invoke-direct {v1, p0}, Lcom/android/cameraics/Camera$8;-><init>(Lcom/android/cameraics/Camera;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2872
    const v1, 0x1080037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2874
    :cond_0
    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 495
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 496
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/cameraics/Camera$5;

    invoke-direct {v1, p0}, Lcom/android/cameraics/Camera$5;-><init>(Lcom/android/cameraics/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 502
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1950
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x2faf080

    const-wide/16 v2, 0x0

    .line 1607
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-static {v0}, Lcom/android/cameraics/Storage;->getAvailableSpace(Lcom/android/cameraics/ComboPreferences;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    .line 1608
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 1609
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    sub-long/2addr v0, v4

    .line 1610
    const-wide/32 v2, 0x16e360

    div-long/2addr v0, v2

    .line 1609
    iput-wide v0, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    .line 1615
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateStorageHint()V

    .line 1616
    return-void

    .line 1611
    :cond_1
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1612
    iput-wide v2, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2347
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2348
    invoke-static {}, Lcom/android/cameraics/CameraHolder;->instance()Lcom/android/cameraics/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cameraics/CameraHolder;->release()V

    .line 2349
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mFaceDetectionStarted:Z

    .line 2350
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2354
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0, v1}, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->setFaceDetectionListener(Landroid/hardware/Camera;Ljava/lang/Object;)V

    .line 2355
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2356
    iput-object v1, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 2357
    invoke-direct {p0, v2}, Lcom/android/cameraics/Camera;->setCameraState(I)V

    .line 2358
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v0}, Lcom/android/cameraics/FocusManager;->onCameraReleased()V

    .line 2360
    :cond_0
    return-void
.end method

.method private collapseCameraControls()Z
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    const/4 v0, 0x1

    .line 1541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAttach()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 1643
    iget-boolean v10, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-eqz v10, :cond_0

    .line 1716
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mJpegImageData:[B

    .line 1649
    .local v2, data:[B
    iget-object v10, p0, Lcom/android/cameraics/Camera;->mCropValue:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 1654
    iget-object v10, p0, Lcom/android/cameraics/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_1

    .line 1655
    const/4 v6, 0x0

    .line 1657
    .local v6, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/cameraics/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/cameraics/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 1658
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1659
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1661
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/android/cameraics/Camera;->setResultEx(I)V

    .line 1662
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    invoke-static {v6}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1663
    :catch_0
    move-exception v10

    .line 1666
    invoke-static {v6}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1665
    :catchall_0
    move-exception v10

    .line 1666
    invoke-static {v6}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1667
    throw v10

    .line 1669
    .end local v6           #outputStream:Ljava/io/OutputStream;
    :cond_1
    invoke-static {v2}, Lcom/android/cameraics/Exif;->getOrientation([B)I

    move-result v5

    .line 1670
    .local v5, orientation:I
    const v10, 0xc800

    invoke-static {v2, v10}, Lcom/android/cameraics/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1671
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5}, Lcom/android/cameraics/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1673
    new-instance v10, Landroid/content/Intent;

    const-string v11, "inline-data"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    .line 1672
    invoke-virtual {p0, v12, v10}, Lcom/android/cameraics/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1674
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->finish()V

    goto :goto_0

    .line 1678
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #orientation:I
    :cond_2
    const/4 v9, 0x0

    .line 1679
    .local v9, tempUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1681
    .local v8, tempStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v10, "crop-temp"

    invoke-virtual {p0, v10}, Lcom/android/cameraics/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1682
    .local v7, path:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1683
    const-string v10, "crop-temp"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/cameraics/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 1684
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1685
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1686
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 1696
    invoke-static {v8}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1699
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1700
    .local v4, newExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/cameraics/Camera;->mCropValue:Ljava/lang/String;

    const-string v11, "circle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1701
    const-string v10, "circleCrop"

    const-string v11, "true"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    :cond_3
    iget-object v10, p0, Lcom/android/cameraics/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_4

    .line 1704
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/cameraics/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1709
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.cameraics.action.CROP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1711
    .local v1, cropIntent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1712
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1714
    invoke-virtual {p0, v1, v13}, Lcom/android/cameraics/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1687
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v4           #newExtras:Landroid/os/Bundle;
    .end local v7           #path:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 1688
    .local v3, ex:Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {p0, v10}, Lcom/android/cameraics/Camera;->setResultEx(I)V

    .line 1689
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1696
    invoke-static {v8}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1691
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 1692
    .local v3, ex:Ljava/io/IOException;
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {p0, v10}, Lcom/android/cameraics/Camera;->setResultEx(I)V

    .line 1693
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1696
    invoke-static {v8}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1695
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 1696
    invoke-static {v8}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1697
    throw v10

    .line 1706
    .restart local v4       #newExtras:Landroid/os/Bundle;
    .restart local v7       #path:Ljava/io/File;
    :cond_4
    const-string v10, "return-data"

    invoke-virtual {v4, v10, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 1719
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/cameraics/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1720
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->finish()V

    .line 1721
    return-void
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/IndicatorControlContainer;->setEnabled(Z)V

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mModePicker:Lcom/android/cameraics/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mModePicker:Lcom/android/cameraics/ModePicker;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ModePicker;->setEnabled(Z)V

    .line 1549
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/ZoomControl;->setEnabled(Z)V

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/RotateImageView;->setEnabled(Z)V

    .line 1551
    :cond_3
    return-void
.end method

.method private getPreferredCameraId()V
    .locals 2

    .prologue
    .line 1295
    new-instance v1, Lcom/android/cameraics/ComboPreferences;

    invoke-direct {v1, p0}, Lcom/android/cameraics/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 1296
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/cameraics/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cameraics/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1297
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-static {v1}, Lcom/android/cameraics/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    .line 1300
    invoke-static {p0}, Lcom/android/cameraics/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1301
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1302
    iput v0, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    .line 1304
    :cond_0
    return-void
.end method

.method private gotoGallery()V
    .locals 0

    .prologue
    .line 2782
    invoke-static {p0}, Lcom/android/cameraics/MenuHelper;->gotoCameraImageGallery(Landroid/app/Activity;)V

    .line 2783
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 5

    .prologue
    .line 2815
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 2816
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 2817
    .local v1, pickIds:[I
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 2821
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    invoke-static {v2}, Lcom/android/cameraics/Util;->fadeIn(Landroid/view/View;)V

    .line 2822
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    invoke-static {v2}, Lcom/android/cameraics/Util;->fadeIn(Landroid/view/View;)V

    .line 2824
    .end local v1           #pickIds:[I
    :cond_0
    return-void

    .line 2817
    .restart local v1       #pickIds:[I
    :cond_1
    aget v0, v1, v2

    .line 2818
    .local v0, id:I
    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/cameraics/Util;->fadeOut(Landroid/view/View;)V

    .line 2817
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2816
    nop

    :array_0
    .array-data 0x4
        0x6et 0x0t 0xdt 0x7ft
        0x6dt 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private initOnScreenIndicator()V
    .locals 1

    .prologue
    .line 730
    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    .line 731
    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mExposureIndicator:Landroid/widget/TextView;

    .line 732
    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    .line 733
    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    .line 735
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 734
    iput-object v0, p0, Lcom/android/cameraics/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    .line 736
    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    .line 738
    const v0, 0x7f0d0069

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mBurstIndicator:Landroid/widget/TextView;

    .line 740
    const v0, 0x7f0d006a

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mTimerIndicator:Landroid/widget/TextView;

    .line 742
    return-void
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    .line 506
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/cameraics/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/android/cameraics/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    .line 507
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateThumbnailButton()V

    .line 508
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3048
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3049
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    iget-object v3, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/cameraics/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3053
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->getMaxNumFocusAreas(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3054
    const-string v0, "auto"

    .line 3055
    iget-object v3, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 3054
    invoke-static {v0, v3}, Lcom/android/cameraics/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 3055
    if-eqz v0, :cond_0

    move v0, v1

    .line 3053
    :goto_0
    iput-boolean v0, p0, Lcom/android/cameraics/Camera;->mFocusAreaSupported:Z

    .line 3059
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->getMaxNumMeteringAreas(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/cameraics/Camera;->mMeteringAreaSupported:Z

    .line 3065
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cameraics/Camera;->mAeLockSupported:Z

    .line 3066
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cameraics/Camera;->mAwbLockSupported:Z

    .line 3069
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->isVideoStabilizationSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cameraics/Camera;->vstabSupported:Z

    .line 3073
    return-void

    :cond_0
    move v0, v2

    .line 3055
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3059
    goto :goto_1
.end method

.method private initializeFirstTime()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 441
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 445
    :cond_0
    new-instance v0, Lcom/android/cameraics/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/cameraics/Camera$MyOrientationEventListener;-><init>(Lcom/android/cameraics/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mOrientationListener:Lcom/android/cameraics/Camera$MyOrientationEventListener;

    .line 446
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mOrientationListener:Lcom/android/cameraics/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/cameraics/Camera$MyOrientationEventListener;->enable()V

    .line 450
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 449
    invoke-static {v0, v1}, Lcom/android/cameraics/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v8

    .line 451
    .local v8, recordLocation:Z
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initOnScreenIndicator()V

    .line 452
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mLocationManager:Lcom/android/cameraics/LocationManager;

    invoke-virtual {v0, v8}, Lcom/android/cameraics/LocationManager;->recordLocation(Z)V

    .line 454
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->keepMediaProviderInstance()V

    .line 455
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->checkStorage()V

    .line 458
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 459
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initThumbnailButton()V

    .line 464
    :cond_1
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ShutterButton;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    .line 465
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/cameraics/ShutterButton;->setOnShutterButtonListener(Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/android/cameraics/ShutterButton;->setVisibility(I)V

    .line 469
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mPreviewFrame:Landroid/view/View;

    .line 470
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mFocusAreaIndicator:Lcom/android/cameraics/ui/RotateLayout;

    .line 472
    invoke-static {}, Lcom/android/cameraics/CameraHolder;->instance()Lcom/android/cameraics/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cameraics/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    aget-object v7, v0, v1

    .line 473
    .local v7, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v9, :cond_2

    move v5, v9

    .line 474
    .local v5, mirror:Z
    :cond_2
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mFocusAreaIndicator:Lcom/android/cameraics/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreviewFrame:Landroid/view/View;

    iget-object v3, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    .line 475
    iget v6, p0, Lcom/android/cameraics/Camera;->mDisplayOrientation:I

    move-object v4, p0

    .line 474
    invoke-virtual/range {v0 .. v6}, Lcom/android/cameraics/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/android/cameraics/ui/FaceView;Lcom/android/cameraics/FocusManager$Listener;ZI)V

    .line 476
    new-instance v0, Lcom/android/cameraics/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/cameraics/Camera$ImageSaver;-><init>(Lcom/android/cameraics/Camera;)V

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    .line 477
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/cameraics/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 478
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->installIntentFilter()V

    .line 479
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initializeZoom()V

    .line 480
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateOnScreenIndicators()V

    .line 481
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->startFaceDetection()V

    .line 483
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {v0, v1, v9}, Lcom/android/cameraics/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 489
    :cond_3
    iput-boolean v9, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    .line 490
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->addIdleHandler()V

    goto/16 :goto_0
.end method

.method private initializeIndicatorControl()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1499
    .line 1500
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/IndicatorControlContainer;

    .line 1499
    iput-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    .line 1501
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    if-nez v0, :cond_0

    .line 1534
    :goto_0
    return-void

    .line 1502
    :cond_0
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->loadCameraPreferences()V

    .line 1503
    new-array v4, v7, [Ljava/lang/String;

    .line 1504
    const-string v0, "pref_camera_flashmode_key"

    aput-object v0, v4, v1

    .line 1505
    const-string v0, "pref_camera_whitebalance_key"

    aput-object v0, v4, v2

    .line 1506
    const-string v0, "pref_camera_exposure_key"

    aput-object v0, v4, v3

    .line 1507
    const-string v0, "pref_camera_scenemode_key"

    aput-object v0, v4, v6

    .line 1508
    .local v4, SETTING_KEYS:[Ljava/lang/String;
    const/16 v0, 0xa

    new-array v5, v0, [Ljava/lang/String;

    .line 1509
    const-string v0, "pref_camera_recordlocation_key"

    aput-object v0, v5, v1

    .line 1510
    const-string v0, "pref_camera_picturesize_key"

    aput-object v0, v5, v2

    .line 1512
    const-string v0, "pref_camera_coloreffect_key"

    aput-object v0, v5, v3

    .line 1514
    const-string v0, "pref_camera_silentmode_key"

    aput-object v0, v5, v6

    .line 1515
    const-string v0, "pref_camera_focusmode_key"

    aput-object v0, v5, v7

    const/4 v0, 0x5

    .line 1517
    const-string v1, "pref_camera_myjpegquality_key"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    .line 1519
    const-string v1, "pref_camera_volumekeys_key"

    aput-object v1, v5, v0

    const/4 v0, 0x7

    .line 1521
    const-string v1, "pref_camera_timer_key"

    aput-object v1, v5, v0

    const/16 v0, 0x8

    .line 1523
    const-string v1, "pref_camera_guidelines_key"

    aput-object v1, v5, v0

    const/16 v0, 0x9

    .line 1525
    const-string v1, "pref_camera_storagesource_key"

    aput-object v1, v5, v0

    .line 1527
    .local v5, OTHER_SETTING_KEYS:[Ljava/lang/String;
    const v0, 0x7f020074

    invoke-static {v0}, Lcom/android/cameraics/ui/CameraPicker;->setImageResourceId(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;

    .line 1529
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    move-object v1, p0

    .line 1528
    invoke-virtual/range {v0 .. v5}, Lcom/android/cameraics/ui/IndicatorControlContainer;->initialize(Landroid/content/Context;Lcom/android/cameraics/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1532
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateSceneModeUI()V

    .line 1533
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0, p0}, Lcom/android/cameraics/ui/IndicatorControlContainer;->setListener(Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;)V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mOrientationListener:Lcom/android/cameraics/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/cameraics/Camera$MyOrientationEventListener;->enable()V

    .line 532
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 531
    invoke-static {v1, v2}, Lcom/android/cameraics/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 533
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mLocationManager:Lcom/android/cameraics/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/cameraics/LocationManager;->recordLocation(Z)V

    .line 535
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->installIntentFilter()V

    .line 536
    new-instance v1, Lcom/android/cameraics/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/cameraics/Camera$ImageSaver;-><init>(Lcom/android/cameraics/Camera;)V

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    .line 537
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initializeZoom()V

    .line 538
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->keepMediaProviderInstance()V

    .line 539
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->checkStorage()V

    .line 540
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->hidePostCaptureAlert()V

    .line 542
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateThumbnailButton()V

    .line 544
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mModePicker:Lcom/android/cameraics/ModePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/cameraics/ModePicker;->setCurrentMode(I)V

    .line 546
    :cond_0
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 578
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/cameraics/Camera;->mZoomMax:I

    .line 582
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    iget v1, p0, Lcom/android/cameraics/Camera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/ZoomControl;->setZoomMax(I)V

    .line 583
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 584
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mSmoothZoomSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/ZoomControl;->setSmoothZoomSupported(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    new-instance v1, Lcom/android/cameraics/Camera$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/cameraics/Camera$ZoomChangeListener;-><init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$ZoomChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/ZoomControl;->setOnZoomChangeListener(Lcom/android/cameraics/ui/ZoomControl$OnZoomChangedListener;)V

    .line 586
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mZoomListener:Lcom/android/cameraics/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1822
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1824
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1825
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1826
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1827
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/cameraics/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1828
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/cameraics/Camera;->mDidRegister:Z

    .line 1829
    return-void
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2786
    iget v1, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v1}, Lcom/android/cameraics/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2790
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2791
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
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

    .line 2444
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

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 433
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 432
    iput-object v0, p0, Lcom/android/cameraics/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 435
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2965
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2966
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2967
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2968
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 1492
    new-instance v0, Lcom/android/cameraics/CameraSettings;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1493
    iget v2, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/cameraics/CameraHolder;->instance()Lcom/android/cameraics/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cameraics/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    .line 1492
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/cameraics/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1494
    .local v0, settings:Lcom/android/cameraics/CameraSettings;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/android/cameraics/CameraSettings;->getPreferenceGroup(I)Lcom/android/cameraics/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;

    .line 1495
    return-void
.end method

.method private onZoomValueChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 591
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_3

    .line 594
    iget v0, p0, Lcom/android/cameraics/Camera;->mTargetZoomValue:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    if-eqz v0, :cond_2

    .line 595
    iput p1, p0, Lcom/android/cameraics/Camera;->mTargetZoomValue:I

    .line 596
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    if-ne v0, v1, :cond_0

    .line 597
    iput v2, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    .line 598
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0

    .line 600
    :cond_2
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 601
    iput p1, p0, Lcom/android/cameraics/Camera;->mTargetZoomValue:I

    .line 602
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 603
    iput v1, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    goto :goto_0

    .line 606
    :cond_3
    iput p1, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    .line 607
    invoke-direct {p0, v2}, Lcom/android/cameraics/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "flashMode"
    .parameter "whiteBalance"
    .parameter "focusMode"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1474
    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    .line 1475
    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    .line 1476
    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    .line 1473
    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    .line 1478
    :cond_0
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    .line 416
    const-string v4, "0"

    .line 415
    invoke-virtual {v2, v3, v4}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/cameraics/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 419
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 421
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v2}, Lcom/android/cameraics/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 425
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2961
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2962
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2986
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2987
    iput v1, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    .line 2988
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->setCameraParametersWhenIdle(I)V

    .line 2989
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 2991
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    if-eqz v0, :cond_1

    .line 2992
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 2993
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 2994
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2993
    invoke-static {p0, v0, v1}, Lcom/android/cameraics/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/cameraics/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 2995
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2996
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onSharedPreferenceChanged()V

    .line 2999
    :cond_1
    return-void
.end method

.method private saveDataToFile(Ljava/lang/String;[B)Z
    .locals 4
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 1282
    const/4 v1, 0x0

    .line 1284
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1289
    invoke-static {v2}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1291
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 1286
    :catch_0
    move-exception v0

    .line 1289
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-static {v1}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1287
    const/4 v3, 0x0

    goto :goto_0

    .line 1288
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1289
    :goto_2
    invoke-static {v1}, Lcom/android/cameraics/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1290
    throw v3

    .line 1288
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1286
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2744
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2745
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateCameraParametersInitialize()V

    .line 2748
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2749
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateCameraParametersZoom()V

    .line 2752
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2753
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateCameraParametersPreference()V

    .line 2756
    :cond_2
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2758
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 2763
    iget v0, p0, Lcom/android/cameraics/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/cameraics/Camera;->mUpdateSet:I

    .line 2764
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2767
    iput v1, p0, Lcom/android/cameraics/Camera;->mUpdateSet:I

    .line 2779
    :cond_0
    :goto_0
    return-void

    .line 2769
    :cond_1
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2770
    iget v0, p0, Lcom/android/cameraics/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->setCameraParameters(I)V

    .line 2771
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateSceneModeUI()V

    .line 2772
    iput v1, p0, Lcom/android/cameraics/Camera;->mUpdateSet:I

    goto :goto_0

    .line 2774
    :cond_2
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    .line 2776
    const-wide/16 v1, 0x3e8

    .line 2775
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1213
    iput p1, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    .line 1214
    packed-switch p1, :pswitch_data_0

    .line 1224
    :goto_0
    return-void

    .line 1217
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->enableCameraControls(Z)V

    goto :goto_0

    .line 1221
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->enableCameraControls(Z)V

    goto :goto_0

    .line 1214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2372
    invoke-static {p0}, Lcom/android/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/cameraics/Camera;->mDisplayRotation:I

    .line 2373
    iget v0, p0, Lcom/android/cameraics/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/cameraics/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/cameraics/Camera;->mDisplayOrientation:I

    .line 2374
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget v1, p0, Lcom/android/cameraics/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 2375
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    iget v1, p0, Lcom/android/cameraics/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/FaceView;->setDisplayOrientation(I)V

    .line 2378
    :cond_0
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 1584
    const/16 v3, 0xe

    new-array v1, v3, [Lcom/android/cameraics/ui/Rotatable;

    iget-object v3, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mModePicker:Lcom/android/cameraics/ModePicker;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    .line 1585
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    aput-object v4, v1, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mFocusAreaIndicator:Lcom/android/cameraics/ui/RotateLayout;

    aput-object v4, v1, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 1586
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mReviewCancelButton:Lcom/android/cameraics/ui/Rotatable;

    aput-object v4, v1, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mReviewDoneButton:Lcom/android/cameraics/ui/Rotatable;

    aput-object v4, v1, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mRotateDialog:Lcom/android/cameraics/RotateDialogController;

    aput-object v4, v1, v3

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mOnScreenIndicators:Lcom/android/cameraics/ui/Rotatable;

    aput-object v4, v1, v3

    const/16 v3, 0xb

    .line 1588
    iget-object v4, p0, Lcom/android/cameraics/Camera;->promoRotable:Lcom/android/cameraics/ui/Rotatable;

    aput-object v4, v1, v3

    const/16 v3, 0xc

    .line 1589
    iget-object v4, p0, Lcom/android/cameraics/Camera;->inMobiRotable:Lcom/android/cameraics/ui/RotateLayout;

    aput-object v4, v1, v3

    const/16 v3, 0xd

    .line 1590
    iget-object v4, p0, Lcom/android/cameraics/Camera;->adMobRotable:Lcom/android/cameraics/ui/RotateLayout;

    aput-object v4, v1, v3

    .line 1592
    .local v1, indicators:[Lcom/android/cameraics/ui/Rotatable;
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 1595
    return-void

    .line 1592
    :cond_0
    aget-object v0, v1, v2

    .line 1593
    .local v0, indicator:Lcom/android/cameraics/ui/Rotatable;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/android/cameraics/ui/Rotatable;->setOrientation(I)V

    .line 1592
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 2364
    :try_start_0
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    return-void

    .line 2365
    :catch_0
    move-exception v0

    .line 2366
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->closeCamera()V

    .line 2367
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2795
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2796
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2797
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mSaveUri:Landroid/net/Uri;

    .line 2798
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mCropValue:Ljava/lang/String;

    .line 2800
    :cond_0
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    .line 2803
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 2804
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;

    invoke-static {v2}, Lcom/android/cameraics/Util;->fadeOut(Landroid/view/View;)V

    .line 2805
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    invoke-static {v2}, Lcom/android/cameraics/Util;->fadeOut(Landroid/view/View;)V

    .line 2807
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 2808
    .local v1, pickIds:[I
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 2812
    .end local v1           #pickIds:[I
    :cond_0
    return-void

    .line 2808
    .restart local v1       #pickIds:[I
    :cond_1
    aget v0, v1, v2

    .line 2809
    .local v0, id:I
    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/cameraics/Util;->fadeIn(Landroid/view/View;)V

    .line 2808
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2807
    nop

    :array_0
    .array-data 0x4
        0x6et 0x0t 0xdt 0x7ft
        0x6dt 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private showSharePopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3011
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/cameraics/Camera$ImageSaver;->waitDone()V

    .line 3012
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    invoke-virtual {v0}, Lcom/android/cameraics/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 3013
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/SharePopup;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3015
    :cond_0
    new-instance v0, Lcom/android/cameraics/ui/SharePopup;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    invoke-virtual {v1}, Lcom/android/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3016
    iget v4, p0, Lcom/android/cameraics/Camera;->mOrientationCompensation:I

    iget-object v5, p0, Lcom/android/cameraics/Camera;->mPreviewPanel:Landroid/view/View;

    iget-object v6, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/cameraics/ui/SharePopup;-><init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/graphics/Bitmap;ILandroid/view/View;Landroid/os/Handler;)V

    .line 3015
    iput-object v0, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    .line 3018
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    invoke-virtual {v0, v1, v7, v7, v7}, Lcom/android/cameraics/ui/SharePopup;->showAtLocation(Landroid/view/View;III)V

    .line 3019
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 4

    .prologue
    .line 3040
    new-instance v1, Lcom/android/cameraics/ui/RotateTextToast;

    const v2, 0x7f0800d2

    iget v3, p0, Lcom/android/cameraics/Camera;->mOrientation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/cameraics/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/cameraics/ui/RotateTextToast;->show()V

    .line 3042
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/cameraics/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3043
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3044
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3045
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2381
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2430
    :cond_0
    :goto_0
    return-void

    .line 2383
    :cond_1
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v1}, Lcom/android/cameraics/FocusManager;->resetTouchFocus()V

    .line 2385
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/cameraics/Camera;->mErrorCallback:Lcom/android/cameraics/CameraErrorCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2389
    iget v1, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/cameraics/Camera;->stopPreview()V

    .line 2391
    :cond_2
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/android/cameraics/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 2392
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->setDisplayOrientation()V

    .line 2394
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    if-nez v1, :cond_4

    .line 2399
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v2}, Lcom/android/cameraics/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2402
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2404
    :cond_3
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v1, v3}, Lcom/android/cameraics/FocusManager;->setAeAwbLock(Z)V

    .line 2406
    :cond_4
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/cameraics/Camera;->setCameraParameters(I)V

    .line 2409
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    .line 2410
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 2411
    :try_start_0
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2410
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2416
    :cond_5
    :try_start_1
    const-string v1, "camera"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2423
    iput v3, p0, Lcom/android/cameraics/Camera;->mZoomState:I

    .line 2424
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/cameraics/Camera;->setCameraState(I)V

    .line 2425
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v1}, Lcom/android/cameraics/FocusManager;->onPreviewStarted()V

    .line 2427
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_0

    .line 2428
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/cameraics/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2410
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2418
    :catch_0
    move-exception v0

    .line 2419
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->closeCamera()V

    .line 2420
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2433
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2434
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2436
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2437
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mFaceDetectionStarted:Z

    .line 2439
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/cameraics/Camera;->setCameraState(I)V

    .line 2440
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v0}, Lcom/android/cameraics/FocusManager;->onPreviewStopped()V

    .line 2441
    return-void
.end method

.method private switchToOtherMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 2877
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2882
    :goto_0
    return v0

    .line 2878
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/cameraics/Camera$ImageSaver;->waitDone()V

    .line 2879
    :cond_1
    invoke-static {p1, p0}, Lcom/android/cameraics/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 2880
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2881
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->finish()V

    .line 2882
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateBurstOnScreenIndicator()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mBurstIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 844
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->isBurstModeActive:Z

    if-nez v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mBurstIndicator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mBurstIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mBurstIndicator:Landroid/widget/TextView;

    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mBurstIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2450
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2451
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 2452
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2453
    .local v1, max:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2458
    .end local v1           #max:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v4}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setRecordingHint(Landroid/hardware/Camera$Parameters;Z)V

    .line 2465
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->vstabSupported:Z

    if-eqz v2, :cond_1

    .line 2468
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v4}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setVideoStabilization(Landroid/hardware/Camera$Parameters;Z)V

    .line 2477
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 29

    .prologue
    .line 2488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cameraics/Camera;->mAeLockSupported:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/cameraics/FocusManager;->getAeAwbLock()Z

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setAutoExposureLock(Landroid/hardware/Camera$Parameters;Z)V

    .line 2494
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cameraics/Camera;->mAwbLockSupported:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/cameraics/FocusManager;->getAeAwbLock()Z

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setAutoWhiteBalanceLock(Landroid/hardware/Camera$Parameters;Z)V

    .line 2501
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cameraics/Camera;->mFocusAreaSupported:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/cameraics/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2508
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cameraics/Camera;->mMeteringAreaSupported:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/cameraics/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2518
    :cond_3
    const/16 v24, 0x800

    invoke-static/range {v24 .. v24}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "cam-mode"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2524
    :cond_4
    const-string v4, "on"

    .line 2526
    .local v4, VALUE_ON:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2527
    const-string v25, "pref_camera_silentmode_key"

    const v26, 0x7f080061

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2526
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2529
    .local v16, silentString:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cameraics/Camera;->isInSilentMode:Z

    .line 2530
    const-string v24, "camera"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, " silent mode "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cameraics/Camera;->isInSilentMode:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2537
    const-string v25, "pref_camera_timer_key"

    const v26, 0x7f080066

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2536
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2538
    .local v21, timerString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cameraics/Camera;->timerDelay:J

    .line 2539
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/cameraics/Camera;->updateTimerOnScreenIndicator(I)V

    .line 2543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2544
    const-string v25, "pref_camera_picturesize_key"

    const/16 v26, 0x0

    .line 2543
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2545
    .local v14, pictureSize:Ljava/lang/String;
    if-nez v14, :cond_c

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/cameraics/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 2554
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 2556
    .local v17, size:Landroid/hardware/Camera$Size;
    const v24, 0x7f0d0041

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cameraics/Camera;->mPreviewPanel:Landroid/view/View;

    .line 2557
    const v24, 0x7f0d0059

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/cameraics/PreviewFrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cameraics/Camera;->mPreviewFrameLayout:Lcom/android/cameraics/PreviewFrameLayout;

    .line 2558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreviewFrameLayout:Lcom/android/cameraics/PreviewFrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/PreviewFrameLayout;->setAspectRatio(D)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v18

    .line 2564
    .local v18, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    .line 2563
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/cameraics/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2565
    .local v12, optimalSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 2566
    .local v13, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v13, v12}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2574
    :cond_5
    const-string v24, "camera"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Preview size is "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2579
    const-string v25, "pref_camera_scenemode_key"

    .line 2580
    const v26, 0x7f0800b1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2578
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/cameraics/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2600
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 2601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/cameraics/OnScreenHint;->cancel()V

    .line 2602
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    .line 2603
    invoke-direct/range {p0 .. p0}, Lcom/android/cameraics/Camera;->checkStorage()V

    .line 2611
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cameraics/Camera;->mCameraId:I

    move/from16 v24, v0

    .line 2612
    const/16 v25, 0x2

    .line 2611
    invoke-static/range {v24 .. v25}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v9

    .line 2618
    .local v9, jpegQuality:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2619
    const-string v25, "pref_camera_myjpegquality_key"

    .line 2620
    const v26, 0x7f08005f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2618
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2622
    .local v15, qualityMode:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    packed-switch v24, :pswitch_data_0

    .line 2646
    :goto_2
    const-string v24, "camera"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "JPEG quality "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/cameraics/CameraSettings;->readExposure(Lcom/android/cameraics/ComboPreferences;)I

    move-result v22

    .line 2654
    .local v22, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v10

    .line 2655
    .local v10, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v11

    .line 2656
    .local v11, min:I
    move/from16 v0, v22

    if-lt v0, v11, :cond_e

    move/from16 v0, v22

    if-gt v0, v10, :cond_e

    .line 2657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2662
    :goto_3
    const-string v24, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 2664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2665
    const-string v25, "pref_camera_flashmode_key"

    .line 2666
    const v26, 0x7f0800a3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2664
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2667
    .local v6, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v20

    .line 2668
    .local v20, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/android/cameraics/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2679
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2680
    const-string v25, "pref_camera_whitebalance_key"

    .line 2681
    const v26, 0x7f0800aa

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2679
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2683
    .local v23, whiteBalance:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v24

    .line 2682
    invoke-static/range {v23 .. v24}, Lcom/android/cameraics/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    .line 2683
    if-eqz v24, :cond_10

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2693
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/cameraics/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/cameraics/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2701
    .end local v6           #flashMode:Ljava/lang/String;
    .end local v20           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #whiteBalance:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2702
    const-string v25, "pref_camera_coloreffect_key"

    .line 2703
    const v26, 0x7f08005d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2701
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2706
    .local v5, colorEffect:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/cameraics/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 2710
    const-string v24, "camera"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "color effect: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2719
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->guideLinesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 2722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    move-object/from16 v24, v0

    .line 2723
    const-string v25, "pref_camera_guidelines_key"

    const v26, 0x7f080065

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2722
    invoke-virtual/range {v24 .. v26}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2725
    .local v8, guidelinesString:Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2726
    .local v7, guidelines:Z
    if-eqz v7, :cond_12

    .line 2728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->guideLinesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2736
    .end local v7           #guidelines:Z
    .end local v8           #guidelinesString:Ljava/lang/String;
    :cond_b
    :goto_7
    return-void

    .line 2548
    .end local v5           #colorEffect:Ljava/lang/String;
    .end local v9           #jpegQuality:I
    .end local v10           #max:I
    .end local v11           #min:I
    .end local v12           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v13           #original:Landroid/hardware/Camera$Size;
    .end local v15           #qualityMode:Ljava/lang/String;
    .end local v17           #size:Landroid/hardware/Camera$Size;
    .end local v18           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v22           #value:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v19

    .line 2550
    .local v19, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    .line 2549
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/android/cameraics/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 2592
    .end local v19           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v12       #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v13       #original:Landroid/hardware/Camera$Size;
    .restart local v17       #size:Landroid/hardware/Camera$Size;
    .restart local v18       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_6

    .line 2594
    const-string v24, "auto"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 2624
    .restart local v9       #jpegQuality:I
    .restart local v15       #qualityMode:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cameraics/Camera;->mCameraId:I

    move/from16 v24, v0

    .line 2625
    const/16 v25, 0x0

    .line 2624
    invoke-static/range {v24 .. v25}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v9

    .line 2626
    goto/16 :goto_2

    .line 2628
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cameraics/Camera;->mCameraId:I

    move/from16 v24, v0

    .line 2629
    const/16 v25, 0x1

    .line 2628
    invoke-static/range {v24 .. v25}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v9

    .line 2630
    goto/16 :goto_2

    .line 2633
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cameraics/Camera;->mCameraId:I

    move/from16 v24, v0

    .line 2634
    const/16 v25, 0x2

    .line 2633
    invoke-static/range {v24 .. v25}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v9

    .line 2635
    goto/16 :goto_2

    .line 2638
    :pswitch_3
    const/16 v9, 0x64

    .line 2639
    goto/16 :goto_2

    .line 2659
    .restart local v10       #max:I
    .restart local v11       #min:I
    .restart local v22       #value:I
    :cond_e
    const-string v24, "camera"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "invalid exposure range: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2671
    .restart local v6       #flashMode:Ljava/lang/String;
    .restart local v20       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v6

    .line 2672
    if-nez v6, :cond_8

    .line 2674
    const v24, 0x7f0800a4

    .line 2673
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 2686
    .restart local v23       #whiteBalance:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v23

    .line 2687
    if-nez v23, :cond_9

    .line 2688
    const-string v23, "auto"

    goto/16 :goto_5

    .line 2696
    .end local v6           #flashMode:Ljava/lang/String;
    .end local v20           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #whiteBalance:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/cameraics/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2732
    .restart local v5       #colorEffect:Ljava/lang/String;
    .restart local v7       #guidelines:Z
    .restart local v8       #guidelinesString:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cameraics/Camera;->guideLinesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 2622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2484
    :cond_0
    return-void
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 766
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mExposureIndicator:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 781
    :goto_0
    return-void

    .line 769
    :cond_0
    if-nez p1, :cond_1

    .line 770
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mExposureIndicator:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mExposureIndicator:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 773
    :cond_1
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    .line 774
    .local v1, step:F
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mFormatterArgs:[Ljava/lang/Object;

    int-to-float v3, p1

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    .line 775
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cameraics/Camera;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 776
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%+1.1f"

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 777
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, exposure:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mExposureIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mExposureIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 784
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 790
    :cond_2
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 792
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 793
    :cond_3
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFocusOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 829
    :cond_0
    const-string v0, "infinity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 831
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 832
    :cond_1
    const-string v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 834
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 878
    const-string v2, "auto"

    iget-object v3, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 879
    .local v0, isAutoScene:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->updateSceneOnScreenIndicator(Z)V

    .line 880
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-static {v2}, Lcom/android/cameraics/CameraSettings;->readExposure(Lcom/android/cameraics/ComboPreferences;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/cameraics/Camera;->updateExposureOnScreenIndicator(I)V

    .line 881
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/cameraics/Camera;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 882
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/cameraics/Camera;->updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V

    .line 883
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/cameraics/Camera;->updateFocusOnScreenIndicator(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateBurstOnScreenIndicator()V

    .line 889
    invoke-direct {p0, v1}, Lcom/android/cameraics/Camera;->updateTimerOnScreenIndicator(I)V

    .line 891
    return-void

    .line 878
    .end local v0           #isAutoScene:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1483
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1485
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 1484
    invoke-direct {p0, v0, v1, v2}, Lcom/android/cameraics/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    :goto_0
    return-void

    .line 1487
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/cameraics/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSceneOnScreenIndicator(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateStorageHint()V
    .locals 5

    .prologue
    .line 1794
    const/4 v0, 0x0

    .line 1796
    .local v0, noStorageText:Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1797
    const v1, 0x7f080072

    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1806
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 1807
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    if-nez v1, :cond_5

    .line 1808
    invoke-static {p0, v0}, Lcom/android/cameraics/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/cameraics/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    .line 1812
    :goto_1
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/cameraics/OnScreenHint;->show()V

    .line 1817
    :cond_1
    :goto_2
    return-void

    .line 1798
    :cond_2
    iget-wide v1, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1799
    const v1, 0x7f080074

    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1800
    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 1801
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1802
    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1803
    const v1, 0x7f080073

    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1810
    :cond_5
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/cameraics/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1813
    :cond_6
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    if-eqz v1, :cond_1

    .line 1814
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/cameraics/OnScreenHint;->cancel()V

    .line 1815
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    goto :goto_2
.end method

.method private updateThumbnailButton()V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    invoke-virtual {v0}, Lcom/android/cameraics/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/cameraics/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    :cond_0
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/cameraics/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/cameraics/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    invoke-virtual {v1}, Lcom/android/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateTimerOnScreenIndicator(I)V
    .locals 7
    .parameter "time"

    .prologue
    const v2, 0x7f080043

    const/4 v6, 0x0

    .line 858
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mTimerIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->isTimerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mTimerIndicator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mTimerIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget v0, p0, Lcom/android/cameraics/Camera;->timerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 864
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mTimerIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mTimerIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 866
    :cond_2
    iget v0, p0, Lcom/android/cameraics/Camera;->timerState:I

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mTimerIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/cameraics/Camera;->timerDelay:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mTimerIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 809
    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 812
    :cond_1
    const-string v0, "fluorescent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 821
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 814
    :cond_3
    const-string v0, "incandescent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 815
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 816
    :cond_4
    const-string v0, "daylight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 817
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 818
    :cond_5
    const-string v0, "cloudy-daylight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 1955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/cameraics/Camera;->mFocusStartTime:J

    .line 1956
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mAutoFocusCallback:Lcom/android/cameraics/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1957
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->setCameraState(I)V

    .line 1958
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1963
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->setCameraState(I)V

    .line 1964
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->setCameraParameters(I)V

    .line 1965
    return-void
.end method

.method public capture()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1229
    iget v3, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    if-eq v3, v8, :cond_0

    iget-object v3, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 1264
    :goto_0
    return v1

    .line 1232
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/cameraics/Camera;->mCaptureStartTime:J

    .line 1233
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/cameraics/Camera;->mPostViewPictureCallbackTime:J

    .line 1234
    iput-object v7, p0, Lcom/android/cameraics/Camera;->mJpegImageData:[B

    .line 1237
    iget-object v3, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    iget v5, p0, Lcom/android/cameraics/Camera;->mOrientation:I

    invoke-static {v3, v4, v5}, Lcom/android/cameraics/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 1238
    iget-object v3, p0, Lcom/android/cameraics/Camera;->mLocationManager:Lcom/android/cameraics/LocationManager;

    invoke-virtual {v3}, Lcom/android/cameraics/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1239
    .local v0, loc:Landroid/location/Location;
    iget-object v3, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/cameraics/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1240
    iget-object v3, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1244
    iget-boolean v3, p0, Lcom/android/cameraics/Camera;->isInSilentMode:Z

    if-nez v3, :cond_2

    .line 1247
    iget-object v3, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mShutterCallback:Lcom/android/cameraics/Camera$ShutterCallback;

    iget-object v5, p0, Lcom/android/cameraics/Camera;->mRawPictureCallback:Lcom/android/cameraics/Camera$RawPictureCallback;

    .line 1248
    iget-object v6, p0, Lcom/android/cameraics/Camera;->mPostViewPictureCallback:Lcom/android/cameraics/Camera$PostViewPictureCallback;

    new-instance v7, Lcom/android/cameraics/Camera$JpegPictureCallback;

    invoke-direct {v7, p0, v0}, Lcom/android/cameraics/Camera$JpegPictureCallback;-><init>(Lcom/android/cameraics/Camera;Landroid/location/Location;)V

    .line 1247
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1262
    :goto_1
    iput-boolean v2, p0, Lcom/android/cameraics/Camera;->mFaceDetectionStarted:Z

    .line 1263
    invoke-direct {p0, v8}, Lcom/android/cameraics/Camera;->setCameraState(I)V

    goto :goto_0

    .line 1254
    :cond_2
    iget-boolean v3, p0, Lcom/android/cameraics/Camera;->isInSilentMode:Z

    if-eqz v3, :cond_3

    .line 1256
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/support/custom/NewFeatures;->setMuteMode(Landroid/content/Context;Z)V

    .line 1259
    :cond_3
    iget-object v3, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/cameraics/Camera;->mRawPictureCallback:Lcom/android/cameraics/Camera$RawPictureCallback;

    .line 1260
    iget-object v5, p0, Lcom/android/cameraics/Camera;->mPostViewPictureCallback:Lcom/android/cameraics/Camera$PostViewPictureCallback;

    new-instance v6, Lcom/android/cameraics/Camera$JpegPictureCallback;

    invoke-direct {v6, p0, v0}, Lcom/android/cameraics/Camera$JpegPictureCallback;-><init>(Lcom/android/cameraics/Camera;Landroid/location/Location;)V

    .line 1259
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_1
.end method

.method public decreaseZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3151
    :goto_0
    return-void

    .line 3143
    :cond_0
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    .line 3145
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    .line 3147
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    iget v1, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 3150
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->onZoomValueChanged(I)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const/4 v0, 0x1

    .line 708
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/cameraics/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1833
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    iput-boolean v3, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    .line 1836
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/cameraics/Camera;->mJpegPictureCallbackTime:J

    .line 1837
    iput v3, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    .line 1840
    iget v1, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    if-nez v1, :cond_2

    .line 1842
    :try_start_0
    iget v1, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    invoke-static {p0, v1}, Lcom/android/cameraics/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1843
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initializeCapabilities()V

    .line 1844
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->resetExposureCompensation()V

    .line 1845
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->startPreview()V

    .line 1846
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->startFaceDetection()V
    :try_end_0
    .catch Lcom/android/cameraics/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/cameraics/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1856
    :cond_2
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_3

    .line 1859
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_5

    .line 1860
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1865
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->keepScreenOnAwhile()V

    .line 1867
    iget v1, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1868
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/cameraics/Camera;->mOnResumeTime:J

    .line 1869
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1872
    :cond_4
    invoke-static {p0}, Lcom/android/cameraics/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/cameraics/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/cameraics/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    goto :goto_0

    .line 1847
    :catch_0
    move-exception v0

    .line 1848
    .local v0, e:Lcom/android/cameraics/CameraHardwareException;
    const v1, 0x7f08006b

    invoke-static {p0, v1}, Lcom/android/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1850
    .end local v0           #e:Lcom/android/cameraics/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1851
    .local v0, e:Lcom/android/cameraics/CameraDisabledException;
    const v1, 0x7f08006c

    invoke-static {p0, v1}, Lcom/android/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1862
    .end local v0           #e:Lcom/android/cameraics/CameraDisabledException;
    :cond_5
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public increaseZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3136
    :goto_0
    return-void

    .line 3128
    :cond_0
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    .line 3130
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    iget v1, p0, Lcom/android/cameraics/Camera;->mZoomMax:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomMax:I

    iput v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    .line 3132
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    iget v1, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 3135
    iget v0, p0, Lcom/android/cameraics/Camera;->mZoomValue:I

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->onZoomValueChanged(I)V

    goto :goto_0
.end method

.method public isTimerEnabled()Z
    .locals 4

    .prologue
    .line 3157
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->timerDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 3158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1929
    packed-switch p1, :pswitch_data_0

    .line 1947
    :goto_0
    return-void

    .line 1931
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1932
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 1933
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1934
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1938
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/android/cameraics/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1939
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->finish()V

    .line 1941
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/android/cameraics/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1942
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1986
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1992
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1990
    invoke-super {p0}, Lcom/android/cameraics/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const v9, 0x7f0d006f

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1327
    invoke-super {p0, p1}, Lcom/android/cameraics/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 1330
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->getPreferredCameraId()V

    .line 1331
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1332
    const v8, 0x7f090022

    .line 1331
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1333
    .local v1, defaultFocusModes:[Ljava/lang/String;
    new-instance v7, Lcom/android/cameraics/FocusManager;

    iget-object v8, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-direct {v7, v8, v1}, Lcom/android/cameraics/FocusManager;-><init>(Lcom/android/cameraics/ComboPreferences;[Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    .line 1340
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1342
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->isImageCaptureIntent()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    .line 1343
    const v7, 0x7f040003

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->setContentView(I)V

    .line 1345
    sget v7, Lcom/android/cameraics/compatibility/Settings;->SELECTED_MODE:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1347
    const v7, 0x7f0d006b

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1348
    .local v6, promoView:Landroid/view/View;
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    const/high16 v7, 0x7f0d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/cameraics/ui/Rotatable;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->promoRotable:Lcom/android/cameraics/ui/Rotatable;

    .line 1363
    .end local v6           #promoView:Landroid/view/View;
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-eqz v7, :cond_2

    .line 1364
    const v7, 0x7f0d006d

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/cameraics/ui/Rotatable;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mReviewDoneButton:Lcom/android/cameraics/ui/Rotatable;

    .line 1365
    invoke-virtual {p0, v9}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/cameraics/ui/Rotatable;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mReviewCancelButton:Lcom/android/cameraics/ui/Rotatable;

    .line 1366
    invoke-virtual {p0, v9}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    :goto_1
    new-instance v7, Lcom/android/cameraics/RotateDialogController;

    const v8, 0x7f040019

    invoke-direct {v7, p0, v8}, Lcom/android/cameraics/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mRotateDialog:Lcom/android/cameraics/RotateDialogController;

    .line 1375
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    iget v8, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    invoke-virtual {v7, p0, v8}, Lcom/android/cameraics/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1376
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-virtual {v7}, Lcom/android/cameraics/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7}, Lcom/android/cameraics/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1378
    invoke-static {}, Lcom/android/cameraics/CameraHolder;->instance()Lcom/android/cameraics/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cameraics/CameraHolder;->getNumberOfCameras()I

    move-result v7

    iput v7, p0, Lcom/android/cameraics/Camera;->mNumberOfCameras:I

    .line 1379
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.quickCapture"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/cameraics/Camera;->mQuickCapture:Z

    .line 1382
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->resetExposureCompensation()V

    .line 1384
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v7}, Lcom/android/cameraics/Util;->enterLightsOutMode(Landroid/view/Window;)V

    .line 1389
    const v7, 0x7f0d005a

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    .line 1390
    .local v5, preview:Landroid/view/SurfaceView;
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 1391
    .local v4, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1392
    const/4 v7, 0x3

    invoke-interface {v4, v7}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1396
    :try_start_0
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->join()V

    .line 1397
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mCameraOpenThread:Ljava/lang/Thread;

    .line 1398
    iget-boolean v7, p0, Lcom/android/cameraics/Camera;->mOpenCameraFail:Z

    if-eqz v7, :cond_3

    .line 1399
    const v7, 0x7f08006b

    invoke-static {p0, v7}, Lcom/android/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :goto_2
    return-void

    .line 1355
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #preview:Landroid/view/SurfaceView;
    :cond_1
    sget v7, Lcom/android/cameraics/compatibility/Settings;->SELECTED_MODE:I

    if-nez v7, :cond_0

    .line 1358
    const/high16 v7, 0x7f04

    invoke-static {p0, v7, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/cameraics/ui/RotateLayout;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->adMobRotable:Lcom/android/cameraics/ui/RotateLayout;

    .line 1359
    iget-object v7, p0, Lcom/android/cameraics/Camera;->adMobRotable:Lcom/android/cameraics/ui/RotateLayout;

    invoke-static {p0, v7, v10}, Lcom/android/cameraics/compatibility/AdsManager;->requestAdMob(Landroid/app/Activity;Lcom/android/cameraics/ui/RotateLayout;Z)V

    goto/16 :goto_0

    .line 1368
    :cond_2
    const v7, 0x7f0d0070

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/cameraics/ui/RotateImageView;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    .line 1369
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    invoke-virtual {v7, v10}, Lcom/android/cameraics/ui/RotateImageView;->enableFilter(Z)V

    .line 1370
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mThumbnailView:Lcom/android/cameraics/ui/RotateImageView;

    invoke-virtual {v7, v10}, Lcom/android/cameraics/ui/RotateImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1401
    .restart local v4       #holder:Landroid/view/SurfaceHolder;
    .restart local v5       #preview:Landroid/view/SurfaceView;
    :cond_3
    :try_start_1
    iget-boolean v7, p0, Lcom/android/cameraics/Camera;->mCameraDisabled:Z

    if-eqz v7, :cond_4

    .line 1402
    const v7, 0x7f08006c

    invoke-static {p0, v7}, Lcom/android/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1405
    :catch_0
    move-exception v7

    .line 1408
    :cond_4
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1410
    iget-boolean v7, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-eqz v7, :cond_5

    .line 1411
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->setupCaptureParams()V

    .line 1419
    :goto_3
    const v7, 0x7f0d000c

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/cameraics/ui/ZoomControl;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;

    .line 1420
    const v7, 0x7f0d0062

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/cameraics/ui/Rotatable;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mOnScreenIndicators:Lcom/android/cameraics/ui/Rotatable;

    .line 1421
    new-instance v7, Lcom/android/cameraics/LocationManager;

    invoke-direct {v7, p0, p0}, Lcom/android/cameraics/LocationManager;-><init>(Landroid/content/Context;Lcom/android/cameraics/LocationManager$Listener;)V

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mLocationManager:Lcom/android/cameraics/LocationManager;

    .line 1423
    invoke-static {}, Lcom/android/cameraics/CameraHolder;->instance()Lcom/android/cameraics/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cameraics/CameraHolder;->getBackCameraId()I

    move-result v7

    iput v7, p0, Lcom/android/cameraics/Camera;->mBackCameraId:I

    .line 1424
    invoke-static {}, Lcom/android/cameraics/CameraHolder;->instance()Lcom/android/cameraics/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cameraics/CameraHolder;->getFrontCameraId()I

    move-result v7

    iput v7, p0, Lcom/android/cameraics/Camera;->mFrontCameraId:I

    .line 1427
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    monitor-enter v8

    .line 1429
    :try_start_2
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1427
    :goto_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1437
    const v7, 0x7f0d001d

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->guideLinesLayout:Landroid/widget/LinearLayout;

    .line 1439
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 1440
    const-string v8, "pref_camera_guidelines_key"

    const v9, 0x7f080065

    invoke-virtual {p0, v9}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1439
    invoke-virtual {v7, v8, v9}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1442
    .local v3, guidelinesString:Ljava/lang/String;
    const-string v0, "on"

    .line 1444
    .local v0, VALUE_ON:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1446
    .local v2, guidelines:Z
    if-eqz v2, :cond_6

    .line 1448
    iget-object v7, p0, Lcom/android/cameraics/Camera;->guideLinesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1458
    :goto_5
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initializeIndicatorControl()V

    .line 1459
    new-instance v7, Lcom/android/cameraics/compatibility/CameraSound;

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/cameraics/compatibility/CameraSound;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

    .line 1463
    :try_start_4
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1467
    :goto_6
    iput-object v11, p0, Lcom/android/cameraics/Camera;->mCameraPreviewThread:Ljava/lang/Thread;

    goto/16 :goto_2

    .line 1413
    .end local v0           #VALUE_ON:Ljava/lang/String;
    .end local v2           #guidelines:Z
    .end local v3           #guidelinesString:Ljava/lang/String;
    :cond_5
    const v7, 0x7f0d0035

    invoke-virtual {p0, v7}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/cameraics/ModePicker;

    iput-object v7, p0, Lcom/android/cameraics/Camera;->mModePicker:Lcom/android/cameraics/ModePicker;

    .line 1414
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mModePicker:Lcom/android/cameraics/ModePicker;

    invoke-virtual {v7, v10}, Lcom/android/cameraics/ModePicker;->setVisibility(I)V

    .line 1415
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mModePicker:Lcom/android/cameraics/ModePicker;

    invoke-virtual {v7, p0}, Lcom/android/cameraics/ModePicker;->setOnModeChangeListener(Lcom/android/cameraics/ModePicker$OnModeChangeListener;)V

    .line 1416
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mModePicker:Lcom/android/cameraics/ModePicker;

    invoke-virtual {v7, v10}, Lcom/android/cameraics/ModePicker;->setCurrentMode(I)V

    goto/16 :goto_3

    .line 1427
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 1452
    .restart local v0       #VALUE_ON:Ljava/lang/String;
    .restart local v2       #guidelines:Z
    .restart local v3       #guidelinesString:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/cameraics/Camera;->guideLinesLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 1464
    :catch_1
    move-exception v7

    goto :goto_6

    .line 1430
    .end local v0           #VALUE_ON:Ljava/lang/String;
    .end local v2           #guidelines:Z
    .end local v3           #guidelinesString:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2839
    invoke-super {p0, p1}, Lcom/android/cameraics/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2841
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2843
    const/4 v0, 0x0

    .line 2847
    :goto_0
    return v0

    .line 2845
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 2847
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "add"

    .prologue
    .line 3083
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0
    .parameter "ad"
    .parameter "error"

    .prologue
    .line 3090
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v4, 0x7f080062

    const/4 v1, 0x1

    .line 1996
    sparse-switch p1, :sswitch_data_0

    .line 2208
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/cameraics/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 2002
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 2004
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 2005
    const-string v3, "pref_camera_volumekeys_key"

    .line 2006
    invoke-virtual {p0, v4}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2004
    invoke-virtual {v2, v3, v4}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2008
    .local v0, volumeKeysMode:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2012
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/cameraics/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 2017
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2019
    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    .line 2020
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    goto :goto_1

    .line 2026
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2028
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    goto :goto_1

    .line 2036
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/cameraics/Camera;->increaseZoom(I)V

    goto :goto_1

    .line 2042
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/cameraics/Camera;->decreaseZoom(I)V

    goto :goto_1

    .line 2048
    :pswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2050
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    goto :goto_1

    .line 2057
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2059
    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    goto :goto_1

    .line 2065
    :pswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 2067
    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    .line 2068
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    .line 2069
    iput-boolean v1, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    .line 2071
    iput-boolean v1, p0, Lcom/android/cameraics/Camera;->isBurstModeActive:Z

    .line 2072
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateBurstOnScreenIndicator()V

    goto :goto_1

    .line 2077
    :cond_2
    iput-boolean v1, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    goto :goto_1

    .line 2091
    .end local v0           #volumeKeysMode:Ljava/lang/String;
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 2093
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 2094
    const-string v3, "pref_camera_volumekeys_key"

    .line 2095
    invoke-virtual {p0, v4}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2093
    invoke-virtual {v2, v3, v4}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2097
    .restart local v0       #volumeKeysMode:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 2101
    :pswitch_8
    invoke-super {p0, p1, p2}, Lcom/android/cameraics/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 2105
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2107
    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    .line 2108
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    goto/16 :goto_1

    .line 2114
    :pswitch_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2116
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    goto/16 :goto_1

    .line 2123
    :pswitch_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/cameraics/Camera;->decreaseZoom(I)V

    goto/16 :goto_1

    .line 2128
    :pswitch_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/cameraics/Camera;->increaseZoom(I)V

    goto/16 :goto_1

    .line 2134
    :pswitch_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2136
    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    goto/16 :goto_1

    .line 2143
    :pswitch_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2145
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    goto/16 :goto_1

    .line 2151
    :pswitch_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 2153
    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    .line 2154
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    .line 2155
    iput-boolean v1, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    .line 2157
    iput-boolean v1, p0, Lcom/android/cameraics/Camera;->isBurstModeActive:Z

    .line 2158
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateBurstOnScreenIndicator()V

    goto/16 :goto_1

    .line 2162
    :cond_3
    iput-boolean v1, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    goto/16 :goto_1

    .line 2173
    .end local v0           #volumeKeysMode:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->isTimerEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/cameraics/Camera;->timerState:I

    if-ne v2, v1, :cond_0

    goto/16 :goto_1

    .line 2180
    :sswitch_3
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2181
    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    goto/16 :goto_1

    .line 2185
    :sswitch_4
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2186
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->onShutterButtonClick()V

    goto/16 :goto_1

    .line 2192
    :sswitch_5
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2196
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->collapseCameraControls()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2197
    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    .line 2198
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    invoke-virtual {v2}, Lcom/android/cameraics/ShutterButton;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2199
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    invoke-virtual {v2}, Lcom/android/cameraics/ShutterButton;->requestFocusFromTouch()Z

    .line 2203
    :goto_2
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    invoke-virtual {v2, v1}, Lcom/android/cameraics/ShutterButton;->setPressed(Z)V

    goto/16 :goto_1

    .line 2201
    :cond_4
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mShutterButton:Lcom/android/cameraics/ShutterButton;

    invoke-virtual {v2}, Lcom/android/cameraics/ShutterButton;->requestFocus()Z

    goto :goto_2

    .line 1996
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_5
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1b -> :sswitch_4
        0x50 -> :sswitch_3
    .end sparse-switch

    .line 2008
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2097
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v4, 0x7f080062

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2218
    iput-boolean v5, p0, Lcom/android/cameraics/Camera;->isBurstModeActive:Z

    .line 2219
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateBurstOnScreenIndicator()V

    .line 2222
    sparse-switch p1, :sswitch_data_0

    .line 2280
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/cameraics/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2229
    :sswitch_0
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 2230
    const-string v3, "pref_camera_volumekeys_key"

    .line 2231
    invoke-virtual {p0, v4}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2229
    invoke-virtual {v2, v3, v4}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2235
    .local v0, volumeKeysMode:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 2237
    invoke-virtual {p0, v5}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 2245
    .end local v0           #volumeKeysMode:Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 2246
    const-string v3, "pref_camera_volumekeys_key"

    .line 2247
    invoke-virtual {p0, v4}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2245
    invoke-virtual {v2, v3, v4}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2251
    .restart local v0       #volumeKeysMode:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 2253
    invoke-virtual {p0, v5}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 2259
    .end local v0           #volumeKeysMode:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->isTimerEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/cameraics/Camera;->timerState:I

    if-ne v2, v1, :cond_0

    .line 2261
    iget-object v2, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2262
    iput v5, p0, Lcom/android/cameraics/Camera;->timerState:I

    .line 2263
    invoke-direct {p0, v5}, Lcom/android/cameraics/Camera;->updateTimerOnScreenIndicator(I)V

    goto :goto_0

    .line 2269
    :sswitch_3
    iget-boolean v2, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    .line 2270
    invoke-virtual {p0, v5}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 2222
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 3096
    return-void
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 2886
    if-eqz p1, :cond_0

    .line 2887
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->switchToOtherMode(I)Z

    move-result v0

    .line 2889
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 3

    .prologue
    .line 3002
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-eqz v1, :cond_0

    .line 3008
    :goto_0
    return-void

    .line 3003
    :cond_0
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 3004
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3005
    .local v0, str:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cameraics/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    .line 3007
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/cameraics/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    .line 1879
    iput-boolean v4, p0, Lcom/android/cameraics/Camera;->isBurstModeActive:Z

    .line 1880
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->stopPreview()V

    .line 1882
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->closeCamera()V

    .line 1883
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

    invoke-virtual {v0}, Lcom/android/cameraics/compatibility/CameraSound;->release()V

    .line 1884
    :cond_0
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->resetScreenOn()V

    .line 1887
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->collapseCameraControls()Z

    .line 1888
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/SharePopup;->dismiss()V

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/FaceView;->clear()V

    .line 1891
    :cond_2
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_4

    .line 1892
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mOrientationListener:Lcom/android/cameraics/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/cameraics/Camera$MyOrientationEventListener;->disable()V

    .line 1893
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    if-eqz v0, :cond_3

    .line 1894
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/cameraics/Camera$ImageSaver;->finish()V

    .line 1895
    iput-object v5, p0, Lcom/android/cameraics/Camera;->mImageSaver:Lcom/android/cameraics/Camera$ImageSaver;

    .line 1897
    :cond_3
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    invoke-virtual {v0}, Lcom/android/cameraics/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1898
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/cameraics/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 1902
    :cond_4
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mDidRegister:Z

    if-eqz v0, :cond_5

    .line 1903
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/cameraics/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1904
    iput-boolean v4, p0, Lcom/android/cameraics/Camera;->mDidRegister:Z

    .line 1906
    :cond_5
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mLocationManager:Lcom/android/cameraics/LocationManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mLocationManager:Lcom/android/cameraics/LocationManager;

    invoke-virtual {v0, v4}, Lcom/android/cameraics/LocationManager;->recordLocation(Z)V

    .line 1907
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/cameraics/Camera;->updateExposureOnScreenIndicator(I)V

    .line 1909
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    if-eqz v0, :cond_7

    .line 1910
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/cameraics/OnScreenHint;->cancel()V

    .line 1911
    iput-object v5, p0, Lcom/android/cameraics/Camera;->mStorageHint:Lcom/android/cameraics/OnScreenHint;

    .line 1916
    :cond_7
    iput-object v5, p0, Lcom/android/cameraics/Camera;->mJpegImageData:[B

    .line 1919
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1920
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1921
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v0}, Lcom/android/cameraics/FocusManager;->removeMessages()V

    .line 1923
    invoke-super {p0}, Lcom/android/cameraics/ActivityBase;->onPause()V

    .line 1924
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 2828
    invoke-super {p0, p1}, Lcom/android/cameraics/ActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2830
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2834
    const/4 v1, 0x1

    return v1

    .line 2831
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/cameraics/Camera;->isCameraIdle()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 3102
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 3111
    iget-object v0, p0, Lcom/android/cameraics/Camera;->adMobRotable:Lcom/android/cameraics/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/Camera;->adMobRotable:Lcom/android/cameraics/ui/RotateLayout;

    iget v1, p0, Lcom/android/cameraics/Camera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 3113
    :cond_0
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    .line 2971
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 2982
    :goto_0
    return-void

    .line 2972
    :cond_0
    new-instance v4, Lcom/android/cameraics/Camera$9;

    invoke-direct {v4, p0}, Lcom/android/cameraics/Camera$9;-><init>(Lcom/android/cameraics/Camera;)V

    .line 2977
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mRotateDialog:Lcom/android/cameraics/RotateDialogController;

    .line 2978
    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2979
    const v2, 0x7f080077

    invoke-virtual {p0, v2}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2980
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2981
    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/cameraics/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2977
    invoke-virtual/range {v0 .. v6}, Lcom/android/cameraics/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/android/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->doCancel()V

    .line 1640
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/android/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 1634
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->doAttach()V

    .line 1635
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/android/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 1627
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->hidePostCaptureAlert()V

    .line 1628
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->startPreview()V

    .line 1629
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->startFaceDetection()V

    .line 1630
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 12

    .prologue
    .line 2895
    iget-boolean v8, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-eqz v8, :cond_0

    .line 2951
    :goto_0
    return-void

    .line 2898
    :cond_0
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2897
    invoke-static {v8, v9}, Lcom/android/cameraics/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v4

    .line 2899
    .local v4, recordLocation:Z
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mLocationManager:Lcom/android/cameraics/LocationManager;

    invoke-virtual {v8, v4}, Lcom/android/cameraics/LocationManager;->recordLocation(Z)V

    .line 2901
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    invoke-static {v8}, Lcom/android/cameraics/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 2902
    .local v0, cameraId:I
    iget v8, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    if-eq v8, v0, :cond_2

    .line 2906
    iget-boolean v8, p0, Lcom/android/cameraics/Camera;->mIsImageCaptureIntent:Z

    if-eqz v8, :cond_1

    .line 2908
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/cameraics/MenuHelper;->gotoCameraMode(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2913
    :goto_1
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->finish()V

    .line 2950
    :goto_2
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->updateOnScreenIndicators()V

    goto :goto_0

    .line 2910
    :cond_1
    invoke-static {p0}, Lcom/android/cameraics/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    goto :goto_1

    .line 2920
    :cond_2
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 2921
    const-string v9, "pref_camera_picturesize_key"

    const/4 v10, 0x0

    .line 2920
    invoke-virtual {v8, v9, v10}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2922
    .local v3, pictureSize:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 2923
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v8}, Lcom/android/cameraics/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 2931
    :goto_3
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 2935
    .local v5, size:Landroid/hardware/Camera$Size;
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 2937
    .local v6, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 2936
    invoke-static {p0, v6, v8, v9}, Lcom/android/cameraics/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2938
    .local v1, optimalSize:Landroid/hardware/Camera$Size;
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2939
    .local v2, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2942
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->stopPreview()V

    .line 2943
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->startPreview()V

    .line 2947
    :cond_3
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/cameraics/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_2

    .line 2925
    .end local v1           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v2           #original:Landroid/hardware/Camera$Size;
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    .line 2927
    .local v7, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v8, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2926
    invoke-static {v3, v7, v8}, Lcom/android/cameraics/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_3
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1744
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->isTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    iget v0, p0, Lcom/android/cameraics/Camera;->timerState:I

    packed-switch v0, :pswitch_data_0

    .line 1766
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/cameraics/Camera;->collapseCameraControls()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1789
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 1748
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/cameraics/Camera;->mStartTime:J

    .line 1749
    iput v4, p0, Lcom/android/cameraics/Camera;->timerState:I

    .line 1750
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1757
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/cameraics/Camera;->onShutterButtonFocus(Z)V

    .line 1758
    iput v5, p0, Lcom/android/cameraics/Camera;->timerState:I

    goto :goto_0

    .line 1769
    :cond_2
    iget-wide v0, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 1770
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/cameraics/Camera;->mPicturesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1774
    :cond_3
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v0}, Lcom/android/cameraics/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1782
    :cond_4
    iput-boolean v4, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    goto :goto_1

    .line 1787
    :cond_5
    iput-boolean v5, p0, Lcom/android/cameraics/Camera;->mSnapshotOnIdle:Z

    .line 1788
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v0}, Lcom/android/cameraics/FocusManager;->doSnap()V

    goto :goto_1

    .line 1746
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 1725
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/cameraics/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1727
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->isTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/cameraics/Camera;->timerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1737
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/cameraics/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    :cond_2
    if-eqz p1, :cond_3

    .line 1733
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v0}, Lcom/android/cameraics/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 1735
    :cond_3
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v0}, Lcom/android/cameraics/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1599
    invoke-super {p0}, Lcom/android/cameraics/ActivityBase;->onStop()V

    .line 1600
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1604
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mThumbnail:Lcom/android/cameraics/Thumbnail;

    if-eqz v0, :cond_0

    .line 1621
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->showSharePopup()V

    .line 1623
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 1970
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 1971
    iget v1, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1981
    :cond_0
    :goto_0
    return v0

    .line 1976
    :cond_1
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1979
    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mFocusAreaSupported:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/cameraics/Camera;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 1981
    :cond_2
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;

    invoke-virtual {v0, p2}, Lcom/android/cameraics/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2955
    invoke-super {p0}, Lcom/android/cameraics/ActivityBase;->onUserInteraction()V

    .line 2956
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->keepScreenOnAwhile()V

    .line 2957
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 1275
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->isInSilentMode:Z

    if-nez v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/compatibility/CameraSound;->playSound(I)V

    .line 1279
    :cond_0
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->setCameraParameters(I)V

    .line 1270
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 2
    .parameter "hasSignal"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 749
    :cond_0
    if-eqz p1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 754
    :goto_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public startFaceDetection()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 613
    iget-boolean v4, p0, Lcom/android/cameraics/Camera;->mFaceDetectionStarted:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    if-eq v4, v5, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->getMaxNumDetectedFaces(Landroid/hardware/Camera$Parameters;)I

    move-result v4

    if-lez v4, :cond_0

    .line 618
    iput-boolean v5, p0, Lcom/android/cameraics/Camera;->mFaceDetectionStarted:Z

    .line 619
    const v4, 0x7f0d005b

    invoke-virtual {p0, v4}, Lcom/android/cameraics/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/cameraics/ui/FaceView;

    iput-object v4, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    .line 620
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-virtual {v4}, Lcom/android/cameraics/ui/FaceView;->clear()V

    .line 621
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-virtual {v4, v6}, Lcom/android/cameraics/ui/FaceView;->setVisibility(I)V

    .line 622
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    iget v7, p0, Lcom/android/cameraics/Camera;->mDisplayOrientation:I

    invoke-virtual {v4, v7}, Lcom/android/cameraics/ui/FaceView;->setDisplayOrientation(I)V

    .line 623
    invoke-static {}, Lcom/android/cameraics/CameraHolder;->instance()Lcom/android/cameraics/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cameraics/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    iget v7, p0, Lcom/android/cameraics/Camera;->mCameraId:I

    aget-object v1, v4, v7

    .line 626
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v7, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v5, :cond_3

    .line 627
    const v4, 0x200402

    invoke-static {v4}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 629
    const v4, 0x1000402

    invoke-static {v4}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 626
    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/cameraics/ui/FaceView;->setMirror(Z)V

    .line 631
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-virtual {v4}, Lcom/android/cameraics/ui/FaceView;->resume()V

    .line 639
    iget-object v4, p0, Lcom/android/cameraics/Camera;->faceDetectionListener:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 641
    const/4 v0, 0x0

    .line 643
    .local v0, classArray:[Ljava/lang/Class;
    const-class v4, Landroid/hardware/Camera;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 644
    .local v2, innerClasses:[Ljava/lang/Class;
    array-length v7, v2

    move v4, v6

    :goto_2
    if-lt v4, v7, :cond_4

    .line 655
    .end local v0           #classArray:[Ljava/lang/Class;
    .end local v2           #innerClasses:[Ljava/lang/Class;
    :cond_2
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/android/cameraics/Camera;->faceDetectionListener:Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->setFaceDetectionListener(Landroid/hardware/Camera;Ljava/lang/Object;)V

    .line 656
    iget-object v4, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v4}, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->startFaceDetection(Landroid/hardware/Camera;)V

    goto :goto_0

    :cond_3
    move v4, v6

    .line 629
    goto :goto_1

    .line 644
    .restart local v0       #classArray:[Ljava/lang/Class;
    .restart local v2       #innerClasses:[Ljava/lang/Class;
    :cond_4
    aget-object v3, v2, v4

    .line 645
    .local v3, interfaze:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FaceDetectionListener"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 646
    new-array v0, v5, [Ljava/lang/Class;

    .line 647
    aput-object v3, v0, v6

    .line 649
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Lcom/android/cameraics/compatibility/MyFaceDetectionListener;

    iget-object v10, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-direct {v9, v10}, Lcom/android/cameraics/compatibility/MyFaceDetectionListener;-><init>(Lcom/android/cameraics/ui/FaceView;)V

    invoke-static {v8, v0, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/android/cameraics/Camera;->faceDetectionListener:Ljava/lang/Object;

    .line 644
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->getMaxNumDetectedFaces(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-lez v0, :cond_0

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cameraics/Camera;->mFaceDetectionStarted:Z

    .line 672
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->setFaceDetectionListener(Landroid/hardware/Camera;Ljava/lang/Object;)V

    .line 673
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->stopFaceDetection(Landroid/hardware/Camera;)V

    .line 675
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/Camera;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2285
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2286
    const-string v0, "camera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2290
    :cond_1
    const-string v0, "camera"

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

    .line 2295
    iput-object p1, p0, Lcom/android/cameraics/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2300
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2304
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2311
    iget v0, p0, Lcom/android/cameraics/Camera;->mCameraState:I

    if-nez v0, :cond_3

    .line 2312
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->startPreview()V

    .line 2313
    invoke-virtual {p0}, Lcom/android/cameraics/Camera;->startFaceDetection()V

    .line 2326
    :cond_2
    :goto_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/cameraics/Camera;->setCameraParameters(I)V

    .line 2331
    iget-boolean v0, p0, Lcom/android/cameraics/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_5

    .line 2332
    iget-object v0, p0, Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2315
    :cond_3
    invoke-static {p0}, Lcom/android/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/cameraics/Camera;->mDisplayRotation:I

    if-eq v0, v1, :cond_4

    .line 2316
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->setDisplayOrientation()V

    .line 2318
    :cond_4
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2322
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 2334
    :cond_5
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->initializeSecondTime()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 2339
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 2342
    invoke-direct {p0}, Lcom/android/cameraics/Camera;->stopPreview()V

    .line 2343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cameraics/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2344
    return-void
.end method
