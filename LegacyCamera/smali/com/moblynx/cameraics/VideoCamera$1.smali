.class Lcom/moblynx/cameraics/VideoCamera$1;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/VideoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/VideoCamera;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/VideoCamera$1;->this$0:Lcom/moblynx/cameraics/VideoCamera;

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
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera$1;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    iget-object v2, p0, Lcom/moblynx/cameraics/VideoCamera$1;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    iget-object v3, p0, Lcom/moblynx/cameraics/VideoCamera$1;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #getter for: Lcom/moblynx/cameraics/VideoCamera;->mCameraId:I
    invoke-static {v3}, Lcom/moblynx/cameraics/VideoCamera;->access$31(Lcom/moblynx/cameraics/VideoCamera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/moblynx/cameraics/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 467
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera$1;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #calls: Lcom/moblynx/cameraics/VideoCamera;->readVideoPreferences()V
    invoke-static {v1}, Lcom/moblynx/cameraics/VideoCamera;->access$32(Lcom/moblynx/cameraics/VideoCamera;)V

    .line 468
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera$1;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #calls: Lcom/moblynx/cameraics/VideoCamera;->startPreview()V
    invoke-static {v1}, Lcom/moblynx/cameraics/VideoCamera;->access$4(Lcom/moblynx/cameraics/VideoCamera;)V
    :try_end_0
    .catch Lcom/moblynx/cameraics/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/moblynx/cameraics/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Lcom/moblynx/cameraics/CameraHardwareException;
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera$1;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #setter for: Lcom/moblynx/cameraics/VideoCamera;->mOpenCameraFail:Z
    invoke-static {v1, v4}, Lcom/moblynx/cameraics/VideoCamera;->access$33(Lcom/moblynx/cameraics/VideoCamera;Z)V

    goto :goto_0

    .line 471
    .end local v0           #e:Lcom/moblynx/cameraics/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 472
    .local v0, e:Lcom/moblynx/cameraics/CameraDisabledException;
    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera$1;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #setter for: Lcom/moblynx/cameraics/VideoCamera;->mCameraDisabled:Z
    invoke-static {v1, v4}, Lcom/moblynx/cameraics/VideoCamera;->access$34(Lcom/moblynx/cameraics/VideoCamera;Z)V

    goto :goto_0
.end method
