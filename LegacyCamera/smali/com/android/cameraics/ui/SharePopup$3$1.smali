.class Lcom/android/cameraics/ui/SharePopup$3$1;
.super Ljava/lang/Object;
.source "SharePopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/ui/SharePopup$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/cameraics/ui/SharePopup$3;


# direct methods
.method constructor <init>(Lcom/android/cameraics/ui/SharePopup$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/ui/SharePopup$3$1;->this$1:Lcom/android/cameraics/ui/SharePopup$3;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/android/cameraics/ui/SharePopup$3$1;->this$1:Lcom/android/cameraics/ui/SharePopup$3;

    #getter for: Lcom/android/cameraics/ui/SharePopup$3;->this$0:Lcom/android/cameraics/ui/SharePopup;
    invoke-static {v3}, Lcom/android/cameraics/ui/SharePopup$3;->access$0(Lcom/android/cameraics/ui/SharePopup$3;)Lcom/android/cameraics/ui/SharePopup;

    move-result-object v3

    #getter for: Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/cameraics/ui/SharePopup;->access$3(Lcom/android/cameraics/ui/SharePopup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, cR:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/cameraics/ui/SharePopup$3$1;->this$1:Lcom/android/cameraics/ui/SharePopup$3;

    #getter for: Lcom/android/cameraics/ui/SharePopup$3;->this$0:Lcom/android/cameraics/ui/SharePopup;
    invoke-static {v3}, Lcom/android/cameraics/ui/SharePopup$3;->access$0(Lcom/android/cameraics/ui/SharePopup$3;)Lcom/android/cameraics/ui/SharePopup;

    move-result-object v3

    #getter for: Lcom/android/cameraics/ui/SharePopup;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/cameraics/ui/SharePopup;->access$4(Lcom/android/cameraics/ui/SharePopup;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, del:I
    iget-object v3, p0, Lcom/android/cameraics/ui/SharePopup$3$1;->this$1:Lcom/android/cameraics/ui/SharePopup$3;

    #getter for: Lcom/android/cameraics/ui/SharePopup$3;->this$0:Lcom/android/cameraics/ui/SharePopup;
    invoke-static {v3}, Lcom/android/cameraics/ui/SharePopup$3;->access$0(Lcom/android/cameraics/ui/SharePopup$3;)Lcom/android/cameraics/ui/SharePopup;

    move-result-object v3

    iget-object v3, v3, Lcom/android/cameraics/ui/SharePopup;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0           #cR:Landroid/content/ContentResolver;
    .end local v1           #del:I
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "SharePopup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContentResolver Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
