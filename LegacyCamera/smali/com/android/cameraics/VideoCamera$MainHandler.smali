.class Lcom/android/cameraics/VideoCamera$MainHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/VideoCamera;Lcom/android/cameraics/VideoCamera$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/cameraics/VideoCamera$MainHandler;-><init>(Lcom/android/cameraics/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 331
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 391
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 334
    :sswitch_0
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mShutterButton:Lcom/android/cameraics/ShutterButton;
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$0(Lcom/android/cameraics/VideoCamera;)Lcom/android/cameraics/ShutterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 338
    :sswitch_1
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-virtual {v0}, Lcom/android/cameraics/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 339
    const/16 v1, 0x80

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 344
    :sswitch_2
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->updateRecordingTime()V
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$1(Lcom/android/cameraics/VideoCamera;)V

    goto :goto_0

    .line 354
    :sswitch_3
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-static {v0}, Lcom/android/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$2(Lcom/android/cameraics/VideoCamera;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$3(Lcom/android/cameraics/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->startPreview()V
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$4(Lcom/android/cameraics/VideoCamera;)V

    .line 358
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/cameraics/VideoCamera;->access$5(Lcom/android/cameraics/VideoCamera;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$6(Lcom/android/cameraics/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 365
    :sswitch_4
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->showTapToSnapshotToast()V
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$7(Lcom/android/cameraics/VideoCamera;)V

    goto :goto_0

    .line 372
    :sswitch_5
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$8(Lcom/android/cameraics/VideoCamera;)Lcom/android/cameraics/ui/SharePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cameraics/ui/SharePopup;->dismiss()V

    .line 373
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$9(Lcom/android/cameraics/VideoCamera;)V

    goto :goto_0

    .line 379
    :sswitch_6
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    #calls: Lcom/android/cameraics/VideoCamera;->startPreview()V
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$4(Lcom/android/cameraics/VideoCamera;)V

    goto :goto_0

    .line 385
    :sswitch_7
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$MainHandler;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-virtual {v0}, Lcom/android/cameraics/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/custom/NewFeatures;->setMuteMode(Landroid/content/Context;Z)V

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_4
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x65 -> :sswitch_5
    .end sparse-switch
.end method
