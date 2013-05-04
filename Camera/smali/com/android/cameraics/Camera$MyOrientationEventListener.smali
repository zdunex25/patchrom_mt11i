.class Lcom/android/cameraics/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/Camera;


# direct methods
.method public constructor <init>(Lcom/android/cameraics/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    .line 1556
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1557
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x6

    .line 1564
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    iget-object v1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    iget-object v2, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/cameraics/Camera;->access$57(Lcom/android/cameraics/Camera;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/cameraics/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/android/cameraics/Camera;->mOrientation:I
    invoke-static {v1, v2}, Lcom/android/cameraics/Camera;->access$58(Lcom/android/cameraics/Camera;I)V

    .line 1568
    iget-object v1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mOrientation:I
    invoke-static {v1}, Lcom/android/cameraics/Camera;->access$57(Lcom/android/cameraics/Camera;)I

    move-result v1

    .line 1569
    iget-object v2, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    invoke-static {v2}, Lcom/android/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 1568
    add-int v0, v1, v2

    .line 1570
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/android/cameraics/Camera;->access$59(Lcom/android/cameraics/Camera;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1571
    iget-object v1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    #setter for: Lcom/android/cameraics/Camera;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/android/cameraics/Camera;->access$60(Lcom/android/cameraics/Camera;I)V

    .line 1572
    iget-object v1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    iget-object v2, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/cameraics/Camera;->access$59(Lcom/android/cameraics/Camera;)I

    move-result v2

    #calls: Lcom/android/cameraics/Camera;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/android/cameraics/Camera;->access$61(Lcom/android/cameraics/Camera;I)V

    .line 1576
    :cond_2
    iget-object v1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/cameraics/Camera;->access$13(Lcom/android/cameraics/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/cameraics/Camera;->access$13(Lcom/android/cameraics/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1578
    iget-object v1, p0, Lcom/android/cameraics/Camera$MyOrientationEventListener;->this$0:Lcom/android/cameraics/Camera;

    #calls: Lcom/android/cameraics/Camera;->showTapToFocusToast()V
    invoke-static {v1}, Lcom/android/cameraics/Camera;->access$14(Lcom/android/cameraics/Camera;)V

    goto :goto_0
.end method
