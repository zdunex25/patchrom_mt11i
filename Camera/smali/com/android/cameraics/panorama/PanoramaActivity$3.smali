.class Lcom/android/cameraics/panorama/PanoramaActivity$3;
.super Landroid/os/Handler;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/panorama/PanoramaActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    .line 316
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/panorama/PanoramaActivity$3;)Lcom/android/cameraics/panorama/PanoramaActivity;
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 319
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$17(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    .line 369
    return-void

    .line 321
    :sswitch_0
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$6(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    .line 322
    iget-object v1, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$7(Lcom/android/cameraics/panorama/PanoramaActivity;Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->saveHighResMosaic()V

    goto :goto_0

    .line 326
    :sswitch_1
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$6(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    .line 329
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$8(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    .line 332
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #setter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;
    invoke-static {v0, v5}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$9(Lcom/android/cameraics/panorama/PanoramaActivity;Lcom/android/cameraics/ui/SharePopup;)V

    .line 333
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$10(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 336
    :sswitch_2
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$6(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    .line 337
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$11(Lcom/android/cameraics/panorama/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$10(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mRotateDialog:Lcom/android/cameraics/RotateDialogController;
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$12(Lcom/android/cameraics/panorama/PanoramaActivity;)Lcom/android/cameraics/RotateDialogController;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$13(Lcom/android/cameraics/panorama/PanoramaActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$14(Lcom/android/cameraics/panorama/PanoramaActivity;)Ljava/lang/String;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$15(Lcom/android/cameraics/panorama/PanoramaActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/cameraics/panorama/PanoramaActivity$3$1;

    invoke-direct {v4, p0}, Lcom/android/cameraics/panorama/PanoramaActivity$3$1;-><init>(Lcom/android/cameraics/panorama/PanoramaActivity$3;)V

    move-object v6, v5

    .line 340
    invoke-virtual/range {v0 .. v6}, Lcom/android/cameraics/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 351
    :sswitch_3
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$6(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    .line 352
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$10(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 355
    :sswitch_4
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 362
    :sswitch_5
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mSharePopup:Lcom/android/cameraics/ui/SharePopup;
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$16(Lcom/android/cameraics/panorama/PanoramaActivity;)Lcom/android/cameraics/ui/SharePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cameraics/ui/SharePopup;->dismiss()V

    .line 363
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$3;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$8(Lcom/android/cameraics/panorama/PanoramaActivity;)V

    goto/16 :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x65 -> :sswitch_5
    .end sparse-switch
.end method
