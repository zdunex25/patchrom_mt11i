.class Lcom/android/cameraics/panorama/PanoramaActivity$11;
.super Ljava/lang/Thread;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/panorama/PanoramaActivity;->saveHighResMosaic()V
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
    iput-object p1, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    .line 908
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 911
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/cameraics/panorama/PanoramaActivity;->generateFinalMosaic(Z)Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;

    move-result-object v2

    .line 913
    .local v2, jpeg:Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;
    if-nez v2, :cond_0

    .line 914
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$26(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 955
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-boolean v6, v2, Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    if-nez v6, :cond_1

    .line 916
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$26(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 930
    :cond_1
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mUsingFrontCamera:Z
    invoke-static {v6}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$34(Lcom/android/cameraics/panorama/PanoramaActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 933
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I
    invoke-static {v6}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$35(Lcom/android/cameraics/panorama/PanoramaActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mCameraOrientation:I
    invoke-static {v7}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$36(Lcom/android/cameraics/panorama/PanoramaActivity;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v3, v6, 0x168

    .line 938
    .local v3, orientation:I
    :goto_1
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    iget-object v7, v2, Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    iget v8, v2, Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;->width:I

    iget v9, v2, Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;->height:I

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v6, v7, v8, v9, v3}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$37(Lcom/android/cameraics/panorama/PanoramaActivity;[BIII)Landroid/net/Uri;

    move-result-object v4

    .line 939
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 942
    iget v6, v2, Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;->width:I

    int-to-double v6, v6

    .line 943
    iget-object v8, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$38(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-double v8, v8

    .line 942
    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 944
    .local v5, widthRatio:I
    iget v6, v2, Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;->height:I

    int-to-double v6, v6

    .line 945
    iget-object v8, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$38(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    .line 944
    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 947
    .local v0, heightRatio:I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 946
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 948
    .local v1, inSampleSize:I
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    .line 949
    iget-object v7, v2, Lcom/android/cameraics/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    .line 948
    invoke-static {v7, v3, v1, v4}, Lcom/android/cameraics/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/cameraics/Thumbnail;

    move-result-object v7

    #setter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mThumbnail:Lcom/android/cameraics/Thumbnail;
    invoke-static {v6, v7}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$39(Lcom/android/cameraics/panorama/PanoramaActivity;Lcom/android/cameraics/Thumbnail;)V

    .line 950
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    invoke-static {v6, v4}, Lcom/android/cameraics/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 952
    .end local v0           #heightRatio:I
    .end local v1           #inSampleSize:I
    .end local v5           #widthRatio:I
    :cond_2
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$26(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    .line 953
    iget-object v7, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$26(Lcom/android/cameraics/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 952
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 935
    .end local v3           #orientation:I
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v6, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mDeviceOrientationAtCapture:I
    invoke-static {v6}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$35(Lcom/android/cameraics/panorama/PanoramaActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/android/cameraics/panorama/PanoramaActivity$11;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mCameraOrientation:I
    invoke-static {v7}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$36(Lcom/android/cameraics/panorama/PanoramaActivity;)I

    move-result v7

    add-int/2addr v6, v7

    rem-int/lit16 v3, v6, 0x168

    .restart local v3       #orientation:I
    goto :goto_1
.end method
