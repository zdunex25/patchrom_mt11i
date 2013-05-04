.class Lcom/android/cameraics/ui/SharePopup$3;
.super Ljava/lang/Object;
.source "SharePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/ui/SharePopup;-><init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/graphics/Bitmap;ILandroid/view/View;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/ui/SharePopup;


# direct methods
.method constructor <init>(Lcom/android/cameraics/ui/SharePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/ui/SharePopup$3;->this$0:Lcom/android/cameraics/ui/SharePopup;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/ui/SharePopup$3;)Lcom/android/cameraics/ui/SharePopup;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup$3;->this$0:Lcom/android/cameraics/ui/SharePopup;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup$3;->this$0:Lcom/android/cameraics/ui/SharePopup;

    #getter for: Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;
    invoke-static {v0}, Lcom/android/cameraics/ui/SharePopup;->access$2(Lcom/android/cameraics/ui/SharePopup;)Lcom/android/cameraics/ui/RotateLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/RotateLayout;->setVisibility(I)V

    .line 203
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/cameraics/ui/SharePopup$3$1;

    invoke-direct {v1, p0}, Lcom/android/cameraics/ui/SharePopup$3$1;-><init>(Lcom/android/cameraics/ui/SharePopup$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method
