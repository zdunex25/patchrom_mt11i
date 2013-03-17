.class public abstract Landroid/filterfw/core/GraphRunner;
.super Ljava/lang/Object;
.source "GraphRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    }
.end annotation


# static fields
.field public static final RESULT_BLOCKED:I = 0x4

.field public static final RESULT_ERROR:I = 0x6

.field public static final RESULT_FINISHED:I = 0x2

.field public static final RESULT_RUNNING:I = 0x1

.field public static final RESULT_SLEEPING:I = 0x3

.field public static final RESULT_STOPPED:I = 0x5

.field public static final RESULT_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getGraph()Landroid/filterfw/core/FilterGraph;
.end method

.method public run()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
    .locals 0
    .parameter "mRunnerDoneCallback"

    .prologue
    .line 50
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
