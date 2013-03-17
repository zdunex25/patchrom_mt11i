.class Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextFactory"
.end annotation


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x3098

    sput v0, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5
    .parameter "egl"
    .parameter "display"
    .parameter "eglConfig"

    .prologue
    const/4 v4, 0x2

    .line 103
    const-string v2, "MosaicRendererSurfaceView"

    const-string v3, "creating OpenGL ES 2.0 context"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v2, "Before eglCreateContext"

    #calls: Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v2, p1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->access$0(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 105
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v4, v0, v2

    const/16 v2, 0x3038

    aput v2, v0, v4

    .line 107
    .local v0, attribList:[I
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 106
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 108
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    const-string v2, "After eglCreateContext"

    #calls: Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v2, p1}, Lcom/moblynx/cameraics/panorama/MosaicRendererSurfaceView;->access$0(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 109
    return-object v1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .parameter "egl"
    .parameter "display"
    .parameter "context"

    .prologue
    .line 113
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 114
    return-void
.end method
