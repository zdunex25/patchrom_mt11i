.class public Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "MosaicRendererSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ConfigChooser;,
        Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MosaicRendererSurfaceView"


# instance fields
.field private mIsLandscapeOrientation:Z

.field private mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

.field private mRenderer:Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mIsLandscapeOrientation:Z

    .line 42
    invoke-direct {p0, p1, v1, v1, v1}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->initialize(Landroid/content/Context;ZII)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mIsLandscapeOrientation:Z

    .line 47
    invoke-direct {p0, p1, v1, v1, v1}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->initialize(Landroid/content/Context;ZII)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 1
    .parameter "context"
    .parameter "translucent"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mIsLandscapeOrientation:Z

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->initialize(Landroid/content/Context;ZII)V

    .line 54
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->unlockPreviewReadyFlag()V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .parameter "prompt"
    .parameter "egl"

    .prologue
    .line 119
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, error:I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    const-string v1, "MosaicRendererSurfaceView"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDisplayOrientation(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lcom/android/cameraics/panorama/PanoramaActivity;

    .line 64
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mIsLandscapeOrientation:Z

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init(ZII)V
    .locals 8
    .parameter "translucent"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x0

    const/16 v1, 0x8

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 82
    :cond_0
    new-instance v0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;-><init>(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;)V

    invoke-virtual {p0, v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 90
    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ConfigChooser;-><init>(IIIIII)V

    .line 89
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 94
    new-instance v0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    iget-boolean v1, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mIsLandscapeOrientation:Z

    invoke-direct {v0, v1}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    .line 95
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    invoke-virtual {p0, v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 96
    invoke-virtual {p0, v7}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->setRenderMode(I)V

    .line 97
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

    .line 98
    return-void

    .line 91
    :cond_1
    new-instance v0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ConfigChooser;

    const/4 v2, 0x6

    move v1, v4

    move v3, v4

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;ZII)V
    .locals 1
    .parameter "context"
    .parameter "translucent"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->getDisplayOrientation(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, p2, p3, p4}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->init(ZII)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 60
    return-void
.end method

.method private unlockPreviewReadyFlag()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 323
    return-void
.end method


# virtual methods
.method public getRenderer()Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    return-object v0
.end method

.method public lockPreviewReadyFlag()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 319
    return-void
.end method

.method public preprocess([F)V
    .locals 1
    .parameter "transformMatrix"

    .prologue
    .line 340
    new-instance v0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$2;-><init>(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;[F)V

    invoke-virtual {p0, v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public setReady()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$1;-><init>(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method public setWarping(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 361
    new-instance v0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$4;

    invoke-direct {v0, p0, p1}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$4;-><init>(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method

.method public transferGPUtoCPU()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$3;-><init>(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public waitUntilPreviewReady()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 327
    return-void
.end method
