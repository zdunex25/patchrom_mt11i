.class Lcom/android/cameraics/Camera$3;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/Camera;


# direct methods
.method constructor <init>(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/Camera$3;->this$0:Lcom/android/cameraics/Camera;

    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1309
    :try_start_0
    iget-object v1, p0, Lcom/android/cameraics/Camera$3;->this$0:Lcom/android/cameraics/Camera;

    iget-object v2, p0, Lcom/android/cameraics/Camera$3;->this$0:Lcom/android/cameraics/Camera;

    iget-object v3, p0, Lcom/android/cameraics/Camera$3;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mCameraId:I
    invoke-static {v3}, Lcom/android/cameraics/Camera;->access$3(Lcom/android/cameraics/Camera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/cameraics/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Lcom/android/cameraics/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/cameraics/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1315
    :goto_0
    return-void

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, e:Lcom/android/cameraics/CameraHardwareException;
    iget-object v1, p0, Lcom/android/cameraics/Camera$3;->this$0:Lcom/android/cameraics/Camera;

    #setter for: Lcom/android/cameraics/Camera;->mOpenCameraFail:Z
    invoke-static {v1, v4}, Lcom/android/cameraics/Camera;->access$4(Lcom/android/cameraics/Camera;Z)V

    goto :goto_0

    .line 1312
    .end local v0           #e:Lcom/android/cameraics/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1313
    .local v0, e:Lcom/android/cameraics/CameraDisabledException;
    iget-object v1, p0, Lcom/android/cameraics/Camera$3;->this$0:Lcom/android/cameraics/Camera;

    #setter for: Lcom/android/cameraics/Camera;->mCameraDisabled:Z
    invoke-static {v1, v4}, Lcom/android/cameraics/Camera;->access$5(Lcom/android/cameraics/Camera;Z)V

    goto :goto_0
.end method
