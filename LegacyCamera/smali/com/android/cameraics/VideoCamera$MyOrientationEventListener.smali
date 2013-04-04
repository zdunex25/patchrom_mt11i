.class Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/android/cameraics/VideoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    .line 715
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 716
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x7

    .line 723
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    iget-object v2, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mOrientation:I
    invoke-static {v2}, Lcom/android/cameraics/VideoCamera;->access$12(Lcom/android/cameraics/VideoCamera;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/cameraics/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/android/cameraics/VideoCamera;->mOrientation:I
    invoke-static {v1, v2}, Lcom/android/cameraics/VideoCamera;->access$13(Lcom/android/cameraics/VideoCamera;I)V

    .line 727
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mOrientation:I
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$12(Lcom/android/cameraics/VideoCamera;)I

    move-result v1

    .line 728
    iget-object v2, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-static {v2}, Lcom/android/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 727
    add-int v0, v1, v2

    .line 730
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$14(Lcom/android/cameraics/VideoCamera;)I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 731
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #setter for: Lcom/android/cameraics/VideoCamera;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/android/cameraics/VideoCamera;->access$15(Lcom/android/cameraics/VideoCamera;I)V

    .line 732
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->effectsActive()Z
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$16(Lcom/android/cameraics/VideoCamera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mEffectsRecorder:Lcom/android/cameraics/EffectsRecorder;
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$17(Lcom/android/cameraics/VideoCamera;)Lcom/android/cameraics/EffectsRecorder;

    move-result-object v1

    .line 734
    iget-object v2, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/cameraics/VideoCamera;->access$14(Lcom/android/cameraics/VideoCamera;)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    .line 733
    invoke-virtual {v1, v2}, Lcom/android/cameraics/EffectsRecorder;->setOrientationHint(I)V

    .line 738
    :cond_2
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$3(Lcom/android/cameraics/VideoCamera;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 739
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    iget-object v2, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/cameraics/VideoCamera;->access$14(Lcom/android/cameraics/VideoCamera;)I

    move-result v2

    #calls: Lcom/android/cameraics/VideoCamera;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/android/cameraics/VideoCamera;->access$18(Lcom/android/cameraics/VideoCamera;I)V

    .line 744
    :cond_3
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$6(Lcom/android/cameraics/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$6(Lcom/android/cameraics/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->showTapToSnapshotToast()V
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$7(Lcom/android/cameraics/VideoCamera;)V

    goto :goto_0
.end method
