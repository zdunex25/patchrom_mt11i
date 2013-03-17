.class Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/panorama/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 215
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    .line 217
    iput v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->width:I

    .line 218
    iput v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->height:I

    .line 219
    iput-boolean v1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;[BII)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    .line 210
    iput p3, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->width:I

    .line 211
    iput p4, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->height:I

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    .line 213
    return-void
.end method
