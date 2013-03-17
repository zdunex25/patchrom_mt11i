.class final Lcom/moblynx/cameraics/VideoCamera$ZoomListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 3058
    iput-object p1, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moblynx/cameraics/VideoCamera;Lcom/moblynx/cameraics/VideoCamera$ZoomListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3058
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;-><init>(Lcom/moblynx/cameraics/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 3062
    const-string v0, "videocamera"

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

    .line 3063
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #setter for: Lcom/moblynx/cameraics/VideoCamera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/moblynx/cameraics/VideoCamera;->access$25(Lcom/moblynx/cameraics/VideoCamera;I)V

    .line 3066
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #getter for: Lcom/moblynx/cameraics/VideoCamera;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControl;
    invoke-static {v0}, Lcom/moblynx/cameraics/VideoCamera;->access$26(Lcom/moblynx/cameraics/VideoCamera;)Lcom/moblynx/cameraics/ui/ZoomControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 3070
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #getter for: Lcom/moblynx/cameraics/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/moblynx/cameraics/VideoCamera;->access$27(Lcom/moblynx/cameraics/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3072
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #getter for: Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I
    invoke-static {v0}, Lcom/moblynx/cameraics/VideoCamera;->access$23(Lcom/moblynx/cameraics/VideoCamera;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3073
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #getter for: Lcom/moblynx/cameraics/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/moblynx/cameraics/VideoCamera;->access$28(Lcom/moblynx/cameraics/VideoCamera;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #getter for: Lcom/moblynx/cameraics/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/moblynx/cameraics/VideoCamera;->access$28(Lcom/moblynx/cameraics/VideoCamera;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 3074
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    iget-object v0, v0, Lcom/moblynx/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #getter for: Lcom/moblynx/cameraics/VideoCamera;->mTargetZoomValue:I
    invoke-static {v1}, Lcom/moblynx/cameraics/VideoCamera;->access$28(Lcom/moblynx/cameraics/VideoCamera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 3075
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    const/4 v1, 0x1

    #setter for: Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->access$24(Lcom/moblynx/cameraics/VideoCamera;I)V

    .line 3080
    :cond_0
    :goto_0
    return-void

    .line 3077
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$ZoomListener;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    const/4 v1, 0x0

    #setter for: Lcom/moblynx/cameraics/VideoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/VideoCamera;->access$24(Lcom/moblynx/cameraics/VideoCamera;I)V

    goto :goto_0
.end method
