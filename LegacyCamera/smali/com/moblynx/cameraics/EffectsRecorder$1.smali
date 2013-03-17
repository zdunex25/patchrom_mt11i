.class Lcom/moblynx/cameraics/EffectsRecorder$1;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 617
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "effectsrecorder"

    const-string v2, "SurfaceTexture ready callback received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    monitor-enter v2

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #setter for: Lcom/moblynx/cameraics/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v1, p1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$1(Lcom/moblynx/cameraics/EffectsRecorder;Landroid/graphics/SurfaceTexture;)V

    .line 621
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$2(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v1

    if-nez v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "effectsrecorder"

    const-string v3, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    monitor-exit v2

    .line 675
    :goto_0
    return-void

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$2(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 631
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "effectsrecorder"

    const-string v3, "Ready callback: Already released, skipping."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 634
    :cond_4
    if-nez p1, :cond_7

    .line 635
    :try_start_1
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$2(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 636
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$2(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    .line 637
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$2(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 641
    :cond_5
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$3(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :try_start_2
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$3(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 649
    :cond_6
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unable to disconnect camera from effect input"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 653
    .end local v0           #e:Ljava/io/IOException;
    :cond_7
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/moblynx/cameraics/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 655
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$3(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 656
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "effectsrecorder"

    const-string v3, "Runner active, connecting effects preview"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 658
    :cond_8
    :try_start_4
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$3(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v3, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v3}, Lcom/moblynx/cameraics/EffectsRecorder;->access$4(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 663
    :try_start_5
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$3(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 666
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/moblynx/cameraics/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 668
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    const/4 v3, 0x3

    #setter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v1, v3}, Lcom/moblynx/cameraics/EffectsRecorder;->access$5(Lcom/moblynx/cameraics/EffectsRecorder;I)V

    .line 670
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "effectsrecorder"

    const-string v3, "Start preview/effect switch complete"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_9
    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    iget-object v3, p0, Lcom/moblynx/cameraics/EffectsRecorder$1;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v3}, Lcom/moblynx/cameraics/EffectsRecorder;->access$6(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v3

    const/4 v4, 0x5

    #calls: Lcom/moblynx/cameraics/EffectsRecorder;->sendMessage(II)V
    invoke-static {v1, v3, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->access$7(Lcom/moblynx/cameraics/EffectsRecorder;II)V

    .line 618
    monitor-exit v2

    goto/16 :goto_0

    .line 659
    :catch_1
    move-exception v0

    .line 660
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unable to connect camera to effect input"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
