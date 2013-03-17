.class Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/panorama/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;


# direct methods
.method public constructor <init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    .line 230
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 231
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 238
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    iget-object v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$0(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/moblynx/cameraics/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDeviceOrientation:I
    invoke-static {v1, v2}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$1(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)V

    .line 242
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$0(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I

    move-result v1

    .line 243
    iget-object v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    invoke-static {v2}, Lcom/moblynx/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 242
    add-int v0, v1, v2

    .line 244
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$2(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #setter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$3(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)V

    .line 246
    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    iget-object v2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$2(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)I

    move-result v2

    #calls: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$4(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)V

    goto :goto_0
.end method
