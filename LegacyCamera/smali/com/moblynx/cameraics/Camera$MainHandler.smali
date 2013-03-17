.class Lcom/moblynx/cameraics/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/Camera;


# direct methods
.method private constructor <init>(Lcom/moblynx/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moblynx/cameraics/Camera;Lcom/moblynx/cameraics/Camera$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/Camera$MainHandler;-><init>(Lcom/moblynx/cameraics/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 341
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 343
    :sswitch_0
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 344
    const/16 v3, 0x80

    .line 343
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 349
    :sswitch_1
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->initializeFirstTime()V
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$8(Lcom/moblynx/cameraics/Camera;)V

    goto :goto_0

    .line 354
    :sswitch_2
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    const/4 v3, 0x0

    #calls: Lcom/moblynx/cameraics/Camera;->setCameraParametersWhenIdle(I)V
    invoke-static {v2, v3}, Lcom/moblynx/cameraics/Camera;->access$9(Lcom/moblynx/cameraics/Camera;I)V

    goto :goto_0

    .line 364
    :sswitch_3
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-static {v2}, Lcom/moblynx/cameraics/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mDisplayRotation:I
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$10(Lcom/moblynx/cameraics/Camera;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 365
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->setDisplayOrientation()V
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$11(Lcom/moblynx/cameraics/Camera;)V

    .line 367
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mOnResumeTime:J
    invoke-static {v4}, Lcom/moblynx/cameraics/Camera;->access$12(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$13(Lcom/moblynx/cameraics/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 374
    :sswitch_4
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->showTapToFocusToast()V
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$14(Lcom/moblynx/cameraics/Camera;)V

    goto :goto_0

    .line 379
    :sswitch_5
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mImageSaver:Lcom/moblynx/cameraics/Camera$ImageSaver;
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$15(Lcom/moblynx/cameraics/Camera;)Lcom/moblynx/cameraics/Camera$ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moblynx/cameraics/Camera$ImageSaver;->updateThumbnail()V

    goto :goto_0

    .line 384
    :sswitch_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 386
    .local v0, actualTime:J
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    const-wide/16 v3, 0x3e7

    iget-object v5, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->timerDelay:J
    invoke-static {v5}, Lcom/moblynx/cameraics/Camera;->access$16(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mStartTime:J
    invoke-static {v5}, Lcom/moblynx/cameraics/Camera;->access$17(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v5

    sub-long v5, v0, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    #calls: Lcom/moblynx/cameraics/Camera;->updateTimerOnScreenIndicator(I)V
    invoke-static {v2, v3}, Lcom/moblynx/cameraics/Camera;->access$18(Lcom/moblynx/cameraics/Camera;I)V

    .line 388
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mStartTime:J
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$17(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->timerDelay:J
    invoke-static {v4}, Lcom/moblynx/cameraics/Camera;->access$16(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 391
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$13(Lcom/moblynx/cameraics/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 395
    :cond_2
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    const/4 v3, 0x2

    #setter for: Lcom/moblynx/cameraics/Camera;->timerState:I
    invoke-static {v2, v3}, Lcom/moblynx/cameraics/Camera;->access$19(Lcom/moblynx/cameraics/Camera;I)V

    .line 396
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/Camera;->onShutterButtonClick()V

    goto/16 :goto_0

    .line 405
    .end local v0           #actualTime:J
    :sswitch_7
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$20(Lcom/moblynx/cameraics/Camera;)Lcom/moblynx/cameraics/ui/SharePopup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moblynx/cameraics/ui/SharePopup;->dismiss()V

    .line 406
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$MainHandler;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->updateThumbnailButton()V
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$2(Lcom/moblynx/cameraics/Camera;)V

    goto/16 :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x65 -> :sswitch_7
    .end sparse-switch
.end method
