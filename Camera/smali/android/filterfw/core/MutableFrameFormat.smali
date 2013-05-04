.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    .line 6
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "baseType"
    .parameter "target"

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public setBytesPerSample(I)V
    .locals 0
    .parameter "bytesPerSample"

    .prologue
    .line 12
    return-void
.end method

.method public setDimensions(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 16
    return-void
.end method

.method public setDimensions(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 17
    return-void
.end method

.method public setDimensions([I)V
    .locals 0
    .parameter "dimensions"

    .prologue
    .line 14
    return-void
.end method
