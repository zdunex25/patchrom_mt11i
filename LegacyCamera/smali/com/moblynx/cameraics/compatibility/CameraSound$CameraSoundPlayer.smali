.class Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;
.super Ljava/lang/Object;
.source "CameraSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/compatibility/CameraSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraSoundPlayer"
.end annotation


# static fields
.field private static final mShutterSound:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field private static final mVideoStartSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field private static final mVideoStopSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"


# instance fields
.field private mAudioStreamType:I

.field private mContext:Landroid/content/Context;

.field private mExit:Z

.field private mPlayCount:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSoundId:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "soundId"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mSoundId:I

    .line 199
    iput-object p1, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mContext:Landroid/content/Context;

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mAudioStreamType:I

    .line 209
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->release()V

    .line 243
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 214
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    :cond_0
    monitor-enter p0

    .line 217
    :try_start_0
    iget v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayCount:I

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 216
    monitor-exit p0

    .line 220
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 224
    monitor-enter p0

    .line 225
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mExit:Z

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 224
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :try_start_1
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    :goto_0
    iput-object v1, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 236
    iput-object v1, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 238
    :cond_1
    return-void

    .line 224
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 138
    iget v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mSoundId:I

    packed-switch v2, :pswitch_data_0

    .line 154
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown sound "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 140
    :pswitch_0
    const-string v1, "/system/media/audio/ui/camera_click.ogg"

    .line 157
    .local v1, soundFilePath:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mAudioStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 161
    iget v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mSoundId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 163
    iget-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/raw/camera_focus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 169
    :goto_2
    iget-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 170
    iget-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :goto_3
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :goto_4
    :try_start_2
    iget-boolean v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mExit:Z

    if-eqz v2, :cond_1

    .line 181
    monitor-exit p0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error playing sound "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_1
    const-string v1, ""

    .line 146
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 148
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_2
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 149
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v1           #soundFilePath:Ljava/lang/String;
    :pswitch_3
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 152
    .restart local v1       #soundFilePath:Ljava/lang/String;
    goto :goto_1

    .line 167
    :cond_0
    :try_start_4
    iget-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 171
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CameraSound"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error setting up sound "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_5
    iget v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayCount:I

    if-gtz v2, :cond_2

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_4

    .line 185
    :cond_2
    iget v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayCount:I

    .line 178
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :try_start_6
    iget-object v2, p0, Lcom/moblynx/cameraics/compatibility/CameraSound$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
