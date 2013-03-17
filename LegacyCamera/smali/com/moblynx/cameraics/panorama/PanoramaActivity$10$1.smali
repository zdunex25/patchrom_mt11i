.class Lcom/moblynx/cameraics/panorama/PanoramaActivity$10$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;

.field private final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$10$1;->this$1:Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;

    iput p2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$10$1;->val$progress:I

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$10$1;->this$1:Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;
    invoke-static {v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;->access$0(Lcom/moblynx/cameraics/panorama/PanoramaActivity$10;)Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    move-result-object v0

    #getter for: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->mSavingProgressBar:Lcom/moblynx/cameraics/panorama/PanoProgressBar;
    invoke-static {v0}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$33(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)Lcom/moblynx/cameraics/panorama/PanoProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$10$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/panorama/PanoProgressBar;->setProgress(I)V

    .line 878
    return-void
.end method
