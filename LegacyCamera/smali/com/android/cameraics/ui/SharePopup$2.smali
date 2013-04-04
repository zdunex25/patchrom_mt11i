.class Lcom/android/cameraics/ui/SharePopup$2;
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
    iput-object p1, p0, Lcom/android/cameraics/ui/SharePopup$2;->this$0:Lcom/android/cameraics/ui/SharePopup;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup$2;->this$0:Lcom/android/cameraics/ui/SharePopup;

    #calls: Lcom/android/cameraics/ui/SharePopup;->fadeOutDialog()V
    invoke-static {v0}, Lcom/android/cameraics/ui/SharePopup;->access$1(Lcom/android/cameraics/ui/SharePopup;)V

    .line 191
    return-void
.end method
