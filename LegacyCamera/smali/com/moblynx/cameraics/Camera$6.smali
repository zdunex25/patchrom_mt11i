.class Lcom/moblynx/cameraics/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/Camera;->addBaseMenuItems(Landroid/view/Menu;)V
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
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$6;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 2851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$6;->this$0:Lcom/moblynx/cameraics/Camera;

    const/4 v1, 0x1

    #calls: Lcom/moblynx/cameraics/Camera;->switchToOtherMode(I)Z
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/Camera;->access$62(Lcom/moblynx/cameraics/Camera;I)Z

    .line 2854
    return-void
.end method
