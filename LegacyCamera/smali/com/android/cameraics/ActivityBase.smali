.class public abstract Lcom/android/cameraics/ActivityBase;
.super Landroid/app/Activity;
.source "ActivityBase.java"


# static fields
.field private static LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityBase"


# instance fields
.field protected mCameraDevice:Landroid/hardware/Camera;

.field private mOnResumePending:Z

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/cameraics/ActivityBase;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 2

    .prologue
    .line 137
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/cameraics/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 151
    .local v0, kgm:Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected abstract doOnResume()V
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/cameraics/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/cameraics/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 45
    invoke-static {}, Lcom/android/cameraics/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ActivityBase;->setRequestedOrientation(I)V

    .line 50
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ActivityBase;->setVolumeControlStream(I)V

    .line 52
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ActivityBase;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/cameraics/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 134
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 103
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    .line 104
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/cameraics/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cameraics/ActivityBase;->mOnResumePending:Z

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    sget-boolean v0, Lcom/android/cameraics/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume. hasWindowFocus()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cameraics/ActivityBase;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/cameraics/ActivityBase;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget-boolean v0, Lcom/android/cameraics/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityBase"

    const-string v1, "onResume. mOnResumePending=true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cameraics/ActivityBase;->mOnResumePending:Z

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_2
    sget-boolean v0, Lcom/android/cameraics/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityBase"

    const-string v1, "onResume. mOnResumePending=false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/android/cameraics/ActivityBase;->doOnResume()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cameraics/ActivityBase;->mOnResumePending:Z

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/cameraics/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowFocusChanged.hasFocus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    const-string v2, ".mOnResumePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/cameraics/ActivityBase;->mOnResumePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/cameraics/ActivityBase;->mOnResumePending:Z

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/android/cameraics/ActivityBase;->doOnResume()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cameraics/ActivityBase;->mOnResumePending:Z

    .line 62
    :cond_1
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/cameraics/ActivityBase;->mResultCodeForTesting:I

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/cameraics/ActivityBase;->setResult(I)V

    .line 114
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/cameraics/ActivityBase;->mResultCodeForTesting:I

    .line 118
    iput-object p2, p0, Lcom/android/cameraics/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/cameraics/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 120
    return-void
.end method
