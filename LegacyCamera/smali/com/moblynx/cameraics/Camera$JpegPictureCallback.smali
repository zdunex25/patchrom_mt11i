.class final Lcom/moblynx/cameraics/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/moblynx/cameraics/Camera;


# direct methods
.method public constructor <init>(Lcom/moblynx/cameraics/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 924
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-object p2, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 926
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const-wide/16 v8, 0x0

    .line 933
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->isInSilentMode:Z
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$37(Lcom/moblynx/cameraics/Camera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/custom/NewFeatures;->setMuteMode(Landroid/content/Context;Z)V

    .line 940
    :cond_0
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mPausing:Z
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$22(Lcom/moblynx/cameraics/Camera;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 990
    :goto_0
    return-void

    .line 944
    :cond_1
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/moblynx/cameraics/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3, v4, v5}, Lcom/moblynx/cameraics/Camera;->access$38(Lcom/moblynx/cameraics/Camera;J)V

    .line 948
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$34(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_3

    .line 949
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 950
    iget-object v4, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v4}, Lcom/moblynx/cameraics/Camera;->access$34(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mShutterCallbackTime:J
    invoke-static {v6}, Lcom/moblynx/cameraics/Camera;->access$30(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 949
    iput-wide v4, v3, Lcom/moblynx/cameraics/Camera;->mShutterToPictureDisplayedTime:J

    .line 951
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 952
    iget-object v4, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/moblynx/cameraics/Camera;->access$39(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v6}, Lcom/moblynx/cameraics/Camera;->access$34(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 951
    iput-wide v4, v3, Lcom/moblynx/cameraics/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 959
    :goto_1
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 960
    iget-object v5, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    iget-wide v5, v5, Lcom/moblynx/cameraics/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 959
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$1(Lcom/moblynx/cameraics/Camera;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 963
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->startPreview()V
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$7(Lcom/moblynx/cameraics/Camera;)V

    .line 964
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-virtual {v3}, Lcom/moblynx/cameraics/Camera;->startFaceDetection()V

    .line 967
    :cond_2
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$1(Lcom/moblynx/cameraics/Camera;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 968
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$40(Lcom/moblynx/cameraics/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 969
    .local v2, s:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mImageSaver:Lcom/moblynx/cameraics/Camera$ImageSaver;
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$15(Lcom/moblynx/cameraics/Camera;)Lcom/moblynx/cameraics/Camera$ImageSaver;

    move-result-object v3

    iget-object v4, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/moblynx/cameraics/Camera$ImageSaver;->addImage([BLandroid/location/Location;II)V

    .line 983
    .end local v2           #s:Landroid/hardware/Camera$Size;
    :goto_2
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->checkStorage()V
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$0(Lcom/moblynx/cameraics/Camera;)V

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 986
    .local v0, now:J
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    iget-object v4, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/moblynx/cameraics/Camera;->access$39(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v4

    sub-long v4, v0, v4

    iput-wide v4, v3, Lcom/moblynx/cameraics/Camera;->mJpegCallbackFinishTime:J

    .line 987
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 988
    iget-object v5, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    iget-wide v5, v5, Lcom/moblynx/cameraics/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 987
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #setter for: Lcom/moblynx/cameraics/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3, v8, v9}, Lcom/moblynx/cameraics/Camera;->access$38(Lcom/moblynx/cameraics/Camera;J)V

    goto/16 :goto_0

    .line 954
    .end local v0           #now:J
    :cond_3
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 955
    iget-object v4, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mRawPictureCallbackTime:J
    invoke-static {v4}, Lcom/moblynx/cameraics/Camera;->access$36(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mShutterCallbackTime:J
    invoke-static {v6}, Lcom/moblynx/cameraics/Camera;->access$30(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 954
    iput-wide v4, v3, Lcom/moblynx/cameraics/Camera;->mShutterToPictureDisplayedTime:J

    .line 956
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 957
    iget-object v4, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/moblynx/cameraics/Camera;->access$39(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mRawPictureCallbackTime:J
    invoke-static {v6}, Lcom/moblynx/cameraics/Camera;->access$36(Lcom/moblynx/cameraics/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 956
    iput-wide v4, v3, Lcom/moblynx/cameraics/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 971
    :cond_4
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #setter for: Lcom/moblynx/cameraics/Camera;->mJpegImageData:[B
    invoke-static {v3, p1}, Lcom/moblynx/cameraics/Camera;->access$41(Lcom/moblynx/cameraics/Camera;[B)V

    .line 972
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mQuickCapture:Z
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$42(Lcom/moblynx/cameraics/Camera;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 973
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->showPostCaptureAlert()V
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$43(Lcom/moblynx/cameraics/Camera;)V

    goto :goto_2

    .line 975
    :cond_5
    iget-object v3, p0, Lcom/moblynx/cameraics/Camera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->doAttach()V
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$44(Lcom/moblynx/cameraics/Camera;)V

    goto :goto_2
.end method
