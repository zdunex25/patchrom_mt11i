.class public Lcom/moblynx/cameraics/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v1

    .line 39
    .local v1, holder:Lcom/moblynx/cameraics/CameraHolder;
    new-instance v3, Lcom/moblynx/cameraics/ComboPreferences;

    invoke-direct {v3, p1}, Lcom/moblynx/cameraics/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 40
    .local v3, pref:Lcom/moblynx/cameraics/ComboPreferences;
    invoke-static {v3}, Lcom/moblynx/cameraics/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 41
    .local v0, cameraId:I
    invoke-virtual {v1, v0}, Lcom/moblynx/cameraics/CameraHolder;->tryOpen(I)Landroid/hardware/Camera;

    move-result-object v4

    if-nez v4, :cond_0

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {v1}, Lcom/moblynx/cameraics/CameraHolder;->keep()V

    .line 45
    invoke-virtual {v1}, Lcom/moblynx/cameraics/CameraHolder;->release()V

    .line 46
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, i:Landroid/content/Intent;
    const-class v4, Lcom/moblynx/cameraics/Camera;

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v4, 0x1400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
