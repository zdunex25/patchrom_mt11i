.class public abstract Landroid/filterfw/core/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 6
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public release()Landroid/filterfw/core/Frame;
    .locals 0

    .prologue
    .line 5
    return-object p0
.end method

.method public abstract setInts([I)V
.end method
