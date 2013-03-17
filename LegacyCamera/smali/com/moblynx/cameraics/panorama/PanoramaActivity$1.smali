.class Lcom/moblynx/cameraics/panorama/PanoramaActivity$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/panorama/PanoramaActivity;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$1;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/moblynx/cameraics/panorama/PanoramaActivity$1;->this$0:Lcom/moblynx/cameraics/panorama/PanoramaActivity;

    const/4 v1, 0x0

    #calls: Lcom/moblynx/cameraics/panorama/PanoramaActivity;->switchToOtherMode(I)Z
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/panorama/PanoramaActivity;->access$5(Lcom/moblynx/cameraics/panorama/PanoramaActivity;I)Z

    .line 267
    return-void
.end method
