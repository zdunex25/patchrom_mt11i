.class public Landroid/filterfw/core/GLEnvironment;
.super Ljava/lang/Object;
.source "GLEnvironment.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeActivate()Z
.end method

.method private native nativeActivateSurfaceId(I)Z
.end method

.method private native nativeAddSurface(Landroid/view/Surface;)I
.end method

.method private native nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
.end method

.method private native nativeAddSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I
.end method

.method private native nativeAllocate()Z
.end method

.method private native nativeDeactivate()Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native nativeDisconnectSurfaceMediaSource(Landroid/media/MediaRecorder;)Z
.end method

.method private native nativeInitWithCurrentContext()Z
.end method

.method private native nativeInitWithNewContext()Z
.end method

.method private native nativeIsActive()Z
.end method

.method private static native nativeIsAnyContextActive()Z
.end method

.method private native nativeIsContextActive()Z
.end method

.method private native nativeRemoveSurfaceId(I)Z
.end method

.method private native nativeSetSurfaceTimestamp(J)Z
.end method

.method private native nativeSwapBuffers()Z
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
