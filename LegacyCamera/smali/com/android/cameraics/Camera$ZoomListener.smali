.class final Lcom/android/cameraics/Camera$ZoomListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/Camera;


# direct methods
.method private constructor <init>(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$ZoomListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera$ZoomListener;-><init>(Lcom/android/cameraics/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 1011
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zoom changed: value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    #setter for: Lcom/android/cameraics/Camera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/cameraics/Camera;->access$47(Lcom/android/cameraics/Camera;I)V

    .line 1015
    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mZoomControl:Lcom/android/cameraics/ui/ZoomControl;
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$48(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/ui/ZoomControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$40(Lcom/android/cameraics/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1021
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mZoomState:I
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$25(Lcom/android/cameraics/Camera;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$49(Lcom/android/cameraics/Camera;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$49(Lcom/android/cameraics/Camera;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    iget-object v0, v0, Lcom/android/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mTargetZoomValue:I
    invoke-static {v1}, Lcom/android/cameraics/Camera;->access$49(Lcom/android/cameraics/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/cameraics/Camera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/cameraics/Camera;->access$26(Lcom/android/cameraics/Camera;I)V

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/Camera$ZoomListener;->this$0:Lcom/android/cameraics/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/cameraics/Camera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/cameraics/Camera;->access$26(Lcom/android/cameraics/Camera;I)V

    goto :goto_0
.end method
