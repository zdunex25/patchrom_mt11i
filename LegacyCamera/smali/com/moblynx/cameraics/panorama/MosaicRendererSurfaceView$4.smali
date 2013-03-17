.class Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$4;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->setWarping(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

.field private final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$4;->this$0:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    iput-boolean p2, p0, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$4;->val$flag:Z

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$4;->this$0:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;

    #getter for: Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->access$1(Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;)Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$4;->val$flag:Z

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceViewRenderer;->setWarping(Z)V

    .line 366
    return-void
.end method
