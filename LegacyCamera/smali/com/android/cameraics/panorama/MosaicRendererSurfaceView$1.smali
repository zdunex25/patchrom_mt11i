.class Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$1;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->setReady()V
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
    iput-object p1, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$1;->this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$1;->this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;

    #getter for: Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->access$1(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;->setReady()V

    .line 335
    return-void
.end method
