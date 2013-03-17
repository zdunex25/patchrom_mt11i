.class Lcom/moblynx/cameraics/Camera$2;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/Camera;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$2;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 711
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 714
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, action:Ljava/lang/String;
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received intent action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$2;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$0(Lcom/moblynx/cameraics/Camera;)V

    .line 726
    :cond_1
    :goto_0
    return-void

    .line 720
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$2;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$0(Lcom/moblynx/cameraics/Camera;)V

    .line 722
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$2;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$1(Lcom/moblynx/cameraics/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 723
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$2;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->updateThumbnailButton()V
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$2(Lcom/moblynx/cameraics/Camera;)V

    goto :goto_0
.end method
