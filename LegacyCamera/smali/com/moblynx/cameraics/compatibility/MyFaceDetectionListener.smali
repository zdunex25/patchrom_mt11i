.class public Lcom/moblynx/cameraics/compatibility/MyFaceDetectionListener;
.super Ljava/lang/Object;
.source "MyFaceDetectionListener.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "compatibility"


# instance fields
.field private mFaceView:Lcom/moblynx/cameraics/ui/FaceView;


# direct methods
.method public constructor <init>(Lcom/moblynx/cameraics/ui/FaceView;)V
    .locals 0
    .parameter "mFaceView"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/moblynx/cameraics/compatibility/MyFaceDetectionListener;->mFaceView:Lcom/moblynx/cameraics/ui/FaceView;

    .line 20
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, result:Ljava/lang/Object;
    if-eqz p3, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onFaceDetection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v3, p3, v3

    check-cast v3, Landroid/hardware/Camera;

    invoke-virtual {p0, v2, v3}, Lcom/moblynx/cameraics/compatibility/MyFaceDetectionListener;->onFaceDetection([Ljava/lang/Object;Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected invocation exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onFaceDetection([Ljava/lang/Object;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/moblynx/cameraics/compatibility/MyFaceDetectionListener;->mFaceView:Lcom/moblynx/cameraics/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/FaceView;->setFaces([Ljava/lang/Object;)V

    .line 26
    return-void
.end method
