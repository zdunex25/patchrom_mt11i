.class Lcom/moblynx/cameraics/Camera$ImageSaver;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0x3


# instance fields
.field private mPendingThumbnail:Lcom/moblynx/cameraics/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/moblynx/cameraics/Camera$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/moblynx/cameraics/Camera;


# direct methods
.method public constructor <init>(Lcom/moblynx/cameraics/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1064
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1070
    invoke-virtual {p0}, Lcom/moblynx/cameraics/Camera$ImageSaver;->start()V

    .line 1071
    return-void
.end method

.method private storeImage([BLandroid/location/Location;IIJI)V
    .locals 16
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "dateTaken"
    .parameter "previewWidth"

    .prologue
    .line 1180
    invoke-static/range {p5 .. p6}, Lcom/moblynx/cameraics/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 1181
    .local v2, title:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/moblynx/cameraics/Exif;->getOrientation([B)I

    move-result v6

    .line 1182
    .local v6, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$55(Lcom/moblynx/cameraics/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mPreferences:Lcom/moblynx/cameraics/ComboPreferences;
    invoke-static {v3}, Lcom/moblynx/cameraics/Camera;->access$56(Lcom/moblynx/cameraics/Camera;)Lcom/moblynx/cameraics/ComboPreferences;

    move-result-object v10

    move-wide/from16 v3, p5

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    .line 1182
    invoke-static/range {v1 .. v10}, Lcom/moblynx/cameraics/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BIILcom/moblynx/cameraics/ComboPreferences;)Landroid/net/Uri;

    move-result-object v15

    .line 1184
    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_1

    .line 1186
    monitor-enter p0

    .line 1191
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    const/4 v12, 0x1

    .line 1186
    .local v12, needThumbnail:Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    if-eqz v12, :cond_0

    .line 1196
    move/from16 v0, p3

    int-to-double v3, v0

    move/from16 v0, p7

    int-to-double v7, v0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v13, v3

    .line 1197
    .local v13, ratio:I
    invoke-static {v13}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    .line 1198
    .local v11, inSampleSize:I
    move-object/from16 v0, p1

    invoke-static {v0, v6, v11, v15}, Lcom/moblynx/cameraics/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/moblynx/cameraics/Thumbnail;

    move-result-object v14

    .line 1200
    .local v14, t:Lcom/moblynx/cameraics/Thumbnail;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1203
    :try_start_1
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mPendingThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 1204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$13(Lcom/moblynx/cameraics/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1200
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1207
    .end local v11           #inSampleSize:I
    .end local v13           #ratio:I
    .end local v14           #t:Lcom/moblynx/cameraics/Thumbnail;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-static {v1, v15}, Lcom/moblynx/cameraics/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1209
    .end local v12           #needThumbnail:Z
    :cond_1
    return-void

    .line 1191
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1200
    .restart local v11       #inSampleSize:I
    .restart local v12       #needThumbnail:Z
    .restart local v13       #ratio:I
    .restart local v14       #t:Lcom/moblynx/cameraics/Thumbnail;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public addImage([BLandroid/location/Location;II)V
    .locals 3
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1076
    new-instance v0, Lcom/moblynx/cameraics/Camera$SaveRequest;

    invoke-direct {v0, v1}, Lcom/moblynx/cameraics/Camera$SaveRequest;-><init>(Lcom/moblynx/cameraics/Camera$SaveRequest;)V

    .line 1077
    .local v0, r:Lcom/moblynx/cameraics/Camera$SaveRequest;
    iput-object p1, v0, Lcom/moblynx/cameraics/Camera$SaveRequest;->data:[B

    .line 1078
    if-nez p2, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/moblynx/cameraics/Camera$SaveRequest;->loc:Landroid/location/Location;

    .line 1079
    iput p3, v0, Lcom/moblynx/cameraics/Camera$SaveRequest;->width:I

    .line 1080
    iput p4, v0, Lcom/moblynx/cameraics/Camera$SaveRequest;->height:I

    .line 1081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/moblynx/cameraics/Camera$SaveRequest;->dateTaken:J

    .line 1082
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/Camera;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$50(Lcom/moblynx/cameraics/Camera;)Lcom/moblynx/cameraics/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/moblynx/cameraics/Camera$SaveRequest;->previewWidth:I

    .line 1087
    :goto_1
    monitor-enter p0

    .line 1088
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 1095
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1087
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    return-void

    .line 1078
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1085
    :cond_1
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mPreviewFrameLayout:Lcom/moblynx/cameraics/PreviewFrameLayout;
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$50(Lcom/moblynx/cameraics/Camera;)Lcom/moblynx/cameraics/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/moblynx/cameraics/Camera$SaveRequest;->previewWidth:I

    goto :goto_1

    .line 1090
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1091
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1087
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/moblynx/cameraics/Camera$ImageSaver;->waitDone()V

    .line 1148
    monitor-enter p0

    .line 1149
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mStop:Z

    .line 1150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    :try_start_1
    invoke-virtual {p0}, Lcom/moblynx/cameraics/Camera$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1157
    :goto_0
    return-void

    .line 1148
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 1105
    :goto_0
    monitor-enter p0

    .line 1106
    :try_start_0
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1111
    iget-boolean v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    return-void

    .line 1114
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1118
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1120
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/moblynx/cameraics/Camera$SaveRequest;

    .line 1105
    .local v8, r:Lcom/moblynx/cameraics/Camera$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1122
    iget-object v1, v8, Lcom/moblynx/cameraics/Camera$SaveRequest;->data:[B

    iget-object v2, v8, Lcom/moblynx/cameraics/Camera$SaveRequest;->loc:Landroid/location/Location;

    iget v3, v8, Lcom/moblynx/cameraics/Camera$SaveRequest;->width:I

    iget v4, v8, Lcom/moblynx/cameraics/Camera$SaveRequest;->height:I

    iget-wide v5, v8, Lcom/moblynx/cameraics/Camera$SaveRequest;->dateTaken:J

    .line 1123
    iget v7, v8, Lcom/moblynx/cameraics/Camera$SaveRequest;->previewWidth:I

    move-object v0, p0

    .line 1122
    invoke-direct/range {v0 .. v7}, Lcom/moblynx/cameraics/Camera$ImageSaver;->storeImage([BLandroid/location/Location;IIJI)V

    .line 1124
    monitor-enter p0

    .line 1125
    :try_start_4
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1124
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1115
    .end local v8           #r:Lcom/moblynx/cameraics/Camera$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateThumbnail()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1163
    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1164
    :try_start_0
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$13(Lcom/moblynx/cameraics/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1165
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mPendingThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 1166
    .local v0, t:Lcom/moblynx/cameraics/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mPendingThumbnail:Lcom/moblynx/cameraics/Thumbnail;

    .line 1163
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    if-eqz v0, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #setter for: Lcom/moblynx/cameraics/Camera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;
    invoke-static {v1, v0}, Lcom/moblynx/cameraics/Camera;->access$51(Lcom/moblynx/cameraics/Camera;Lcom/moblynx/cameraics/Thumbnail;)V

    .line 1171
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mThumbnailView:Lcom/moblynx/cameraics/ui/RotateImageView;
    invoke-static {v1}, Lcom/moblynx/cameraics/Camera;->access$52(Lcom/moblynx/cameraics/Camera;)Lcom/moblynx/cameraics/ui/RotateImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #getter for: Lcom/moblynx/cameraics/Camera;->mThumbnail:Lcom/moblynx/cameraics/Thumbnail;
    invoke-static {v2}, Lcom/moblynx/cameraics/Camera;->access$53(Lcom/moblynx/cameraics/Camera;)Lcom/moblynx/cameraics/Thumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moblynx/cameraics/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/moblynx/cameraics/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->this$0:Lcom/moblynx/cameraics/Camera;

    #setter for: Lcom/moblynx/cameraics/Camera;->mSharePopup:Lcom/moblynx/cameraics/ui/SharePopup;
    invoke-static {v1, v4}, Lcom/moblynx/cameraics/Camera;->access$54(Lcom/moblynx/cameraics/Camera;Lcom/moblynx/cameraics/ui/SharePopup;)V

    .line 1175
    return-void

    .line 1163
    .end local v0           #t:Lcom/moblynx/cameraics/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1133
    monitor-enter p0

    .line 1134
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    invoke-virtual {p0}, Lcom/moblynx/cameraics/Camera$ImageSaver;->updateThumbnail()V

    .line 1143
    return-void

    .line 1136
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1133
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
