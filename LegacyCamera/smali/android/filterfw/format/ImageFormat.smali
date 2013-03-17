.class public Landroid/filterfw/format/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final COLORSPACE_GRAY:I = 0x1

.field public static final COLORSPACE_KEY:Ljava/lang/String; = "colorspace"

.field public static final COLORSPACE_RGB:I = 0x2

.field public static final COLORSPACE_RGBA:I = 0x3

.field public static final COLORSPACE_YUV:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "colorspace"

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "colorspace"
    .parameter "target"

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(IIII)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "colorspace"
    .parameter "target"

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
