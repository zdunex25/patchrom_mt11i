.class Lcom/moblynx/cameraics/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/Camera;
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
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$4;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$4;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->initializeCapabilities()V
    invoke-static {v0}, Lcom/moblynx/cameraics/Camera;->access$6(Lcom/moblynx/cameraics/Camera;)V

    .line 1321
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$4;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->startPreview()V
    invoke-static {v0}, Lcom/moblynx/cameraics/Camera;->access$7(Lcom/moblynx/cameraics/Camera;)V

    .line 1322
    return-void
.end method
