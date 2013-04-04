.class Lcom/android/cameraics/RotateDialogController$2;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/RotateDialogController;

.field private final synthetic val$r2:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/cameraics/RotateDialogController;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/RotateDialogController$2;->this$0:Lcom/android/cameraics/RotateDialogController;

    iput-object p2, p0, Lcom/android/cameraics/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/RotateDialogController$2;->this$0:Lcom/android/cameraics/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/cameraics/RotateDialogController;->dismissDialog()V

    .line 141
    return-void
.end method
