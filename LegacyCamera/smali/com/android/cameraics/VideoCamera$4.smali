.class Lcom/android/cameraics/VideoCamera$4;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/VideoCamera$4;->this$0:Lcom/android/cameraics/VideoCamera;

    .line 2097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$4;->this$0:Lcom/android/cameraics/VideoCamera;

    const/4 v1, 0x2

    #calls: Lcom/android/cameraics/VideoCamera;->switchToOtherMode(I)Z
    invoke-static {v0, v1}, Lcom/android/cameraics/VideoCamera;->access$36(Lcom/android/cameraics/VideoCamera;I)Z

    .line 2100
    return-void
.end method
