.class Lcom/android/cameraics/panorama/PanoramaActivity$5;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/panorama/PanoramaActivity;->onMosaicSurfaceCreated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

.field private final synthetic val$textureID:I


# direct methods
.method constructor <init>(Lcom/android/cameraics/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    iput p2, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->val$textureID:I

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$19(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$19(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->release(Landroid/graphics/SurfaceTexture;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->val$textureID:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #setter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0, v1}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$20(Lcom/android/cameraics/panorama/PanoramaActivity;Landroid/graphics/SurfaceTexture;)V

    .line 523
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$11(Lcom/android/cameraics/panorama/PanoramaActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$19(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cameraics/panorama/PanoramaActivity$5;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 526
    :cond_1
    return-void
.end method
