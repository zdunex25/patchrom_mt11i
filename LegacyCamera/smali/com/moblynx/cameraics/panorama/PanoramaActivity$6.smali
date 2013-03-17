.class Lcom/moblynx/cameraics/panorama/PanoramaActivity$6;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/panorama/PanoramaActivity;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
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
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$6;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$6;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$11(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$6;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$19(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 575
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$6;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$19(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$6;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$21(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_0
.end method
