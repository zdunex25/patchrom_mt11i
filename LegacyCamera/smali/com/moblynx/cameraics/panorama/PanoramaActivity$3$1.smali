.class Lcom/moblynx/cameraics/panorama/PanoramaActivity$3$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$3$1;->this$1:Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$3$1;->this$1:Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;
    invoke-static {v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;->access$0(Lcom/moblynx/cameraics/panorama/PanoramaActivity$3;)Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    move-result-object v0

    #calls: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$10(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V

    .line 346
    return-void
.end method
