.class Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$3;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->transferGPUtoCPU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;


# direct methods
.method constructor <init>(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$3;->this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$3;->this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;

    #getter for: Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->access$1(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;->transferGPUtoCPU()V

    .line 355
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$3;->this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;

    #calls: Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->unlockPreviewReadyFlag()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->access$2(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)V

    .line 356
    return-void
.end method
