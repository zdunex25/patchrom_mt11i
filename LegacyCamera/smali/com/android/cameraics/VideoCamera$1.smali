.class Lcom/android/cameraics/VideoCamera$1;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/VideoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/VideoCamera$1;->this$0:Lcom/android/cameraics/VideoCamera;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$1;->this$0:Lcom/android/cameraics/VideoCamera;

    iget-object v2, p0, Lcom/android/cameraics/VideoCamera$1;->this$0:Lcom/android/cameraics/VideoCamera;

    iget-object v3, p0, Lcom/android/cameraics/VideoCamera$1;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mCameraId:I
    invoke-static {v3}, Lcom/android/cameraics/VideoCamera;->access$31(Lcom/android/cameraics/VideoCamera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/cameraics/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lcom/android/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 467
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$1;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->readVideoPreferences()V
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$32(Lcom/android/cameraics/VideoCamera;)V

    .line 468
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$1;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->startPreview()V
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$4(Lcom/android/cameraics/VideoCamera;)V
    :try_end_0
    .catch Lcom/android/cameraics/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/cameraics/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Lcom/android/cameraics/CameraHardwareException;
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$1;->this$0:Lcom/android/cameraics/VideoCamera;

    #setter for: Lcom/android/cameraics/VideoCamera;->mOpenCameraFail:Z
    invoke-static {v1, v4}, Lcom/android/cameraics/VideoCamera;->access$33(Lcom/android/cameraics/VideoCamera;Z)V

    goto :goto_0

    .line 471
    .end local v0           #e:Lcom/android/cameraics/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 472
    .local v0, e:Lcom/android/cameraics/CameraDisabledException;
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$1;->this$0:Lcom/android/cameraics/VideoCamera;

    #setter for: Lcom/android/cameraics/VideoCamera;->mCameraDisabled:Z
    invoke-static {v1, v4}, Lcom/android/cameraics/VideoCamera;->access$34(Lcom/android/cameraics/VideoCamera;Z)V

    goto :goto_0
.end method
