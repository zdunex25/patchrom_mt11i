.class public Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;
.super Lcom/moblynx/cameraics/ui/IndicatorControlContainer;
.source "IndicatorControlBarContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IndicatorControlBarContainer"


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

.field private mSecondLevelFadeIn:Landroid/view/animation/Animation;

.field private mSecondLevelFadeOut:Landroid/view/animation/Animation;

.field private mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/ui/IndicatorControlContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer$1;-><init>(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 46
    const/high16 v0, 0x7f05

    .line 45
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mFadeIn:Landroid/view/animation/Animation;

    .line 48
    const v0, 0x7f050001

    .line 47
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    .line 49
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 51
    const v0, 0x7f050006

    .line 50
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    .line 53
    const v0, 0x7f050007

    .line 52
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    .line 54
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)Lcom/moblynx/cameraics/ui/IndicatorControlBar;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    return-object v0
.end method

.method private leaveSecondLevelIndicator()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    return-void
.end method


# virtual methods
.method public dismissSecondLevelIndicator()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->leaveSecondLevelIndicator()V

    .line 179
    :cond_0
    return-void
.end method

.method public dismissSettingPopup()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->dismissSettingPopup()Z

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->dismissSettingPopup()Z

    move-result v0

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->enableZoom(Z)V

    .line 172
    return-void
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/moblynx/cameraics/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "group"
    .parameter "isZoomSupported"
    .parameter "secondLevelKeys"
    .parameter "secondLevelOtherSettingKeys"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->initialize(Landroid/content/Context;Lcom/moblynx/cameraics/PreferenceGroup;Z)V

    .line 74
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->initialize(Landroid/content/Context;Lcom/moblynx/cameraics/PreferenceGroup;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    .line 60
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    check-cast v0, Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    .line 61
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0, p0}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->setOnIndicatorEventListener(Lcom/moblynx/cameraics/ui/OnIndicatorEventListener;)V

    .line 63
    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    check-cast v0, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    .line 64
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p0}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->setOnIndicatorEventListener(Lcom/moblynx/cameraics/ui/OnIndicatorEventListener;)V

    .line 65
    return-void
.end method

.method public onIndicatorEvent(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->setVisibility(I)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->leaveSecondLevelIndicator()V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->overrideSettings([Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->reloadPreferences()V

    .line 131
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->reloadPreferences()V

    .line 132
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->setEnabled(Z)V

    .line 167
    return-void
.end method

.method public setListener(Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->setListener(Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;)V

    .line 136
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->setListener(Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;)V

    .line 137
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->setOrientation(I)V

    .line 80
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->setOrientation(I)V

    .line 81
    return-void
.end method
