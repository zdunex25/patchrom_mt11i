.class public Lcom/android/cameraics/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/EffectsRecorder$EffectsListener;
    }
.end annotation


# static fields
.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_FX:I = 0x3

.field public static final EFFECT_FX_DOCUMENTARY:I = 0x2

.field public static final EFFECT_FX_LOMO:I = 0x1

.field public static final EFFECT_FX_PENCIL:I = 0x0

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_PREVIEW_RUNNING:I = 0x5

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final NUM_OF_FX_EFFECTS:I = 0x3

.field public static final NUM_OF_GF_EFFECTS:I = 0x6

.field private static final STATE_CONFIGURE:I = 0x0

.field private static final STATE_PREVIEW:I = 0x3

.field private static final STATE_RECORD:I = 0x4

.field private static final STATE_RELEASED:I = 0x5

.field private static final STATE_STARTING_PREVIEW:I = 0x2

.field private static final STATE_WAITING_FOR_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "effectsrecorder"


# instance fields
.field private mAppIsLandscape:Z

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraFacing:I

.field private mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/android/cameraics/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphEnv:Landroid/filterfw/GraphEnvironment;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOldRunner:Landroid/filterfw/core/GraphRunner;

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

.field private mReleased:Z

.field private mRunner:Landroid/filterfw/core/GraphRunner;

.field private mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

.field private mState:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/cameraics/EffectsRecorder;->mCaptureRate:D

    .line 104
    iput v2, p0, Lcom/android/cameraics/EffectsRecorder;->mOrientationHint:I

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/cameraics/EffectsRecorder;->mMaxFileSize:J

    .line 106
    iput v2, p0, Lcom/android/cameraics/EffectsRecorder;->mMaxDurationMs:I

    .line 107
    iput v2, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraFacing:I

    .line 110
    iput v2, p0, Lcom/android/cameraics/EffectsRecorder;->mEffect:I

    .line 111
    iput v2, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    .line 118
    iput-object v3, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 119
    iput-object v3, p0, Lcom/android/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 129
    iput v2, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    .line 131
    const-string v0, "effectsrecorder"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    .line 615
    new-instance v0, Lcom/android/cameraics/EffectsRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/cameraics/EffectsRecorder$1;-><init>(Lcom/android/cameraics/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 679
    new-instance v0, Lcom/android/cameraics/EffectsRecorder$2;

    invoke-direct {v0, p0}, Lcom/android/cameraics/EffectsRecorder$2;-><init>(Lcom/android/cameraics/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 691
    new-instance v0, Lcom/android/cameraics/EffectsRecorder$3;

    invoke-direct {v0, p0}, Lcom/android/cameraics/EffectsRecorder$3;-><init>(Lcom/android/cameraics/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 877
    new-instance v0, Lcom/android/cameraics/EffectsRecorder$4;

    invoke-direct {v0, p0}, Lcom/android/cameraics/EffectsRecorder$4;-><init>(Lcom/android/cameraics/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 158
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EffectsRecorder created ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/android/cameraics/compatibility/CameraSound;

    invoke-direct {v0, p1}, Lcom/android/cameraics/compatibility/CameraSound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

    .line 162
    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/EffectsRecorder;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$1(Lcom/android/cameraics/EffectsRecorder;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$10(Lcom/android/cameraics/EffectsRecorder;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 954
    invoke-direct {p0, p1}, Lcom/android/cameraics/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$11(Lcom/android/cameraics/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/cameraics/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-void
.end method

.method static synthetic access$13(Lcom/android/cameraics/EffectsRecorder;)Lcom/android/cameraics/EffectsRecorder$EffectsListener;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectsListener:Lcom/android/cameraics/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/cameraics/EffectsRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$15(Lcom/android/cameraics/EffectsRecorder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/cameraics/EffectsRecorder;)I
    .locals 1
    .parameter

    .prologue
    .line 129
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/cameraics/EffectsRecorder;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/cameraics/EffectsRecorder;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/cameraics/EffectsRecorder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput p1, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    return-void
.end method

.method static synthetic access$6(Lcom/android/cameraics/EffectsRecorder;)I
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    return v0
.end method

.method static synthetic access$7(Lcom/android/cameraics/EffectsRecorder;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 944
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/EffectsRecorder;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$8(Lcom/android/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 11
    .parameter "forceReset"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 449
    monitor-enter p0

    if-nez p1, :cond_0

    .line 450
    :try_start_0
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    iget v5, p0, Lcom/android/cameraics/EffectsRecorder;->mEffect:I

    if-ne v4, v5, :cond_0

    .line 451
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    if-eq v4, v8, :cond_0

    .line 453
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    if-ne v4, v10, :cond_7

    .line 454
    :cond_0
    iget-boolean v4, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_1

    .line 455
    const-string v4, "effectsrecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Effect initializing. Preview size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    iget v6, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 455
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 460
    const-string v7, "previewSurface"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 461
    const-string v7, "previewWidth"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 462
    const-string v7, "previewHeight"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 463
    const-string v7, "orientation"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/android/cameraics/EffectsRecorder;->mOrientationHint:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 459
    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 464
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    if-eq v4, v10, :cond_2

    .line 465
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    if-ne v4, v8, :cond_3

    .line 467
    :cond_2
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/android/cameraics/EffectsRecorder;->sendMessage(II)V

    .line 470
    :cond_3
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mEffect:I

    packed-switch v4, :pswitch_data_0

    .line 513
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown effect ID"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/cameraics/EffectsRecorder;->mEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 474
    :pswitch_0
    const v4, 0x100400

    :try_start_1
    invoke-static {v4}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 475
    const v4, 0x200400

    invoke-static {v4}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 477
    :cond_4
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mContext:Landroid/content/Context;

    const v6, 0x7f070007

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphId:I

    .line 515
    :goto_0
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mEffect:I

    iput v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    .line 517
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 518
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget v5, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->getRunner(II)Landroid/filterfw/core/GraphRunner;

    move-result-object v4

    iput-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 519
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    invoke-virtual {v4, v5}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 520
    iget-boolean v4, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_5

    .line 521
    const-string v4, "effectsrecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "New runner: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 522
    const-string v6, ". Old runner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 521
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_5
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    if-eq v4, v10, :cond_6

    .line 525
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    if-ne v4, v8, :cond_7

    .line 528
    :cond_6
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 534
    :try_start_3
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 538
    :cond_7
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    packed-switch v4, :pswitch_data_1

    .line 562
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/cameraics/EffectsRecorder;->setFaceDetectOrientation()V

    .line 563
    invoke-direct {p0}, Lcom/android/cameraics/EffectsRecorder;->setRecordingOrientation()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 482
    :cond_9
    :try_start_4
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mContext:Landroid/content/Context;

    const v6, 0x7f070006

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphId:I

    goto :goto_0

    .line 486
    :pswitch_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/cameraics/EffectsRecorder;->sendMessage(II)V

    .line 487
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mContext:Landroid/content/Context;

    const/high16 v6, 0x7f07

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphId:I

    goto/16 :goto_0

    .line 493
    :pswitch_2
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 495
    :pswitch_3
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mContext:Landroid/content/Context;

    const v6, 0x7f070005

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphId:I

    goto/16 :goto_0

    .line 499
    :pswitch_4
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mContext:Landroid/content/Context;

    const v6, 0x7f070004

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphId:I

    goto/16 :goto_0

    .line 503
    :pswitch_5
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mContext:Landroid/content/Context;

    const v6, 0x7f070003

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphId:I

    goto/16 :goto_0

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to connect camera to effect input"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 540
    .end local v1           #e:Ljava/io/IOException;
    :pswitch_6
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/cameraics/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 541
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "goofyrenderer"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 542
    .local v2, goofyFilter:Landroid/filterfw/core/Filter;
    const-string v5, "currentEffect"

    .line 543
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 542
    invoke-virtual {v2, v5, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 546
    .end local v2           #goofyFilter:Landroid/filterfw/core/Filter;
    :pswitch_7
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/cameraics/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 547
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "background"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 548
    .local v0, backgroundSrc:Landroid/filterfw/core/Filter;
    const-string v5, "sourceUrl"

    .line 549
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 548
    invoke-virtual {v0, v5, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraFacing:I

    if-ne v4, v9, :cond_8

    .line 553
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "replacer"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v3

    .line 556
    .local v3, replacer:Landroid/filterfw/core/Filter;
    iget-boolean v4, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_8

    const-string v4, "effectsrecorder"

    const-string v5, "Setting the background to be mirrored"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 538
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 493
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 423
    new-instance v1, Landroid/filterfw/GraphEnvironment;

    invoke-direct {v1}, Landroid/filterfw/GraphEnvironment;-><init>()V

    iput-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 424
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v1}, Landroid/filterfw/GraphEnvironment;->createGLEnvironment()V

    .line 426
    iget-boolean v1, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "effectsrecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Effects framework initializing. Recording size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    iget-boolean v1, p0, Lcom/android/cameraics/EffectsRecorder;->mAppIsLandscape:Z

    if-nez v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 433
    .local v0, tmp:I
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget-object v2, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 434
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 436
    .end local v0           #tmp:I
    :cond_1
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    .line 437
    const-string v3, "textureSourceCallback"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 438
    const-string v4, "recordingWidth"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 439
    const-string v4, "recordingHeight"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 440
    const-string v4, "recordingProfile"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 441
    const-string v4, "learningDoneListener"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 442
    const-string v4, "recordingDoneListener"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v4, v2, v3

    .line 436
    invoke-virtual {v1, v2}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 443
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 444
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/cameraics/EffectsRecorder;->mGraphId:I

    .line 445
    iput v5, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    .line 446
    return-void
.end method

.method public static isEffectSupported(I)Z
    .locals 2
    .parameter "effectId"

    .prologue
    const/4 v0, 0x0

    .line 139
    packed-switch p0, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 143
    :pswitch_0
    const-string v1, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    .line 142
    invoke-static {v1}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    const/high16 v1, 0x40

    invoke-static {v1}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :pswitch_1
    const-string v0, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 150
    :pswitch_2
    const-string v0, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectsListener:Lcom/android/cameraics/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/cameraics/EffectsRecorder$6;

    invoke-direct {v1, p0, p1}, Lcom/android/cameraics/EffectsRecorder$6;-><init>(Lcom/android/cameraics/EffectsRecorder;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 966
    :cond_0
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectsListener:Lcom/android/cameraics/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/cameraics/EffectsRecorder$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/cameraics/EffectsRecorder$5;-><init>(Lcom/android/cameraics/EffectsRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 952
    :cond_0
    return-void
.end method

.method private setFaceDetectOrientation()V
    .locals 5

    .prologue
    .line 328
    iget v3, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 329
    iget-object v3, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "rotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 330
    .local v2, rotateFilter:Landroid/filterfw/core/Filter;
    iget-object v3, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "metarotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 331
    .local v0, metaRotateFilter:Landroid/filterfw/core/Filter;
    const-string v3, "rotation"

    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    iget v3, p0, Lcom/android/cameraics/EffectsRecorder;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 333
    .local v1, reverseDegrees:I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    .end local v0           #metaRotateFilter:Landroid/filterfw/core/Filter;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Landroid/filterfw/core/Filter;
    :cond_0
    return-void
.end method

.method private setRecordingOrientation()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 338
    iget v6, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_0

    .line 339
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 340
    .local v0, bl:Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 341
    .local v1, br:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 342
    .local v4, tl:Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 344
    .local v5, tr:Landroid/filterfw/geometry/Point;
    iget v6, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraFacing:I

    if-nez v6, :cond_1

    .line 346
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 358
    .local v3, recordingRegion:Landroid/filterfw/geometry/Quad;
    :goto_0
    iget-object v6, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "recorder"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 359
    .local v2, recorder:Landroid/filterfw/core/Filter;
    const-string v6, "inputRegion"

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    .end local v0           #bl:Landroid/filterfw/geometry/Point;
    .end local v1           #br:Landroid/filterfw/geometry/Point;
    .end local v2           #recorder:Landroid/filterfw/core/Filter;
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    .end local v4           #tl:Landroid/filterfw/geometry/Point;
    .end local v5           #tr:Landroid/filterfw/geometry/Point;
    :cond_0
    return-void

    .line 350
    .restart local v0       #bl:Landroid/filterfw/geometry/Point;
    .restart local v1       #br:Landroid/filterfw/geometry/Point;
    .restart local v4       #tl:Landroid/filterfw/geometry/Point;
    .restart local v5       #tr:Landroid/filterfw/geometry/Point;
    :cond_1
    iget v6, p0, Lcom/android/cameraics/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/cameraics/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 352
    :cond_2
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v0, v5, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 353
    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 355
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_3
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0
.end method


# virtual methods
.method enable3ALocks(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 870
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 871
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, p1}, Lcom/android/cameraics/EffectsRecorder;->tryEnable3ALocks(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 874
    :cond_0
    return-void
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 930
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Releasing ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_0
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 939
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    monitor-exit p0

    return-void

    .line 936
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/cameraics/EffectsRecorder;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 932
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAppToLandscape(Z)V
    .locals 2
    .parameter "landscape"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/RuntimeException;

    .line 381
    const-string v1, "setAppToLandscape called after configuration!"

    .line 380
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iput-boolean p1, p0, Lcom/android/cameraics/EffectsRecorder;->mAppIsLandscape:Z

    .line 384
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 2
    .parameter "cameraDevice"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 176
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    .line 177
    return-void

    .line 167
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while previewing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraFacing(I)V
    .locals 2
    .parameter "facing"

    .prologue
    .line 387
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 394
    iput p1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraFacing:I

    .line 395
    invoke-direct {p0}, Lcom/android/cameraics/EffectsRecorder;->setRecordingOrientation()V

    .line 396
    return-void

    .line 389
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 390
    const-string v1, "setCameraFacing called on alrady released recorder!"

    .line 389
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 255
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 264
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting time lapse capture rate to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iput-wide p1, p0, Lcom/android/cameraics/EffectsRecorder;->mCaptureRate:D

    .line 266
    return-void

    .line 257
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .parameter "effect"
    .parameter "effectParameter"

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setEffect: effect ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    const-string v2, ", parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 309
    iput p1, p0, Lcom/android/cameraics/EffectsRecorder;->mEffect:I

    .line 310
    iput-object p2, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    .line 312
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 313
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 314
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cameraics/EffectsRecorder;->initializeEffect(Z)V

    .line 316
    :cond_2
    return-void

    .line 302
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/android/cameraics/EffectsRecorder$EffectsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectsListener:Lcom/android/cameraics/EffectsRecorder$EffectsListener;

    .line 325
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 2
    .parameter "maxDurationMs"

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 250
    iput p1, p0, Lcom/android/cameraics/EffectsRecorder;->mMaxDurationMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 244
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 246
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 2
    .parameter "maxFileSize"

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 234
    iput-wide p1, p0, Lcom/android/cameraics/EffectsRecorder;->mMaxFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 228
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 2
    .parameter "errorListener"

    .prologue
    .line 411
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 419
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 420
    return-void

    .line 413
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2
    .parameter "infoListener"

    .prologue
    .line 399
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 407
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 408
    return-void

    .line 401
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 363
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 370
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting orientation hint to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iput p1, p0, Lcom/android/cameraics/EffectsRecorder;->mOrientationHint:I

    .line 372
    invoke-direct {p0}, Lcom/android/cameraics/EffectsRecorder;->setFaceDetectOrientation()V

    .line 373
    invoke-direct {p0}, Lcom/android/cameraics/EffectsRecorder;->setRecordingOrientation()V

    .line 374
    return-void

    .line 365
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 366
    const-string v1, "setOrientationHint called on an already released recorder!"

    .line 365
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 206
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 217
    return-void

    .line 208
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "outputFile"

    .prologue
    .line 192
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 201
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 203
    return-void

    .line 194
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;II)V
    .locals 3
    .parameter "previewSurfaceHolder"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPreviewDisplay ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 281
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 282
    iput p2, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewWidth:I

    .line 283
    iput p3, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewHeight:I

    .line 285
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_1

    .line 294
    :goto_0
    return-void

    .line 274
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewDisplay cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewDisplay called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/cameraics/EffectsRecorder;->startPreview()V

    goto :goto_0

    .line 291
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cameraics/EffectsRecorder;->initializeEffect(Z)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 285
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 180
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 188
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 189
    return-void

    .line 182
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting preview ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 583
    iget v0, p0, Lcom/android/cameraics/EffectsRecorder;->mEffect:I

    if-nez v0, :cond_1

    .line 584
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect selected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 573
    :pswitch_0
    :try_start_1
    const-string v0, "effectsrecorder"

    const-string v1, "startPreview called when already running preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    :goto_0
    monitor-exit p0

    return-void

    .line 576
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot start preview when already recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 587
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect parameter provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_3

    .line 590
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recording profile provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_5

    .line 593
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "effectsrecorder"

    const-string v1, "Passed a null surface holder; waiting for valid one"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    goto :goto_0

    .line 597
    :cond_5
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_6

    .line 598
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_6
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "effectsrecorder"

    const-string v1, "Initializing filter graph"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_7
    invoke-direct {p0}, Lcom/android/cameraics/EffectsRecorder;->initializeFilterFramework()V

    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cameraics/EffectsRecorder;->initializeEffect(Z)V

    .line 607
    iget-boolean v0, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_8

    const-string v0, "effectsrecorder"

    const-string v1, "Starting filter graph"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    .line 610
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized startRecording()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 700
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_0

    const-string v4, "effectsrecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Starting recording ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 711
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v4, :cond_1

    .line 712
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No output file name or descriptor provided!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 704
    :pswitch_0
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Already recording, cannot begin anew!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 706
    :pswitch_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "startRecording called on an already released recorder!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 715
    :cond_1
    iget v4, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    if-nez v4, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/android/cameraics/EffectsRecorder;->startPreview()V

    .line 719
    :cond_2
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "recorder"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 720
    .local v1, recorder:Landroid/filterfw/core/Filter;
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_5

    .line 721
    const-string v4, "outputFileDescriptor"

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 727
    :goto_0
    const-string v4, "audioSource"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    const-string v4, "recordingProfile"

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    const-string v4, "orientationHint"

    iget v5, p0, Lcom/android/cameraics/EffectsRecorder;->mOrientationHint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 735
    iget-wide v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 736
    .local v0, captureTimeLapse:Z
    :goto_1
    if-eqz v0, :cond_7

    .line 737
    const-wide/high16 v4, 0x3ff0

    iget-wide v6, p0, Lcom/android/cameraics/EffectsRecorder;->mCaptureRate:D

    div-double v2, v4, v6

    .line 738
    .local v2, timeBetweenFrameCapture:D
    const-string v4, "timelapseRecordingIntervalUs"

    .line 739
    const-wide v5, 0x412e848000000000L

    mul-double/2addr v5, v2

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 738
    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    .end local v2           #timeBetweenFrameCapture:D
    :goto_2
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_3

    .line 745
    const-string v4, "infoListener"

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    :cond_3
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v4, :cond_4

    .line 748
    const-string v4, "errorListener"

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    :cond_4
    const-string v4, "maxFileSize"

    iget-wide v5, p0, Lcom/android/cameraics/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 751
    const-string v4, "maxDurationMs"

    iget v5, p0, Lcom/android/cameraics/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    const-string v4, "recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    iget-object v4, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/cameraics/compatibility/CameraSound;->playSound(I)V

    .line 754
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    monitor-exit p0

    return-void

    .line 723
    .end local v0           #captureTimeLapse:Z
    :cond_5
    :try_start_2
    const-string v4, "outputFile"

    iget-object v5, p0, Lcom/android/cameraics/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 735
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 741
    .restart local v0       #captureTimeLapse:Z
    :cond_7
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 702
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized stopPreview()V
    .locals 4

    .prologue
    .line 782
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "effectsrecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopping preview ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    iget v1, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    sparse-switch v1, :sswitch_data_0

    .line 794
    iget v1, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 795
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/cameraics/EffectsRecorder;->stopRecording(Z)V

    .line 799
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/cameraics/EffectsRecorder;->mCurrentEffect:I

    .line 801
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :try_start_1
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 807
    :try_start_2
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

    invoke-virtual {v1}, Lcom/android/cameraics/compatibility/CameraSound;->release()V

    .line 809
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    .line 810
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 811
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 812
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 814
    :goto_0
    monitor-exit p0

    return-void

    .line 786
    :sswitch_0
    :try_start_3
    const-string v1, "effectsrecorder"

    const-string v2, "StopPreview called when preview not active!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 782
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 789
    :sswitch_1
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopPreview called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect camera to effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 784
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording(Z)V
    .locals 4
    .parameter "isSilentMode"

    .prologue
    .line 758
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "effectsrecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stop recording ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    iget v1, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 771
    :pswitch_0
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "recorder"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 772
    .local v0, recorder:Landroid/filterfw/core/Filter;
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    if-nez p1, :cond_1

    .line 775
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraSound:Lcom/android/cameraics/compatibility/CameraSound;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/cameraics/compatibility/CameraSound;->playSound(I)V

    .line 777
    :cond_1
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/cameraics/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    .end local v0           #recorder:Landroid/filterfw/core/Filter;
    :goto_0
    monitor-exit p0

    return-void

    .line 764
    :pswitch_1
    :try_start_1
    const-string v1, "effectsrecorder"

    const-string v2, "StopRecording called when recording not active!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 767
    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 760
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method tryEnable3ALocks(Z)Z
    .locals 2
    .parameter "toggle"

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 847
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    invoke-static {v0, p1}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setAutoExposureLock(Landroid/hardware/Camera$Parameters;Z)V

    .line 859
    invoke-static {v0, p1}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setAutoWhiteBalanceLock(Landroid/hardware/Camera$Parameters;Z)V

    .line 861
    iget-object v1, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 862
    const/4 v1, 0x1

    .line 864
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    .line 818
    iget-object v2, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 821
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->isVideoStabilizationSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    .line 823
    .local v1, vstabSupported:Z
    if-eqz v1, :cond_1

    .line 825
    iget-boolean v2, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "effectsrecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting video stabilization to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    invoke-static {v0, p1}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->setVideoStabilization(Landroid/hardware/Camera$Parameters;Z)V

    .line 827
    iget-object v2, p0, Lcom/android/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 828
    const/4 v2, 0x1

    .line 840
    :goto_0
    return v2

    .line 839
    :cond_1
    iget-boolean v2, p0, Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_2

    const-string v2, "effectsrecorder"

    const-string v3, "Video stabilization not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
