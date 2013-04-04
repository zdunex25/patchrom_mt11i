.class Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/VideoCamera;Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/cameraics/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 402
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->updateAndShowStorageHint()V
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$10(Lcom/android/cameraics/VideoCamera;)V

    .line 405
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->stopVideoRecording()V
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$11(Lcom/android/cameraics/VideoCamera;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->updateAndShowStorageHint()V
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$10(Lcom/android/cameraics/VideoCamera;)V

    .line 408
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->updateThumbnailButton()V
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$9(Lcom/android/cameraics/VideoCamera;)V

    goto :goto_0

    .line 409
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/cameraics/VideoCamera;

    .line 414
    iget-object v2, p0, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-virtual {v2}, Lcom/android/cameraics/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 413
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 415
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->updateAndShowStorageHint()V
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$10(Lcom/android/cameraics/VideoCamera;)V

    goto :goto_0
.end method
