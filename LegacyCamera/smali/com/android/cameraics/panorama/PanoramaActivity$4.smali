.class Lcom/android/cameraics/panorama/PanoramaActivity$4;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/panorama/PanoramaActivity;->onMosaicSurfaceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/panorama/PanoramaActivity$4;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$4;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$11(Lcom/android/cameraics/panorama/PanoramaActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$4;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->startCameraPreview()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$18(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    .line 508
    :cond_0
    return-void
.end method
