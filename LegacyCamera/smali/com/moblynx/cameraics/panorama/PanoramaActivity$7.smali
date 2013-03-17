.class Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/moblynx/cameraics/panorama/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/panorama/PanoramaActivity;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 6
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    const/high16 v5, 0x4320

    .line 633
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$22(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)F

    move-result v4

    mul-float v0, p4, v4

    .line 634
    .local v0, accumulatedHorizontalAngle:F
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$23(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)F

    move-result v4

    mul-float v1, p5, v4

    .line 635
    .local v1, accumulatedVerticalAngle:F
    if-nez p1, :cond_0

    .line 636
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    .line 637
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 638
    :cond_0
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    const/4 v5, 0x0

    #calls: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->stopCapture(Z)V
    invoke-static {v4, v5}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$24(Lcom/moblynx/cameraics/panorama/PanoramaActivity;Z)V

    .line 645
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$22(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)F

    move-result v4

    mul-float v2, p2, v4

    .line 641
    .local v2, panningRateXInDegree:F
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$23(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)F

    move-result v4

    mul-float v3, p3, v4

    .line 642
    .local v3, panningRateYInDegree:F
    iget-object v4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$7;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->updateProgress(FFFF)V
    invoke-static {v4, v2, v3, v0, v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$25(Lcom/moblynx/cameraics/panorama/PanoramaActivity;FFFF)V

    goto :goto_0
.end method
