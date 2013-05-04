.class Lcom/android/cameraics/Camera$9;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/Camera;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/Camera;


# direct methods
.method constructor <init>(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/Camera$9;->this$0:Lcom/android/cameraics/Camera;

    .line 2972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/android/cameraics/Camera$9;->this$0:Lcom/android/cameraics/Camera;

    #calls: Lcom/android/cameraics/Camera;->restorePreferences()V
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$65(Lcom/android/cameraics/Camera;)V

    .line 2975
    return-void
.end method
