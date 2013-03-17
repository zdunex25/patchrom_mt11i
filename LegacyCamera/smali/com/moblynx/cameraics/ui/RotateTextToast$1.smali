.class Lcom/moblynx/cameraics/ui/RotateTextToast$1;
.super Ljava/lang/Object;
.source "RotateTextToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/ui/RotateTextToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/ui/RotateTextToast;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/ui/RotateTextToast;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/RotateTextToast$1;->this$0:Lcom/moblynx/cameraics/ui/RotateTextToast;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/RotateTextToast$1;->this$0:Lcom/moblynx/cameraics/ui/RotateTextToast;

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/RotateTextToast;->mToast:Lcom/moblynx/cameraics/ui/RotateLayout;

    invoke-static {v0}, Lcom/moblynx/cameraics/Util;->fadeOut(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/RotateTextToast$1;->this$0:Lcom/moblynx/cameraics/ui/RotateTextToast;

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/RotateTextToast$1;->this$0:Lcom/moblynx/cameraics/ui/RotateTextToast;

    iget-object v1, v1, Lcom/moblynx/cameraics/ui/RotateTextToast;->mToast:Lcom/moblynx/cameraics/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/RotateTextToast$1;->this$0:Lcom/moblynx/cameraics/ui/RotateTextToast;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/moblynx/cameraics/ui/RotateTextToast;->mToast:Lcom/moblynx/cameraics/ui/RotateLayout;

    .line 51
    return-void
.end method
