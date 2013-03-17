.class public Landroid/filterfw/GraphEnvironment;
.super Landroid/filterfw/MffEnvironment;
.source "GraphEnvironment.java"


# static fields
.field public static final MODE_ASYNCHRONOUS:I = 0x1

.field public static final MODE_SYNCHRONOUS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/filterfw/MffEnvironment;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addReferences([Ljava/lang/Object;)V
    .locals 0
    .parameter "references"

    .prologue
    .line 20
    return-void
.end method

.method public createGLEnvironment()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public getRunner(II)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter "mGraphId"
    .parameter "modeAsynchronous"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadGraph(Landroid/content/Context;I)I
    .locals 1
    .parameter "mContext"
    .parameter "goofyFace"

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
