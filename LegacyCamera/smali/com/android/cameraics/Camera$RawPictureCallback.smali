.class final Lcom/android/cameraics/Camera$RawPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/Camera;


# direct methods
.method private constructor <init>(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/cameraics/Camera$RawPictureCallback;->this$0:Lcom/android/cameraics/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$RawPictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera$RawPictureCallback;-><init>(Lcom/android/cameraics/Camera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/cameraics/Camera$RawPictureCallback;->this$0:Lcom/android/cameraics/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/cameraics/Camera;->mRawPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/cameraics/Camera;->access$35(Lcom/android/cameraics/Camera;J)V

    .line 916
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    iget-object v2, p0, Lcom/android/cameraics/Camera$RawPictureCallback;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/cameraics/Camera;->access$36(Lcom/android/cameraics/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/cameraics/Camera$RawPictureCallback;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mShutterCallbackTime:J
    invoke-static {v4}, Lcom/android/cameraics/Camera;->access$30(Lcom/android/cameraics/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void
.end method
