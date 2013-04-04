.class Lcom/android/cameraics/ui/ZoomControl$1;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/ui/ZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/ui/ZoomControl;


# direct methods
.method constructor <init>(Lcom/android/cameraics/ui/ZoomControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/ui/ZoomControl$1;->this$0:Lcom/android/cameraics/ui/ZoomControl;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/cameraics/ui/ZoomControl$1;->this$0:Lcom/android/cameraics/ui/ZoomControl;

    iget-object v1, p0, Lcom/android/cameraics/ui/ZoomControl$1;->this$0:Lcom/android/cameraics/ui/ZoomControl;

    #getter for: Lcom/android/cameraics/ui/ZoomControl;->mState:I
    invoke-static {v1}, Lcom/android/cameraics/ui/ZoomControl;->access$0(Lcom/android/cameraics/ui/ZoomControl;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/android/cameraics/ui/ZoomControl;->performZoom(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/cameraics/ui/ZoomControl;->access$1(Lcom/android/cameraics/ui/ZoomControl;IZ)V

    .line 71
    return-void
.end method
