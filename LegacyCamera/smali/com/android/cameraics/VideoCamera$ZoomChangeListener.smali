.class Lcom/android/cameraics/VideoCamera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/cameraics/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/VideoCamera;Lcom/android/cameraics/VideoCamera$ZoomChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3015
    invoke-direct {p0, p1}, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;-><init>(Lcom/android/cameraics/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 3025
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    iget-boolean v0, v0, Lcom/android/cameraics/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 3039
    :cond_0
    :goto_0
    return-void

    .line 3027
    :cond_1
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zoom picker state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    if-nez p1, :cond_2

    .line 3029
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mZoomMax:I
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$21(Lcom/android/cameraics/VideoCamera;)I

    move-result v1

    #calls: Lcom/android/cameraics/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/cameraics/VideoCamera;->access$20(Lcom/android/cameraics/VideoCamera;I)V

    goto :goto_0

    .line 3030
    :cond_2
    if-ne p1, v3, :cond_3

    .line 3031
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    const/4 v1, 0x0

    #calls: Lcom/android/cameraics/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/cameraics/VideoCamera;->access$20(Lcom/android/cameraics/VideoCamera;I)V

    goto :goto_0

    .line 3033
    :cond_3
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    const/4 v1, -0x1

    #setter for: Lcom/android/cameraics/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/android/cameraics/VideoCamera;->access$22(Lcom/android/cameraics/VideoCamera;I)V

    .line 3034
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mZoomState:I
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$23(Lcom/android/cameraics/VideoCamera;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3035
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    const/4 v1, 0x2

    #setter for: Lcom/android/cameraics/VideoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/cameraics/VideoCamera;->access$24(Lcom/android/cameraics/VideoCamera;I)V

    .line 3036
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    iget-object v0, v0, Lcom/android/cameraics/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/cameraics/VideoCamera;->access$20(Lcom/android/cameraics/VideoCamera;I)V

    .line 3020
    return-void
.end method
