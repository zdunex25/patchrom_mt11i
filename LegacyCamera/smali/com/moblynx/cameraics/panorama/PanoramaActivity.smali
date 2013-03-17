.class public Lcom/moblynx/cameraics/panorama/PanoramaActivity;
.super Lcom/moblynx/cameraics/ActivityBase;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/moblynx/cameraics/ModePicker$OnModeChangeListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/moblynx/cameraics/ShutterButton$OnShutterButtonListener;
.implements Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;
.implements Lcom/google/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;,
        Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_STATE_MOSAIC:I = 0x1

.field private static final CAPTURE_STATE_VIEWFINDER:I = 0x0

.field public static final DEFAULT_BLEND_MODE:I = 0x3

.field public static final DEFAULT_CAPTURE_PIXELS:I = 0xa8c00

.field public static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field private static final MIN_TIME:J = 0x46L

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x5

.field private static final MSG_GENERATE_FINAL_MOSAIC_ERROR:I = 0x3

.field private static final MSG_LOW_RES_FINAL_MOSAIC_READY:I = 0x1

.field private static final MSG_RESET_TO_PREVIEW:I = 0x4

.field private static final MSG_RESET_TO_PREVIEW_WITH_THUMBNAIL:I = 0x2

.field private static final NS2S:F = 1.0E-9f

.field private static final PANNING_SPEED_THRESHOLD:F = 20.0f

.field private static final PREVIEW_ACTIVE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "PanoramaActivity"


# instance fields
.field private adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

.field private inMobiRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

.field private isInSilentMode:Z

.field lastTime:J

.field private mCameraOrientation:I

.field private mCameraSound:Lcom/moblynx/cameraics/compatibility/CameraSound;

.field private mCameraState:I

.field private mCancelComputation:Z

.field private mCaptureIndicator:Lcom/moblynx/cameraics/ui/RotateLayout;

.field private mCaptureLayout:Landroid/view/View;

.field private mCaptureState:I

.field private mCompassThreshold:I

.field private mCompassValueX:F

.field private mCompassValueXStart:F

.field private mCompassValueXStartBuffer:F

.field private mCompassValueY:F

.field private mCompassValueYStart:F

.field private mCompassValueYStartBuffer:F

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mFastIndicationBorder:Landroid/view/View;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mModePicker:Lcom/moblynx/cameraics/ModePicker;

.field private mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

.field private mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/View;

.field private mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

.field private mPausing:Z

.field private mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

.field private mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

.field private mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

.field private mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

.field private mTimeTaken:J

.field private mTimestamp:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mTransformMatrix:[F

.field private mTraversedAngleX:I

.field private mTraversedAngleY:I

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private promoRotable:Lcom/moblynx/cameraics/ui/Rotatable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/moblynx/cameraics/ActivityBase;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    .line 187
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    .line 553
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->lastTime:J

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 192
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$1(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDeviceOrientation:I

    return-void
.end method

.method static synthetic access$10(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->resetToPreview()V

    return-void
.end method

.method static synthetic access$11(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    return v0
.end method

.method static synthetic access$12(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Lcom/moblynx/cameraics/RotateDialogController;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$13(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Lcom/moblynx/cameraics/ui/SharePopup;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    return-object v0
.end method

.method static synthetic access$17(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$18(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->startCameraPreview()V

    return-void
.end method

.method static synthetic access$19(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$2(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 195
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$20(Lcom/moblynx/cameraics/panorama/PanoramaActivity;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$21(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)[F
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$22(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 182
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$23(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$24(Lcom/moblynx/cameraics/panorama/PanoramaActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$25(Lcom/moblynx/cameraics/panorama/PanoramaActivity;FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$26(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$27(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 171
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    return v0
.end method

.method static synthetic access$28(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$29(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$3(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationCompensation:I

    return-void
.end method

.method static synthetic access$30(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$31(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$32(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$33(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Lcom/moblynx/cameraics/panorama/PanoProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$34(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mUsingFrontCamera:Z

    return v0
.end method

.method static synthetic access$35(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 193
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$36(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 194
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$37(Lcom/moblynx/cameraics/panorama/PanoramaActivity;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1026
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$39(Lcom/moblynx/cameraics/panorama/PanoramaActivity;Lcom/moblynx/cameraics/Thumbnail;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    return-void
.end method

.method static synthetic access$4(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$7(Lcom/moblynx/cameraics/panorama/PanoramaActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$8(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$9(Lcom/moblynx/cameraics/panorama/PanoramaActivity;Lcom/moblynx/cameraics/ui/SharePopup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 264
    const/4 v0, 0x0

    new-instance v1, Lcom/moblynx/cameraics/panorama/PanoramaActivity$1;

    invoke-direct {v1, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$1;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    invoke-static {p1, v0, v1}, Lcom/moblynx/cameraics/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 269
    const/4 v0, 0x1

    new-instance v1, Lcom/moblynx/cameraics/panorama/PanoramaActivity$2;

    invoke-direct {v1, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$2;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    invoke-static {p1, v0, v1}, Lcom/moblynx/cameraics/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCancelComputation:Z

    .line 972
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 973
    :try_start_0
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 972
    monitor-exit v1

    .line 975
    return-void

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 1065
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;->clear()V

    goto :goto_0
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 481
    return-void
.end method

.method private createContentView()V
    .locals 11

    .prologue
    const v10, 0x7f0a0011

    const v9, 0x7f0a000f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 734
    const v4, 0x7f040012

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->setContentView(I)V

    .line 736
    sget v4, Lcom/moblynx/cameraics/compatibility/Settings;->SELECTED_MODE:I

    if-ne v4, v7, :cond_2

    .line 738
    const v4, 0x7f0d006b

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 739
    .local v1, promoView:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 741
    const/high16 v4, 0x7f0d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/Rotatable;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->promoRotable:Lcom/moblynx/cameraics/ui/Rotatable;

    .line 755
    .end local v1           #promoView:Landroid/view/View;
    :cond_0
    :goto_0
    iput v5, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    .line 757
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 759
    .local v0, appRes:Landroid/content/res/Resources;
    const v4, 0x7f0d0040

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    .line 760
    const v4, 0x7f0d0044

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    .line 761
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setBackgroundColor(I)V

    .line 762
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    const v6, 0x7f0a0010

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setDoneColor(I)V

    .line 763
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mIndicatorColor:I

    .line 764
    const v4, 0x7f0a0012

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mIndicatorColorFast:I

    .line 765
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    iget v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 766
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    .line 767
    new-instance v6, Lcom/moblynx/cameraics/panorama/PanoramaActivity$9;

    invoke-direct {v6, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$9;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    .line 766
    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setOnDirectionChangeListener(Lcom/moblynx/cameraics/panorama/PanoProgressBar$OnDirectionChangeListener;)V

    .line 776
    const v4, 0x7f0d0045

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    .line 777
    const v4, 0x7f0d0046

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    .line 778
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 779
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 780
    const v4, 0x7f0d004c

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    .line 781
    const v4, 0x7f0d0048

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    .line 783
    const v4, 0x7f0d0052

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    .line 784
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setIndicatorWidth(F)V

    .line 785
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setMaxProgress(I)V

    .line 786
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setBackgroundColor(I)V

    .line 787
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setDoneColor(I)V

    .line 789
    const v4, 0x7f0d004a

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/RotateLayout;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureIndicator:Lcom/moblynx/cameraics/ui/RotateLayout;

    .line 791
    const v4, 0x7f0d0070

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/RotateImageView;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    .line 792
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-virtual {v4, v5}, Lcom/moblynx/cameraics/ui/RotateImageView;->enableFilter(Z)V

    .line 794
    const v4, 0x7f0d004e

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    .line 795
    const v4, 0x7f0d0054

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    .line 796
    const v4, 0x7f0d0047

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    .line 797
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v4}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->getRenderer()Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceViewRenderer;->setMosaicSurfaceCreateListener(Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;)V

    .line 799
    const v4, 0x7f0d0035

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ModePicker;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    .line 800
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    invoke-virtual {v4, v5}, Lcom/moblynx/cameraics/ModePicker;->setVisibility(I)V

    .line 801
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    invoke-virtual {v4, p0}, Lcom/moblynx/cameraics/ModePicker;->setOnModeChangeListener(Lcom/moblynx/cameraics/ModePicker$OnModeChangeListener;)V

    .line 802
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    invoke-virtual {v4, v8}, Lcom/moblynx/cameraics/ModePicker;->setCurrentMode(I)V

    .line 804
    const v4, 0x7f0d0009

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ShutterButton;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    .line 805
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const v6, 0x7f020029

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/ShutterButton;->setBackgroundResource(I)V

    .line 806
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    invoke-virtual {v4, p0}, Lcom/moblynx/cameraics/ShutterButton;->setOnShutterButtonListener(Lcom/moblynx/cameraics/ShutterButton$OnShutterButtonListener;)V

    .line 808
    const v4, 0x7f0d0058

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;

    .line 810
    new-instance v4, Lcom/moblynx/cameraics/RotateDialogController;

    const v6, 0x7f040019

    invoke-direct {v4, p0, v6}, Lcom/moblynx/cameraics/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

    .line 812
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 813
    const/16 v4, 0xb

    new-array v3, v4, [Lcom/moblynx/cameraics/ui/Rotatable;

    .line 814
    const v4, 0x7f0d0043

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v3, v5

    .line 815
    const v4, 0x7f0d004b

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v3, v7

    .line 816
    const v4, 0x7f0d004f

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v3, v8

    const/4 v6, 0x3

    .line 817
    const v4, 0x7f0d0051

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v3, v6

    const/4 v6, 0x4

    .line 818
    const v4, 0x7f0d0056

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v3, v6

    const/4 v6, 0x5

    .line 819
    const v4, 0x7f0d0053

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v4, v3, v6

    const/4 v4, 0x6

    .line 820
    iget-object v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

    aput-object v6, v3, v4

    const/4 v4, 0x7

    .line 821
    iget-object v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureIndicator:Lcom/moblynx/cameraics/ui/RotateLayout;

    aput-object v6, v3, v4

    const/16 v4, 0x8

    .line 822
    iget-object v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    aput-object v6, v3, v4

    const/16 v4, 0x9

    .line 823
    iget-object v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    aput-object v6, v3, v4

    const/16 v4, 0xa

    .line 824
    iget-object v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->promoRotable:Lcom/moblynx/cameraics/ui/Rotatable;

    aput-object v6, v3, v4

    .line 825
    .local v3, rotateLayout:[Lcom/moblynx/cameraics/ui/Rotatable;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_3

    .line 829
    .end local v3           #rotateLayout:[Lcom/moblynx/cameraics/ui/Rotatable;
    :cond_1
    return-void

    .line 746
    .end local v0           #appRes:Landroid/content/res/Resources;
    :cond_2
    sget v4, Lcom/moblynx/cameraics/compatibility/Settings;->SELECTED_MODE:I

    if-nez v4, :cond_0

    .line 750
    const/high16 v4, 0x7f04

    const/4 v6, 0x0

    invoke-static {p0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ui/RotateLayout;

    iput-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

    .line 751
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->adMobRotable:Lcom/moblynx/cameraics/ui/RotateLayout;

    invoke-static {p0, v4, v7}, Lcom/moblynx/cameraics/compatibility/AdsManager;->requestAdMob(Landroid/app/Activity;Lcom/moblynx/cameraics/ui/RotateLayout;Z)V

    goto/16 :goto_0

    .line 825
    .restart local v0       #appRes:Landroid/content/res/Resources;
    .restart local v3       #rotateLayout:[Lcom/moblynx/cameraics/ui/Rotatable;
    :cond_3
    aget-object v2, v3, v4

    .line 826
    .local v2, r:Lcom/moblynx/cameraics/ui/Rotatable;
    if-eqz v2, :cond_4

    const/16 v5, 0x10e

    invoke-interface {v2, v5}, Lcom/moblynx/cameraics/ui/Rotatable;->setOrientation(I)V

    .line 825
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v3, 0xa8c00

    .line 413
    .local v3, pixelsDiff:I
    const/4 v2, 0x0

    .line 414
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 433
    return v2

    .line 414
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 415
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v1, v4, Landroid/hardware/Camera$Size;->height:I

    .line 416
    .local v1, h:I
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    .line 418
    .local v5, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v5

    sub-int v0, v7, v8

    .line 419
    .local v0, d:I
    if-eqz p3, :cond_2

    if-ltz v0, :cond_0

    .line 422
    :cond_2
    if-eqz p2, :cond_3

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v5, 0x3

    if-ne v7, v8, :cond_0

    .line 425
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 426
    if-ge v0, v3, :cond_0

    .line 427
    iput v5, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewWidth:I

    .line 428
    iput v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewHeight:I

    .line 429
    move v3, v0

    .line 430
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1050
    sparse-switch p0, :sswitch_data_0

    .line 1060
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1052
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1058
    :goto_0
    return-object v0

    .line 1054
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1056
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1058
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1050
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 594
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    iget v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 708
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 709
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 710
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    if-nez v0, :cond_2

    .line 1073
    new-instance v0, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    .line 1074
    iget v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getPreviewBufSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;-><init>(III)V

    .line 1073
    iput-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    .line 1076
    :cond_2
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;->initialize()V

    goto :goto_0
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moblynx/cameraics/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/moblynx/cameraics/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 891
    :cond_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->updateThumbnailButton()V

    .line 892
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1239
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1231
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1232
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1233
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1234
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThreadRunning:Z

    .line 967
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/RotateDialogController;->dismissDialog()V

    .line 968
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moblynx/cameraics/CameraHardwareException;,
            Lcom/moblynx/cameraics/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moblynx/cameraics/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 404
    .local v0, cameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 405
    :cond_0
    invoke-static {p0, v0}, Lcom/moblynx/cameraics/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    .line 406
    invoke-static {v0}, Lcom/moblynx/cameraics/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraOrientation:I

    .line 407
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moblynx/cameraics/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mUsingFrontCamera:Z

    .line 408
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 383
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moblynx/cameraics/CameraHolder;->release()V

    .line 384
    iput-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraState:I

    .line 387
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1002
    iput v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    .line 1004
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ShutterButton;->setBackgroundResource(I)V

    .line 1006
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;->reset()V

    .line 1010
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1011
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1227
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1228
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->reset()V

    .line 1015
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->startCameraPreview()V

    .line 1016
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThreadRunning:Z

    .line 962
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 963
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 14
    .parameter "jpegData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 1027
    if-eqz p1, :cond_1

    .line 1029
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTimeTaken:J

    .line 1028
    invoke-static {v0, v2, v3}, Lcom/moblynx/cameraics/panorama/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTimeTaken:J

    const/4 v4, 0x0

    .line 1031
    iget-object v9, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1030
    invoke-static/range {v0 .. v9}, Lcom/moblynx/cameraics/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BIILcom/moblynx/cameraics/ComboPreferences;)Landroid/net/Uri;

    move-result-object v13

    .line 1032
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_0

    if-eqz p4, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    invoke-static {v1, v0}, Lcom/moblynx/cameraics/Storage;->generateFilepath(Ljava/lang/String;Lcom/moblynx/cameraics/ComboPreferences;)Ljava/lang/String;

    move-result-object v12

    .line 1036
    .local v12, filepath:Ljava/lang/String;
    :try_start_0
    new-instance v11, Landroid/media/ExifInterface;

    invoke-direct {v11, v12}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v11, exif:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    .line 1038
    invoke-static/range {p4 .. p4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v2

    .line 1037
    invoke-virtual {v11, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v11}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    .end local v1           #filename:Ljava/lang/String;
    .end local v11           #exif:Landroid/media/ExifInterface;
    .end local v12           #filepath:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v13

    .line 1040
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v12       #filepath:Ljava/lang/String;
    .restart local v13       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 1041
    .local v10, e:Ljava/io/IOException;
    const-string v0, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot set exif data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1046
    .end local v1           #filename:Ljava/lang/String;
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #filepath:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/SharePopup;->setOrientation(I)V

    .line 253
    :cond_0
    return-void
.end method

.method private setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surface"

    .prologue
    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    return-void

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->releaseCamera()V

    .line 1185
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moblynx/cameraics/CameraHardwareException;,
            Lcom/moblynx/cameraics/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->openCamera()V

    .line 375
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 376
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 377
    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 378
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 437
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 438
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 439
    const-string v6, "PanoramaActivity"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-direct {p0, v5, v9, v10}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 441
    const-string v6, "PanoramaActivity"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0, v5, v9, v9}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 445
    :cond_0
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "preview h = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v7, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 448
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 449
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 450
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 451
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 452
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 453
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "preview fps: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 456
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 457
    iget-object v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 466
    :goto_0
    invoke-static {p1, v9}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyParameters;->setRecordingHint(Landroid/hardware/Camera$Parameters;Z)V

    .line 468
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mHorizontalViewAngle:F

    .line 469
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mVerticalViewAngle:F

    .line 470
    return-void

    .line 460
    :cond_1
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot set the focus mode to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 461
    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 460
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 599
    packed-switch p1, :pswitch_data_0

    .line 613
    :goto_0
    return-void

    .line 601
    :pswitch_0
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 605
    :pswitch_1
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 609
    :pswitch_2
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 1019
    if-eqz p1, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    return-void
.end method

.method private showSharePopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 990
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-nez v0, :cond_0

    .line 999
    :goto_0
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 992
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SharePopup;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 994
    :cond_1
    new-instance v0, Lcom/moblynx/cameraics/ui/SharePopup;

    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 995
    iget v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationCompensation:I

    .line 996
    const v1, 0x7f0d0041

    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/moblynx/cameraics/ui/SharePopup;-><init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/graphics/Bitmap;ILandroid/view/View;Landroid/os/Handler;)V

    .line 994
    iput-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-virtual {v0, v1, v7, v7, v7}, Lcom/moblynx/cameraics/ui/SharePopup;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 697
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    iget v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setIndicatorColor(I)V

    .line 700
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 702
    return-void
.end method

.method private startCameraPreview()V
    .locals 3

    .prologue
    .line 1192
    iget v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraState:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->stopCameraPreview()V

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1199
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1202
    :try_start_0
    const-string v1, "PanoramaActivity"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    const/4 v1, 0x1

    iput v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraState:I

    .line 1209
    return-void

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->releaseCamera()V

    .line 1206
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1213
    const-string v0, "PanoramaActivity"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1216
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraState:I

    .line 1217
    return-void
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "aborted"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    .line 662
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureIndicator:Lcom/moblynx/cameraics/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/RotateLayout;->setVisibility(I)V

    .line 663
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->hideTooFastIndication()V

    .line 664
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->hideDirectionIndicators()V

    .line 665
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/moblynx/cameraics/ui/RotateImageView;->setEnabled(Z)V

    .line 667
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    invoke-virtual {v0, v3}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;->setProgressListener(Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor$ProgressListener;)V

    .line 668
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->stopCameraPreview()V

    .line 670
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 672
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mRotateDialog:Lcom/moblynx/cameraics/RotateDialogController;

    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 674
    new-instance v0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$8;

    invoke-direct {v0, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$8;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    invoke-virtual {v0, v2}, Lcom/moblynx/cameraics/ModePicker;->setEnabled(Z)V

    .line 693
    :cond_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->keepScreenOnAwhile()V

    .line 694
    return-void
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    .line 487
    :cond_0
    invoke-static {p1, p0}, Lcom/moblynx/cameraics/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 488
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->finish()V

    .line 489
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x41a0

    .line 714
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->setReady()V

    .line 715
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->requestRender()V

    .line 720
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 721
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->showTooFastIndication()V

    .line 727
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 728
    float-to-int v0, p3

    .line 730
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setProgress(I)V

    .line 731
    return-void

    .line 724
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->hideTooFastIndication()V

    goto :goto_0

    .line 729
    :cond_2
    float-to-int v0, p4

    goto :goto_1
.end method

.method private updateThumbnailButton()V
    .locals 3

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 897
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/moblynx/cameraics/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 898
    :cond_0
    invoke-static {v0}, Lcom/moblynx/cameraics/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/moblynx/cameraics/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-eqz v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    iget-object v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/moblynx/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_2
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/moblynx/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected doOnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1107
    iput-boolean v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    .line 1108
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->enable()V

    .line 1110
    iput v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    .line 1112
    :try_start_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->setupCamera()V

    .line 1116
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    .line 1117
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->onResume()V

    .line 1119
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->initThumbnailButton()V

    .line 1120
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->keepScreenOnAwhile()V
    :try_end_0
    .catch Lcom/moblynx/cameraics/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/moblynx/cameraics/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1129
    invoke-static {p0}, Lcom/moblynx/cameraics/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/moblynx/cameraics/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/moblynx/cameraics/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1130
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Lcom/moblynx/cameraics/CameraHardwareException;
    const v1, 0x7f08006b

    invoke-static {p0, v1}, Lcom/moblynx/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1124
    .end local v0           #e:Lcom/moblynx/cameraics/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1125
    .local v0, e:Lcom/moblynx/cameraics/CameraDisabledException;
    const v1, 0x7f08006c

    invoke-static {p0, v1}, Lcom/moblynx/cameraics/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public generateFinalMosaic(Z)Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;
    .locals 13
    .parameter "highRes"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1141
    iget-object v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1142
    .local v8, mosaicReturnCode:I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1177
    :goto_0
    return-object v5

    .line 1144
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1145
    new-instance v5, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 1148
    :cond_1
    iget-object v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1149
    .local v1, imageData:[B
    if-nez v1, :cond_2

    .line 1150
    const-string v2, "PanoramaActivity"

    const-string v5, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v5, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 1154
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1155
    .local v7, len:I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    .line 1156
    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    .line 1155
    add-int/2addr v2, v10

    .line 1156
    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    .line 1155
    add-int v3, v2, v10

    .line 1157
    .local v3, width:I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    .line 1158
    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    .line 1157
    add-int/2addr v2, v10

    .line 1158
    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    .line 1157
    add-int v4, v2, v10

    .line 1159
    .local v4, height:I
    const-string v2, "PanoramaActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ImLength = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1163
    :cond_3
    const-string v2, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "width|height <= 0!!, len = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1164
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1163
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v5, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    goto/16 :goto_0

    .line 1168
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1169
    .local v0, yuvimage:Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1170
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1172
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    new-instance v5, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;[BII)V

    goto/16 :goto_0

    .line 1173
    :catch_0
    move-exception v6

    .line 1174
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "PanoramaActivity"

    const-string v5, "Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    new-instance v5, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 473
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 474
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 476
    iget v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/moblynx/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 280
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 281
    .local v2, window:Landroid/view/Window;
    invoke-static {v2}, Lcom/moblynx/cameraics/Util;->enterLightsOutMode(Landroid/view/Window;)V

    .line 282
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/moblynx/cameraics/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 284
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->createContentView()V

    .line 288
    new-instance v3, Lcom/moblynx/cameraics/ComboPreferences;

    invoke-direct {v3, p0}, Lcom/moblynx/cameraics/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 289
    const-string v0, "on"

    .line 291
    .local v0, VALUE_ON:Ljava/lang/String;
    iget-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;

    .line 292
    const-string v4, "pref_camera_silentmode_key"

    const v5, 0x7f080061

    invoke-virtual {p0, v5}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-virtual {v3, v4, v5}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, silentString:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->isInSilentMode:Z

    .line 295
    const-string v3, "PanoramaActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " silent mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->isInSilentMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 299
    iget-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    .line 300
    iget-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    if-nez v3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    .line 304
    :cond_0
    new-instance v3, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-direct {v3, p0, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;

    .line 306
    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTransformMatrix:[F

    .line 309
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 314
    new-instance v3, Lcom/moblynx/cameraics/compatibility/CameraSound;

    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/moblynx/cameraics/compatibility/CameraSound;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraSound:Lcom/moblynx/cameraics/compatibility/CameraSound;

    .line 316
    new-instance v3, Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;

    invoke-direct {v3, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    iput-object v3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    .line 371
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 259
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "add"

    .prologue
    .line 1247
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0
    .parameter "ad"
    .parameter "error"

    .prologue
    .line 1254
    return-void
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .parameter "surface"

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 566
    .local v0, actualTime:J
    iget-boolean v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 591
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 569
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    new-instance v5, Lcom/moblynx/cameraics/panorama/PanoramaActivity$6;

    invoke-direct {v5, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$6;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    invoke-virtual {v4, v5}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 579
    iget v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    if-nez v4, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->runViewFinder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 564
    .end local v0           #actualTime:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 584
    .restart local v0       #actualTime:J
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->lastTime:J

    sub-long v2, v0, v4

    .line 585
    .local v2, value:J
    const-wide/16 v4, 0x46

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 586
    iput-wide v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->lastTime:J

    .line 589
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->runMosaicCapture()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 1260
    return-void
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 493
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 494
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->switchToOtherMode(I)Z

    move-result v0

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMosaicSurfaceChanged()V
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$4;

    invoke-direct {v0, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$4;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method

.method public onMosaicSurfaceCreated(I)V
    .locals 1
    .parameter "textureID"

    .prologue
    .line 514
    new-instance v0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$5;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)V

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1081
    invoke-super {p0}, Lcom/moblynx/cameraics/ActivityBase;->onPause()V

    .line 1083
    iput-boolean v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    .line 1084
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->cancelHighResComputation()V

    .line 1086
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    if-ne v0, v1, :cond_0

    .line 1087
    invoke-direct {p0, v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->stopCapture(Z)V

    .line 1088
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->reset()V

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SharePopup;->dismiss()V

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1093
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 1096
    :cond_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->releaseCamera()V

    .line 1097
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->onPause()V

    .line 1098
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    .line 1099
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationEventListener:Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->disable()V

    .line 1100
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->resetScreenOn()V

    .line 1101
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraSound:Lcom/moblynx/cameraics/compatibility/CameraSound;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/compatibility/CameraSound;->release()V

    .line 1102
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1103
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 1266
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 1271
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 2

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 841
    :pswitch_0
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->isInSilentMode:Z

    if-nez v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraSound:Lcom/moblynx/cameraics/compatibility/CameraSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/compatibility/CameraSound;->playSound(I)V

    .line 843
    :cond_2
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->startCapture()V

    goto :goto_0

    .line 847
    :pswitch_1
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->isInSilentMode:Z

    if-nez v0, :cond_3

    .line 848
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCameraSound:Lcom/moblynx/cameraics/compatibility/CameraSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/compatibility/CameraSound;->playSound(I)V

    .line 849
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->stopCapture(Z)V

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 855
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/moblynx/cameraics/OnClickAttr;
    .end annotation

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->showSharePopup()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1221
    invoke-super {p0}, Lcom/moblynx/cameraics/ActivityBase;->onUserInteraction()V

    .line 1222
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1223
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 858
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->reset()V

    .line 859
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setRightIncreasing(Z)V

    .line 860
    new-instance v0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;

    invoke-direct {v0, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    .line 883
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 884
    return-void
.end method

.method public runMosaicCapture()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->setWarping(Z)V

    .line 541
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->preprocess([F)V

    .line 544
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->lockPreviewReadyFlag()V

    .line 546
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->transferGPUtoCPU()V

    .line 548
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->waitUntilPreviewReady()V

    .line 549
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;->processFrame()V

    .line 550
    return-void
.end method

.method public runViewFinder()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->setWarping(Z)V

    .line 533
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->preprocess([F)V

    .line 534
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->setReady()V

    .line 535
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicView:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->requestRender()V

    .line 536
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 908
    new-instance v0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$11;

    invoke-direct {v0, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$11;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 957
    invoke-virtual {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->reportProgress()V

    .line 958
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 617
    iput-boolean v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCancelComputation:Z

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTimeTaken:J

    .line 619
    const/4 v0, 0x1

    iput v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureState:I

    .line 620
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mShutterButton:Lcom/moblynx/cameraics/ShutterButton;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ShutterButton;->setBackgroundResource(I)V

    .line 621
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCaptureIndicator:Lcom/moblynx/cameraics/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/moblynx/cameraics/ui/RotateLayout;->setVisibility(I)V

    .line 622
    invoke-direct {p0, v2}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->showDirectionIndicators(I)V

    .line 623
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/moblynx/cameraics/ui/RotateImageView;->setEnabled(Z)V

    .line 625
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCompassValueXStartBuffer:F

    iput v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCompassValueXStart:F

    .line 626
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCompassValueYStartBuffer:F

    iput v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mCompassValueYStart:F

    .line 627
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTimestamp:J

    .line 629
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mMosaicFrameProcessor:Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;

    new-instance v1, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;

    invoke-direct {v1, p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;-><init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor;->setProgressListener(Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor$ProgressListener;)V

    .line 648
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mModePicker:Lcom/moblynx/cameraics/ModePicker;

    invoke-virtual {v0, v2}, Lcom/moblynx/cameraics/ModePicker;->setEnabled(Z)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->reset()V

    .line 653
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setIndicatorWidth(F)V

    .line 654
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setMaxProgress(I)V

    .line 655
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPanoProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setVisibility(I)V

    .line 656
    iget v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDeviceOrientation:I

    iput v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I

    .line 657
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->keepScreenOn()V

    .line 658
    return-void
.end method
