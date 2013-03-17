.class Lcom/moblynx/cameraics/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/Camera;->addIdleHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/Camera;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$5;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/moblynx/cameraics/Storage;->ensureOSXCompatible()V

    .line 499
    const/4 v0, 0x0

    return v0
.end method
