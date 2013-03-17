.class Lcom/moblynx/cameraics/Camera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/Camera;


# direct methods
.method private constructor <init>(Lcom/moblynx/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moblynx/cameraics/Camera;Lcom/moblynx/cameraics/Camera$ZoomChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;-><init>(Lcom/moblynx/cameraics/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 558
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mPausing:Z
    invoke-static {v0}, Lcom/moblynx/cameraics/Camera;->access$22(Lcom/moblynx/cameraics/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zoom picker state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-nez p1, :cond_2

    .line 562
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mZoomMax:I
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$23(Lcom/moblynx/cameraics/Camera;)I

    move-result v1

    #calls: Lcom/moblynx/cameraics/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/Camera;->access$21(Lcom/moblynx/cameraics/Camera;I)V

    goto :goto_0

    .line 563
    :cond_2
    if-ne p1, v3, :cond_3

    .line 564
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    const/4 v1, 0x0

    #calls: Lcom/moblynx/cameraics/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/Camera;->access$21(Lcom/moblynx/cameraics/Camera;I)V

    goto :goto_0

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    const/4 v1, -0x1

    #setter for: Lcom/moblynx/cameraics/Camera;->mTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/Camera;->access$24(Lcom/moblynx/cameraics/Camera;I)V

    .line 567
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mZoomState:I
    invoke-static {v0}, Lcom/moblynx/cameraics/Camera;->access$25(Lcom/moblynx/cameraics/Camera;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 568
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    const/4 v1, 0x2

    #setter for: Lcom/moblynx/cameraics/Camera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/Camera;->access$26(Lcom/moblynx/cameraics/Camera;I)V

    .line 569
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    iget-object v0, v0, Lcom/moblynx/cameraics/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ZoomChangeListener;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/moblynx/cameraics/Camera;->access$21(Lcom/moblynx/cameraics/Camera;I)V

    .line 553
    return-void
.end method
