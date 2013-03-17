.class public Lcom/moblynx/cameraics/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/moblynx/cameraics/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mKeepBeforeTime:J

    .line 50
    const/4 v2, 0x0

    iput v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    .line 52
    iput v4, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraId:I

    .line 53
    iput v4, p0, Lcom/moblynx/cameraics/CameraHolder;->mBackCameraId:I

    iput v4, p0, Lcom/moblynx/cameraics/CameraHolder;->mFrontCameraId:I

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v2, Lcom/moblynx/cameraics/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/moblynx/cameraics/CameraHolder$MyHandler;-><init>(Lcom/moblynx/cameraics/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mNumberOfCameras:I

    .line 99
    iget v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mNumberOfCameras:I

    if-lt v1, v2, :cond_0

    .line 110
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 102
    iget-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 103
    iget v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_1

    .line 104
    iput v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mBackCameraId:I

    .line 106
    :cond_1
    iget v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 107
    iput v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mFrontCameraId:I

    .line 100
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/moblynx/cameraics/CameraHolder;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$1(Lcom/moblynx/cameraics/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/moblynx/cameraics/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/moblynx/cameraics/CameraHolder;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/moblynx/cameraics/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/moblynx/cameraics/CameraHolder;->sHolder:Lcom/moblynx/cameraics/CameraHolder;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/moblynx/cameraics/CameraHolder;

    invoke-direct {v0}, Lcom/moblynx/cameraics/CameraHolder;-><init>()V

    sput-object v0, Lcom/moblynx/cameraics/CameraHolder;->sHolder:Lcom/moblynx/cameraics/CameraHolder;

    .line 68
    :cond_0
    sget-object v0, Lcom/moblynx/cameraics/CameraHolder;->sHolder:Lcom/moblynx/cameraics/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 178
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    if-nez v4, :cond_1

    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/moblynx/cameraics/Util;->Assert(Z)V

    .line 179
    iget-object v4, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/moblynx/cameraics/Util;->Assert(Z)V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, now:J
    iget-wide v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 183
    iget-wide v4, p0, Lcom/moblynx/cameraics/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    .line 182
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 189
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 192
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 193
    const/4 v2, -0x1

    iput v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .end local v0           #now:J
    :cond_1
    move v4, v3

    .line 178
    goto :goto_0

    :cond_2
    move v2, v3

    .line 179
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 200
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/moblynx/cameraics/Util;->Assert(Z)V

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Landroid/hardware/Camera;
    .locals 4
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moblynx/cameraics/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 122
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/moblynx/cameraics/Util;->Assert(Z)V

    .line 123
    iget-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraId:I

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 130
    :try_start_1
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 132
    iput p1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :try_start_2
    iget-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 147
    :goto_1
    iget v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    .line 148
    iget-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mKeepBeforeTime:J

    .line 150
    iget-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 122
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    new-instance v1, Lcom/moblynx/cameraics/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/moblynx/cameraics/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 140
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 145
    :try_start_5
    iget-object v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Lcom/moblynx/cameraics/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/moblynx/cameraics/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/moblynx/cameraics/Util;->Assert(Z)V

    .line 172
    iget v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    .line 173
    iget-object v0, p0, Lcom/moblynx/cameraics/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 174
    invoke-direct {p0}, Lcom/moblynx/cameraics/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen(I)Landroid/hardware/Camera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 159
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/moblynx/cameraics/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/moblynx/cameraics/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/moblynx/cameraics/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    :cond_0
    monitor-exit p0

    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Lcom/moblynx/cameraics/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v0           #e:Lcom/moblynx/cameraics/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
