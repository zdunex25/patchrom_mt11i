.class public Lcom/android/cameraics/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/FocusManager$Listener;,
        Lcom/android/cameraics/FocusManager$MainHandler;
    }
.end annotation


# static fields
.field private static final CAPTURE:I = 0x1

.field private static final CAPTURE_DELAY:I = 0xc8

.field private static final FOCUS_BEEP_VOLUME:I = 0x64

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mFaceView:Lcom/android/cameraics/ui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/cameraics/ui/FocusIndicatorView;

.field private mFocusIndicatorRotateLayout:Landroid/view/View;

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/cameraics/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/cameraics/ComboPreferences;

.field private mPreviewFrame:Landroid/view/View;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/cameraics/ComboPreferences;[Ljava/lang/String;)V
    .locals 2
    .parameter "preferences"
    .parameter "defaultFocusModes"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    .line 118
    iput-object p1, p0, Lcom/android/cameraics/FocusManager;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 119
    iput-object p2, p0, Lcom/android/cameraics/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/android/cameraics/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cameraics/FocusManager$MainHandler;-><init>(Lcom/android/cameraics/FocusManager;Lcom/android/cameraics/FocusManager$MainHandler;)V

    iput-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/cameraics/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/cameraics/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->capture()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 415
    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/cameraics/FocusManager$Listener;->autoFocus()V

    .line 417
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    .line 420
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/FaceView;->pause()V

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->updateFocusUI()V

    .line 422
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->resetTouchFocus()V

    .line 432
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/cameraics/FocusManager$Listener;->cancelAutoFocus()V

    .line 433
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/FaceView;->resume()V

    .line 434
    :cond_0
    iput v2, p0, Lcom/android/cameraics/FocusManager;->mState:I

    .line 435
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->updateFocusUI()V

    .line 436
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/cameraics/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iput v1, p0, Lcom/android/cameraics/FocusManager;->mState:I

    .line 442
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    :cond_0
    return-void
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

    .line 583
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

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    const v1, 0x200400

    invoke-static {v1}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 548
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 549
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 550
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/cameraics/Util;->clamp(III)I

    move-result v3

    .line 551
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/cameraics/Util;->clamp(III)I

    move-result v5

    .line 553
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 554
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/cameraics/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 555
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/cameraics/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 556
    return-void
.end method

.method public doSnap()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const v3, 0x200400

    const/4 v2, 0x1

    .line 203
    iget-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 210
    :cond_2
    invoke-static {v3}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->capture()V

    goto :goto_0

    .line 218
    :cond_4
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    if-ne v0, v2, :cond_5

    .line 222
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    goto :goto_0

    .line 223
    :cond_5
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 229
    invoke-static {v3}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 235
    :cond_6
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 448
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 480
    :goto_0
    return-object v3

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 451
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/cameraics/FocusManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 453
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 470
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/cameraics/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 473
    const-string v3, "auto"

    .line 474
    iget-object v4, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 473
    invoke-static {v3, v4}, Lcom/android/cameraics/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    .line 474
    if-eqz v3, :cond_5

    .line 475
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 480
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 456
    :cond_3
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mPreferences:Lcom/android/cameraics/ComboPreferences;

    .line 457
    const-string v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    .line 456
    invoke-virtual {v3, v4, v5}, Lcom/android/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 460
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 461
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 462
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 463
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/cameraics/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 464
    iput-object v1, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 461
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 477
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Landroid/view/View;Landroid/view/View;Lcom/android/cameraics/ui/FaceView;Lcom/android/cameraics/FocusManager$Listener;ZI)V
    .locals 3
    .parameter "focusIndicatorRotate"
    .parameter "previewFrame"
    .parameter "faceView"
    .parameter "listener"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/cameraics/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 146
    const v1, 0x7f0d001c

    .line 145
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/cameraics/ui/FocusIndicatorView;

    iput-object v1, p0, Lcom/android/cameraics/FocusManager;->mFocusIndicator:Lcom/android/cameraics/ui/FocusIndicatorView;

    .line 147
    iput-object p2, p0, Lcom/android/cameraics/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 148
    iput-object p3, p0, Lcom/android/cameraics/FocusManager;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    .line 149
    iput-object p4, p0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    .line 151
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 152
    invoke-static {v0, p5, p6, v1, v2}, Lcom/android/cameraics/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 157
    iget-object v1, p0, Lcom/android/cameraics/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 159
    iget-object v1, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/cameraics/FocusManager;->mInitialized:Z

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v1, "FocusManager"

    const-string v2, "mParameters is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iput-object p1, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 129
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->getMaxNumFocusAreas(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    const-string v0, "auto"

    .line 131
    iget-object v3, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 130
    invoke-static {v0, v3}, Lcom/android/cameraics/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 131
    if-eqz v0, :cond_0

    move v0, v1

    .line 129
    :goto_0
    iput-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mFocusAreaSupported:Z

    .line 133
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :goto_1
    iput-boolean v2, p0, Lcom/android/cameraics/FocusManager;->mLockAeAwbNeeded:Z

    .line 140
    return-void

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    :cond_1
    move v2, v1

    .line 134
    goto :goto_1
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 559
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 563
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 246
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 250
    if-eqz p1, :cond_1

    .line 251
    iput v2, p0, Lcom/android/cameraics/FocusManager;->mState:I

    .line 255
    :goto_0
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->updateFocusUI()V

    .line 257
    const v0, 0x200400

    invoke-static {v0}, Landroid/support/custom/Helper;->getFeatures(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 294
    :cond_0
    :goto_1
    return-void

    .line 253
    :cond_1
    iput v4, p0, Lcom/android/cameraics/FocusManager;->mState:I

    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->capture()V

    goto :goto_1

    .line 265
    :cond_3
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    if-ne v0, v3, :cond_0

    .line 269
    if-eqz p1, :cond_5

    .line 270
    iput v2, p0, Lcom/android/cameraics/FocusManager;->mState:I

    .line 276
    const-string v0, "continuous-picture"

    .line 278
    iget-object v1, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v0, v3}, Lcom/android/cameraics/FocusManager$Listener;->playSound(I)V

    .line 284
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->updateFocusUI()V

    .line 287
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 282
    :cond_5
    iput v4, p0, Lcom/android/cameraics/FocusManager;->mState:I

    goto :goto_2
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->onPreviewStopped()V

    .line 412
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    .line 401
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    .line 405
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->resetTouchFocus()V

    .line 407
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->updateFocusUI()V

    .line 408
    return-void
.end method

.method public onShutter()V
    .locals 0

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->resetTouchFocus()V

    .line 242
    invoke-virtual {p0}, Lcom/android/cameraics/FocusManager;->updateFocusUI()V

    .line 243
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mAeAwbLock:Z

    .line 172
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/cameraics/FocusManager$Listener;->setFocusParameters()V

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 189
    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 190
    :cond_2
    invoke-direct {p0}, Lcom/android/cameraics/FocusManager;->cancelAutoFocus()V

    .line 196
    :cond_3
    iget-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cameraics/FocusManager;->mAeAwbLock:Z

    .line 198
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/cameraics/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "e"

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cameraics/FocusManager;->mInitialized:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 396
    :goto_0
    return v2

    .line 300
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    .line 302
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/cameraics/FocusManager;->cancelAutoFocus()V

    .line 306
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 307
    .local v6, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 308
    .local v7, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 309
    .local v3, focusWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 310
    .local v4, focusHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 311
    .local v8, previewWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 312
    .local v9, previewHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_4

    .line 317
    :try_start_0
    const-string v2, "android.hardware.Camera$Area"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 320
    .local v11, MyArea:Ljava/lang/Class;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v10, Landroid/graphics/Rect;

    aput-object v10, v2, v5

    const/4 v5, 0x1

    .line 321
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    .line 320
    invoke-virtual {v11, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 324
    .local v12, c:Ljava/lang/reflect/Constructor;
    const-string v2, "FocusManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "const "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v5, v10

    const/4 v10, 0x1

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v5, v10

    invoke-virtual {v12, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/cameraics/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v5, v10

    const/4 v10, 0x1

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v5, v10

    invoke-virtual {v12, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v11           #MyArea:Ljava/lang/Class;
    .end local v12           #c:Ljava/lang/reflect/Constructor;
    :cond_4
    :goto_1
    :try_start_1
    const-string v2, "android.hardware.Camera$Area"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 361
    .restart local v11       #MyArea:Ljava/lang/Class;
    const/high16 v5, 0x3f80

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->getArea(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v2, p0

    .line 361
    invoke-virtual/range {v2 .. v10}, Lcom/android/cameraics/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 363
    const/high16 v5, 0x3fc0

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->getArea(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v2, p0

    .line 363
    invoke-virtual/range {v2 .. v10}, Lcom/android/cameraics/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    .end local v11           #MyArea:Ljava/lang/Class;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 374
    .local v15, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v2, v3, 0x2

    sub-int v2, v6, v2

    const/4 v5, 0x0

    sub-int v10, v8, v3

    invoke-static {v2, v5, v10}, Lcom/android/cameraics/Util;->clamp(III)I

    move-result v14

    .line 375
    .local v14, left:I
    div-int/lit8 v2, v4, 0x2

    sub-int v2, v7, v2

    const/4 v5, 0x0

    sub-int v10, v9, v4

    invoke-static {v2, v5, v10}, Lcom/android/cameraics/Util;->clamp(III)I

    move-result v17

    .line 376
    .local v17, top:I
    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 378
    invoke-virtual {v15}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v16

    .line 379
    .local v16, rules:[I
    const/16 v2, 0xd

    const/4 v5, 0x0

    aput v5, v16, v2

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v2}, Lcom/android/cameraics/FocusManager$Listener;->stopFaceDetection()V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v2}, Lcom/android/cameraics/FocusManager$Listener;->setFocusParameters()V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cameraics/FocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/android/cameraics/FocusManager;->autoFocus()V

    .line 396
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 338
    .end local v14           #left:I
    .end local v15           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16           #rules:[I
    .end local v17           #top:I
    :catch_0
    move-exception v13

    .line 340
    .local v13, e1:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 390
    .end local v13           #e1:Ljava/lang/Exception;
    .restart local v14       #left:I
    .restart local v15       #p:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16       #rules:[I
    .restart local v17       #top:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/cameraics/FocusManager;->updateFocusUI()V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const-wide/16 v18, 0xbb8

    move-wide/from16 v0, v18

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 366
    .end local v14           #left:I
    .end local v15           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16           #rules:[I
    .end local v17           #top:I
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/cameraics/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/cameraics/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 533
    iget-boolean v2, p0, Lcom/android/cameraics/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 544
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/android/cameraics/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 538
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 539
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 540
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 542
    iput-object v5, p0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    .line 543
    iput-object v5, p0, Lcom/android/cameraics/FocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/android/cameraics/FocusManager;->mAeAwbLock:Z

    .line 576
    return-void
.end method

.method public updateFocusUI()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 492
    iget-boolean v5, p0, Lcom/android/cameraics/FocusManager;->mInitialized:Z

    if-nez v5, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v5, p0, Lcom/android/cameraics/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/cameraics/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v3, v5, 0x4

    .line 496
    .local v3, len:I
    iget-object v5, p0, Lcom/android/cameraics/FocusManager;->mFocusIndicator:Lcom/android/cameraics/ui/FocusIndicatorView;

    invoke-virtual {v5}, Lcom/android/cameraics/ui/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 497
    .local v2, layout:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 498
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 501
    iget-object v5, p0, Lcom/android/cameraics/FocusManager;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/cameraics/FocusManager;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    invoke-virtual {v5}, Lcom/android/cameraics/ui/FaceView;->faceExists()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 502
    .local v0, faceExists:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/cameraics/FocusManager;->mFaceView:Lcom/android/cameraics/ui/FaceView;

    .line 504
    .local v1, focusIndicator:Lcom/android/cameraics/ui/FocusIndicator;
    :goto_2
    iget v5, p0, Lcom/android/cameraics/FocusManager;->mState:I

    if-nez v5, :cond_5

    .line 505
    iget-object v4, p0, Lcom/android/cameraics/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v4, :cond_4

    .line 506
    invoke-interface {v1}, Lcom/android/cameraics/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 501
    .end local v0           #faceExists:Z
    .end local v1           #focusIndicator:Lcom/android/cameraics/ui/FocusIndicator;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 502
    .restart local v0       #faceExists:Z
    :cond_3
    iget-object v1, p0, Lcom/android/cameraics/FocusManager;->mFocusIndicator:Lcom/android/cameraics/ui/FocusIndicatorView;

    goto :goto_2

    .line 511
    .restart local v1       #focusIndicator:Lcom/android/cameraics/ui/FocusIndicator;
    :cond_4
    invoke-interface {v1}, Lcom/android/cameraics/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 513
    :cond_5
    iget v5, p0, Lcom/android/cameraics/FocusManager;->mState:I

    if-eq v5, v4, :cond_6

    iget v4, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 514
    :cond_6
    invoke-interface {v1}, Lcom/android/cameraics/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 521
    :cond_7
    const-string v4, "continuous-picture"

    iget-object v5, p0, Lcom/android/cameraics/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 523
    invoke-interface {v1}, Lcom/android/cameraics/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 524
    :cond_8
    iget v4, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 525
    invoke-interface {v1}, Lcom/android/cameraics/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 526
    :cond_9
    iget v4, p0, Lcom/android/cameraics/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 527
    invoke-interface {v1}, Lcom/android/cameraics/ui/FocusIndicator;->showFail()V

    goto :goto_0
.end method
