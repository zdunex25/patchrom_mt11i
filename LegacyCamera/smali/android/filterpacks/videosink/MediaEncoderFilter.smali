.class public Landroid/filterpacks/videosink/MediaEncoderFilter;
.super Landroid/filterfw/core/Filter;
.source "MediaEncoderFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    return-void
.end method

.method public setupPorts()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method
