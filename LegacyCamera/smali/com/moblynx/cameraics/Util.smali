.class public Lcom/moblynx/cameraics/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final DIRECTION_DOWN:I = 0x3

.field private static final DIRECTION_LEFT:I = 0x0

.field private static final DIRECTION_RIGHT:I = 0x1

.field private static final DIRECTION_UP:I = 0x2

.field private static final EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static mLocation:[I

.field private static sImageFileNamer:Lcom/moblynx/cameraics/Util$ImageFileNamer;

.field private static sIsTabletUI:Z

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/high16 v0, 0x3f80

    sput v0, Lcom/moblynx/cameraics/Util;->sPixelDensity:F

    .line 564
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/moblynx/cameraics/Util;->mLocation:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 268
    if-nez p0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 271
    :cond_0
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 640
    .local v0, currentapiVersion:I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 642
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.moblynx.cameraics.NEW_PICTURE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 647
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 336
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 360
    if-le p0, p2, :cond_0

    .line 362
    .end local p2
    :goto_0
    return p2

    .line 361
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 362
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 259
    if-nez p0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    .line 211
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 212
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 214
    .local v0, h:D
    if-gez p2, :cond_1

    move v2, v6

    .line 216
    .local v2, lowerBound:I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 220
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 230
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 215
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 217
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    .line 218
    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 217
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 225
    .restart local v3       #upperBound:I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 226
    goto :goto_2

    .line 227
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 230
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 193
    invoke-static {p0, p1, p2}, Lcom/moblynx/cameraics/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 197
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 198
    const/4 v1, 0x1

    .line 199
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 206
    :goto_1
    return v1

    .line 200
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"

    .prologue
    .line 631
    sget-object v1, Lcom/moblynx/cameraics/Util;->sImageFileNamer:Lcom/moblynx/cameraics/Util$ImageFileNamer;

    monitor-enter v1

    .line 632
    :try_start_0
    sget-object v0, Lcom/moblynx/cameraics/Util;->sImageFileNamer:Lcom/moblynx/cameraics/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/moblynx/cameraics/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 354
    sub-float v0, p0, p2

    .line 355
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 356
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 117
    sget v0, Lcom/moblynx/cameraics/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static dpToPixel(II)I
    .locals 4
    .parameter "dp1"
    .parameter "dp2"

    .prologue
    .line 121
    sget v0, Lcom/moblynx/cameraics/Util;->sPixelDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 123
    sget v0, Lcom/moblynx/cameraics/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/moblynx/cameraics/Util;->sPixelDensity:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public static dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, flattened:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    const-string v2, "Util"

    const-string v3, "Dump all camera parameters:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    return-void

    .line 500
    :cond_0
    const-string v2, "Util"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .parameter "rect"
    .parameter "msg"

    .prologue
    .line 607
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 608
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void
.end method

.method public static enterLightsOutMode(Landroid/view/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 721
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 724
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 725
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 726
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 340
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 656
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 654
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 655
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    :goto_0
    return-void

    .line 661
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 662
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 663
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 664
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .parameter "currentActivity"

    .prologue
    const/4 v6, -0x1

    .line 535
    const/4 v1, -0x1

    .line 538
    .local v1, cameraId:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 540
    .local v3, intentCameraId:I
    invoke-static {v3}, Lcom/moblynx/cameraics/Util;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moblynx/cameraics/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 543
    .local v2, frontCameraId:I
    if-eq v2, v6, :cond_0

    .line 544
    move v1, v2

    .line 553
    .end local v2           #frontCameraId:I
    :cond_0
    :goto_0
    return v1

    .line 546
    :cond_1
    invoke-static {v3}, Lcom/moblynx/cameraics/Util;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moblynx/cameraics/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 549
    .local v0, backCameraId:I
    if-eq v0, v6, :cond_0

    .line 550
    move v1, v0

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 393
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 394
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 395
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 380
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 381
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 383
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 384
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 385
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 389
    :goto_0
    return v1

    .line 387
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 368
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    :pswitch_0
    return v1

    .line 370
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 371
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 372
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 15
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f847ae147ae147bL

    .line 420
    .local v0, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 461
    :cond_0
    return-object v5

    .line 422
    :cond_1
    const/4 v5, 0x0

    .line 423
    .local v5, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v3, 0x7fefffffffffffffL

    .line 431
    .local v3, minDiff:D
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 432
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 434
    .local v9, targetHeight:I
    if-gtz v9, :cond_2

    .line 436
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 440
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 451
    if-nez v5, :cond_0

    .line 452
    const-string v10, "Util"

    const-string v11, "No preview size match the aspect ratio"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-wide v3, 0x7fefffffffffffffL

    .line 454
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 455
    .local v8, size:Landroid/hardware/Camera$Size;
    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v3

    if-gez v11, :cond_4

    .line 456
    move-object v5, v8

    .line 457
    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v3, v11

    goto :goto_1

    .line 440
    .end local v8           #size:Landroid/hardware/Camera$Size;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 441
    .restart local v8       #size:Landroid/hardware/Camera$Size;
    iget v11, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v11

    iget v13, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-double v13, v13

    div-double v6, v11, v13

    .line 442
    .local v6, ratio:D
    sub-double v11, v6, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f847ae147ae147bL

    cmpl-double v11, v11, v13

    if-gtz v11, :cond_3

    .line 443
    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v3

    if-gez v11, :cond_3

    .line 444
    move-object v5, v8

    .line 445
    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v3, v11

    goto :goto_0
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 11
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 469
    .local v0, ASPECT_TOLERANCE:D
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 492
    :cond_0
    return-object v2

    .line 471
    :cond_1
    const/4 v2, 0x0

    .line 474
    .local v2, optimalSize:Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 484
    if-nez v2, :cond_0

    .line 485
    const-string v6, "Util"

    const-string v7, "No picture size match the aspect ratio"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 487
    .local v5, size:Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_4

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_3

    .line 488
    :cond_4
    move-object v2, v5

    goto :goto_1

    .line 474
    .end local v5           #size:Landroid/hardware/Camera$Size;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 475
    .restart local v5       #size:Landroid/hardware/Camera$Size;
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double v3, v7, v9

    .line 476
    .local v3, ratio:D
    sub-double v7, v3, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_2

    .line 477
    if-eqz v2, :cond_6

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_2

    .line 478
    :cond_6
    move-object v2, v5

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyCompatibility;->isTablet(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/moblynx/cameraics/Util;->sIsTabletUI:Z

    .line 103
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    check-cast v1, Landroid/view/WindowManager;

    .line 106
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/moblynx/cameraics/Util;->sPixelDensity:F

    .line 108
    new-instance v2, Lcom/moblynx/cameraics/Util$ImageFileNamer;

    .line 109
    const v3, 0x7f0800bf

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-direct {v2, v3}, Lcom/moblynx/cameraics/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/moblynx/cameraics/Util;->sImageFileNamer:Lcom/moblynx/cameraics/Util$ImageFileNamer;

    .line 110
    return-void
.end method

.method public static initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "win"
    .parameter "resolver"

    .prologue
    .line 730
    const-string v2, "screen_brightness_mode"

    .line 731
    const/4 v3, 0x0

    .line 730
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 732
    .local v0, mode:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 733
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 734
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 735
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 737
    .end local v1           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    .line 561
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    const/4 v0, 0x1

    .line 557
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMmsCapable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 509
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 508
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 510
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_0

    .line 530
    :goto_0
    return v5

    .line 515
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-array v1, v5, [Ljava/lang/Class;

    .line 516
    .local v1, partypes:[Ljava/lang/Class;
    const-class v5, Landroid/telephony/TelephonyManager;

    .line 517
    const-string v6, "isVoiceCapable"

    .line 516
    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 519
    .local v3, sIsVoiceCapable:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    .line 520
    .local v0, arglist:[Ljava/lang/Object;
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 521
    .local v2, retobj:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #retobj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 528
    .end local v0           #arglist:[Ljava/lang/Object;
    .end local v1           #partypes:[Ljava/lang/Class;
    .end local v3           #sIsVoiceCapable:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 530
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 525
    :catch_1
    move-exception v5

    goto :goto_1

    .line 522
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public static isTabletUI()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/moblynx/cameraics/Util;->sIsTabletUI:Z

    return v0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 574
    if-nez p0, :cond_0

    .line 586
    :goto_0
    return v2

    .line 577
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 578
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 579
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fail to open URI. URI="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 584
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 582
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 236
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 238
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 240
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    .line 241
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 254
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 245
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    .line 244
    invoke-static {v1, v3, p1}, Lcom/moblynx/cameraics/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 246
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 249
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 250
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 252
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 253
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 344
    add-int/lit8 p0, p0, -0x1

    .line 345
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 346
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 347
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 348
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 349
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 350
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;
    .locals 4
    .parameter "activity"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moblynx/cameraics/CameraHardwareException;,
            Lcom/moblynx/cameraics/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 277
    .line 278
    const-string v2, "device_policy"

    .line 277
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 282
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/moblynx/cameraics/compatibility/honeycomb/MyCompatibility;->getCameraDisabled(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    new-instance v2, Lcom/moblynx/cameraics/CameraDisabledException;

    invoke-direct {v2}, Lcom/moblynx/cameraics/CameraDisabledException;-><init>()V

    throw v2

    .line 287
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/moblynx/cameraics/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Lcom/moblynx/cameraics/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 288
    :catch_0
    move-exception v1

    .line 291
    .local v1, e:Lcom/moblynx/cameraics/CameraHardwareException;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "openCamera failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 294
    :cond_1
    throw v1
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 568
    sget-object v2, Lcom/moblynx/cameraics/Util;->mLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 569
    sget-object v2, Lcom/moblynx/cameraics/Util;->mLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/moblynx/cameraics/Util;->mLocation:[I

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    .line 570
    sget-object v2, Lcom/moblynx/cameraics/Util;->mLocation:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/moblynx/cameraics/Util;->mLocation:[I

    aget v2, v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 569
    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    .line 621
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 623
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 626
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 627
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 628
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 612
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 613
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 614
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 615
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 616
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/moblynx/cameraics/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 137
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 138
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 142
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 143
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 144
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 152
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 154
    int-to-float v0, p1

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 154
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 160
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 159
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 161
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    move-object p0, v7

    .line 169
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 146
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 147
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 149
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid degrees="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 401
    const/4 v0, 0x1

    .line 407
    :goto_0
    if-eqz v0, :cond_0

    .line 408
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 410
    .end local p1
    :cond_0
    return p1

    .line 403
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 404
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 405
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 13
    .parameter "parameters"
    .parameter "loc"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 684
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 690
    if-eqz p1, :cond_0

    .line 691
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 692
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 693
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_1

    cmpl-double v7, v3, v9

    if-nez v7, :cond_1

    const/4 v0, 0x0

    .line 695
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 696
    const-string v7, "Util"

    const-string v8, "Set gps location"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 698
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 699
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 701
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 708
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 711
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    div-long v5, v7, v11

    .line 712
    .local v5, utcTimeSeconds:J
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 718
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    .end local v5           #utcTimeSeconds:J
    :cond_0
    :goto_2
    return-void

    .line 693
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    .restart local v0       #hasLatLon:Z
    :cond_2
    invoke-virtual {p0, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 715
    :cond_3
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static setRotationParameter(Landroid/hardware/Camera$Parameters;II)V
    .locals 4
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 672
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moblynx/cameraics/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 673
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 674
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 679
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 680
    return-void

    .line 676
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static showError(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "msg"

    .prologue
    .line 318
    new-instance v0, Lcom/moblynx/cameraics/Util$2;

    invoke-direct {v0}, Lcom/moblynx/cameraics/Util$2;-><init>()V

    .line 323
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 325
    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 326
    const v2, 0x7f08006a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 328
    const v2, 0x7f0800bd

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 330
    return-void
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "msgId"

    .prologue
    .line 301
    new-instance v0, Lcom/moblynx/cameraics/Util$1;

    invoke-direct {v0, p0}, Lcom/moblynx/cameraics/Util$1;-><init>(Landroid/app/Activity;)V

    .line 306
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 308
    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 309
    const v2, 0x7f08006a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 310
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 311
    const v2, 0x7f0800bd

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 313
    return-void
.end method
