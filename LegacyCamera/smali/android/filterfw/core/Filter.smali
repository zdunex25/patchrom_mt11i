.class public abstract Landroid/filterfw/core/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .locals 0
    .parameter "name"
    .parameter "formatMask"

    .prologue
    .line 41
    return-void
.end method

.method protected addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "outputName"
    .parameter "inputName"

    .prologue
    .line 44
    return-void
.end method

.method protected addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .locals 0
    .parameter "name"
    .parameter "format"

    .prologue
    .line 43
    return-void
.end method

.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "name"
    .parameter "context"

    .prologue
    .line 27
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    return-void
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    return-void
.end method

.method public abstract process(Landroid/filterfw/core/FilterContext;)V
.end method

.method protected final pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 0
    .parameter "name"
    .parameter "frame"

    .prologue
    .line 46
    return-void
.end method

.method public final setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "inputName"
    .parameter "value"

    .prologue
    .line 23
    return-void
.end method

.method public abstract setupPorts()V
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    return-void
.end method
