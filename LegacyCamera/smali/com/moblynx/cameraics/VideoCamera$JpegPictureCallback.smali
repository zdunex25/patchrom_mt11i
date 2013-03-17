.class final Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/moblynx/cameraics/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/moblynx/cameraics/VideoCamera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 3169
    iput-object p1, p0, Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3170
    iput-object p2, p0, Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 3171
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 3175
    const-string v0, "videocamera"

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #setter for: Lcom/moblynx/cameraics/VideoCamera;->mSnapshotInProgress:Z
    invoke-static {v0, v2}, Lcom/moblynx/cameraics/VideoCamera;->access$29(Lcom/moblynx/cameraics/VideoCamera;Z)V

    .line 3177
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    invoke-virtual {v0, v2}, Lcom/moblynx/cameraics/VideoCamera;->showVideoSnapshotUI(Z)V

    .line 3178
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    iget-object v1, p0, Lcom/moblynx/cameraics/VideoCamera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    #calls: Lcom/moblynx/cameraics/VideoCamera;->storeImage([BLandroid/location/Location;)V
    invoke-static {v0, p1, v1}, Lcom/moblynx/cameraics/VideoCamera;->access$30(Lcom/moblynx/cameraics/VideoCamera;[BLandroid/location/Location;)V

    .line 3179
    return-void
.end method
