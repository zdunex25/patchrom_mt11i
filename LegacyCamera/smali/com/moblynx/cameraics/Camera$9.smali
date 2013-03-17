.class Lcom/moblynx/cameraics/Camera$9;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/Camera;->onRestorePreferencesClicked()V
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
    iput-object p1, p0, Lcom/moblynx/cameraics/Camera$9;->this$0:Lcom/moblynx/cameraics/Camera;

    .line 2972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/moblynx/cameraics/Camera$9;->this$0:Lcom/moblynx/cameraics/Camera;

    #calls: Lcom/moblynx/cameraics/Camera;->restorePreferences()V
    invoke-static {v0}, Lcom/moblynx/cameraics/Camera;->access$65(Lcom/moblynx/cameraics/Camera;)V

    .line 2975
    return-void
.end method
