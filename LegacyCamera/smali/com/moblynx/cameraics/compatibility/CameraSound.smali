.class public Lcom/moblynx/cameraics/compatibility/CameraSound;
.super Ljava/lang/Object;
.source "CameraSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_SOUNDS:I = 0x4

.field public static final SHUTTER_CLICK:I = 0x0

.field public static final START_VIDEO_RECORDING:I = 0x2

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CameraSound"


# instance fields
.field private mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method


# virtual methods
.method public playSound(I)V
    .locals 3
    .parameter "soundId"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    iput-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    new-instance v1, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    iget-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, p1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->play()V

    .line 103
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    if-eqz v1, :cond_0

    .line 107
    iget-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moblynx/cameraics/compatibility/CameraSound;->mCameraSoundPlayers:[Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;

    .line 114
    :cond_0
    return-void

    .line 107
    :cond_1
    aget-object v0, v2, v1

    .line 108
    .local v0, csp:Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->release()V

    .line 107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
