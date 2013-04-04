.class Lcom/android/cameraics/Camera$SaveRequest;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field data:[B

.field dateTaken:J

.field height:I

.field loc:Landroid/location/Location;

.field previewWidth:I

.field width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/Camera$SaveRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1033
    invoke-direct {p0}, Lcom/android/cameraics/Camera$SaveRequest;-><init>()V

    return-void
.end method
