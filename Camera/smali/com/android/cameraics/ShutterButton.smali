.class public Lcom/android/cameraics/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/ShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/cameraics/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/cameraics/ShutterButton;->mListener:Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/cameraics/ShutterButton;->mListener:Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 62
    invoke-virtual {p0}, Lcom/android/cameraics/ShutterButton;->isPressed()Z

    move-result v0

    .line 63
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/cameraics/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 64
    if-nez v0, :cond_1

    .line 86
    new-instance v1, Lcom/android/cameraics/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/cameraics/ShutterButton$1;-><init>(Lcom/android/cameraics/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/cameraics/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 94
    :goto_0
    iput-boolean v0, p0, Lcom/android/cameraics/ShutterButton;->mOldPressed:Z

    .line 96
    :cond_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/cameraics/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 107
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/cameraics/ShutterButton;->mListener:Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/cameraics/ShutterButton;->mListener:Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1}, Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 110
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/cameraics/ShutterButton;->mListener:Lcom/android/cameraics/ShutterButton$OnShutterButtonListener;

    .line 52
    return-void
.end method
