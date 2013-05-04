.class public abstract Lcom/android/cameraics/ui/AbstractIndicatorButton;
.super Lcom/android/cameraics/ui/RotateImageView;
.source "AbstractIndicatorButton.java"

# interfaces
.implements Lcom/android/cameraics/ui/PopupManager$OnOtherPopupShowedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;,
        Lcom/android/cameraics/ui/AbstractIndicatorButton$MainHandler;
    }
.end annotation


# instance fields
.field protected final HIGHLIGHT_COLOR:I

.field private final MSG_DISMISS_POPUP:I

.field private final TAG:Ljava/lang/String;

.field protected mFadeIn:Landroid/view/animation/Animation;

.field protected mFadeOut:Landroid/view/animation/Animation;

.field protected mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;

.field protected mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/cameraics/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, "AbstractIndicatorButton"

    iput-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/android/cameraics/ui/AbstractIndicatorButton$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cameraics/ui/AbstractIndicatorButton$MainHandler;-><init>(Lcom/android/cameraics/ui/AbstractIndicatorButton;Lcom/android/cameraics/ui/AbstractIndicatorButton$MainHandler;)V

    iput-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->MSG_DISMISS_POPUP:I

    .line 47
    const v0, 0x7f050008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mFadeIn:Landroid/view/animation/Animation;

    .line 48
    const v0, 0x7f050009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mFadeOut:Landroid/view/animation/Animation;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->HIGHLIGHT_COLOR:I

    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    invoke-static {p1}, Lcom/android/cameraics/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/cameraics/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cameraics/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/cameraics/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->setClickable(Z)V

    .line 54
    return-void
.end method

.method private showPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->setPressed(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->initializePopup()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->getDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/AbstractSettingPopup;->setOrientation(I)V

    .line 124
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/AbstractSettingPopup;->clearAnimation()V

    .line 125
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mListener:Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mListener:Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;

    invoke-interface {v0, p0, v2}, Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V

    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->setPressed(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/cameraics/ui/AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/cameraics/ui/AbstractSettingPopup;->clearAnimation()V

    .line 134
    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    iget-object v2, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/cameraics/ui/AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/cameraics/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mListener:Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mListener:Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;

    invoke-interface {v1, p0, v0}, Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->invalidate()V

    .line 140
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 141
    const/4 v0, 0x1

    .line 143
    :cond_1
    return v0
.end method

.method protected dismissPopupDelayed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    :cond_0
    return-void
.end method

.method public getPopupWindow()Lcom/android/cameraics/ui/AbstractSettingPopup;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract initializePopup()V
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onOtherPopupShowed()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->dismissPopup()Z

    .line 59
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 78
    .local v0, action:I
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_4

    .line 79
    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/cameraics/ui/AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->showPopup()V

    .line 81
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cameraics/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/cameraics/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/cameraics/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    :goto_1
    move v1, v2

    .line 85
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->dismissPopup()Z

    goto :goto_1

    .line 86
    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->dismissPopup()Z

    move v1, v2

    .line 88
    goto :goto_0
.end method

.method public varargs abstract overrideSettings([Ljava/lang/String;)V
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/AbstractSettingPopup;->reloadPreference()V

    .line 156
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 p1, 0x0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 103
    invoke-super {p0, p1}, Lcom/android/cameraics/ui/RotateImageView;->setEnabled(Z)V

    .line 105
    :cond_1
    return-void
.end method

.method public setIndicatorChangeListener(Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mListener:Lcom/android/cameraics/ui/AbstractIndicatorButton$IndicatorChangeListener;

    .line 63
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/cameraics/ui/RotateImageView;->setOrientation(I)V

    .line 110
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/cameraics/ui/AbstractIndicatorButton;->mPopup:Lcom/android/cameraics/ui/AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/AbstractSettingPopup;->setOrientation(I)V

    .line 113
    :cond_0
    return-void
.end method
