.class public abstract Lcom/android/cameraics/ui/IndicatorControl;
.super Landroid/widget/RelativeLayout;
.source "IndicatorControl.java"

# interfaces
.implements Lcom/android/cameraics/ui/IndicatorButton$Listener;
.implements Lcom/android/cameraics/ui/OtherSettingsPopup$Listener;
.implements Lcom/android/cameraics/ui/Rotatable;


# static fields
.field public static final MODE_CAMERA:I = 0x0

.field public static final MODE_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndicatorControl"


# instance fields
.field protected mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

.field protected mCurrentMode:I

.field mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cameraics/ui/AbstractIndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;

.field protected mOnIndicatorEventListener:Lcom/android/cameraics/ui/OnIndicatorEventListener;

.field private mOrientation:I

.field private mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mOrientation:I

    .line 50
    iput v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCurrentMode:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    .line 62
    return-void
.end method


# virtual methods
.method protected addControls([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 101
    .end local v0           #i:I
    :cond_0
    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControl;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 103
    const v3, 0x7f020056

    .line 102
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/cameraics/ui/IndicatorControl;->addOtherSettingIndicator(Landroid/content/Context;I[Ljava/lang/String;)Lcom/android/cameraics/ui/OtherSettingIndicatorButton;

    .line 105
    :cond_1
    return-void

    .line 93
    .restart local v0       #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/cameraics/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/android/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/cameraics/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/cameraics/IconListPreference;

    .line 94
    .local v1, pref:Lcom/android/cameraics/IconListPreference;
    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/cameraics/ui/IndicatorControl;->addIndicator(Landroid/content/Context;Lcom/android/cameraics/IconListPreference;)Lcom/android/cameraics/ui/IndicatorButton;

    .line 91
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addIndicator(Landroid/content/Context;Lcom/android/cameraics/IconListPreference;)Lcom/android/cameraics/ui/IndicatorButton;
    .locals 2
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 125
    new-instance v0, Lcom/android/cameraics/ui/IndicatorButton;

    invoke-direct {v0, p1, p2}, Lcom/android/cameraics/ui/IndicatorButton;-><init>(Landroid/content/Context;Lcom/android/cameraics/IconListPreference;)V

    .line 126
    .local v0, b:Lcom/android/cameraics/ui/IndicatorButton;
    invoke-virtual {v0, p0}, Lcom/android/cameraics/ui/IndicatorButton;->setSettingChangedListener(Lcom/android/cameraics/ui/IndicatorButton$Listener;)V

    .line 127
    invoke-virtual {p2}, Lcom/android/cameraics/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/IndicatorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/IndicatorControl;->addView(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-object v0
.end method

.method public addOtherSettingIndicator(Landroid/content/Context;I[Ljava/lang/String;)Lcom/android/cameraics/ui/OtherSettingIndicatorButton;
    .locals 3
    .parameter "context"
    .parameter "resId"
    .parameter "keys"

    .prologue
    .line 135
    new-instance v0, Lcom/android/cameraics/ui/OtherSettingIndicatorButton;

    .line 136
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;

    .line 135
    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/cameraics/ui/OtherSettingIndicatorButton;-><init>(Landroid/content/Context;ILcom/android/cameraics/PreferenceGroup;[Ljava/lang/String;)V

    .line 137
    .local v0, b:Lcom/android/cameraics/ui/OtherSettingIndicatorButton;
    invoke-virtual {v0, p0}, Lcom/android/cameraics/ui/OtherSettingIndicatorButton;->setSettingChangedListener(Lcom/android/cameraics/ui/OtherSettingsPopup$Listener;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    const v2, 0x7f080095

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/OtherSettingIndicatorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/IndicatorControl;->addView(Landroid/view/View;)V

    .line 141
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v0
.end method

.method public dismissSettingPopup()Z
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/AbstractIndicatorButton;

    .line 161
    .local v0, v:Lcom/android/cameraics/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->dismissPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControl;->invalidate()V

    .line 163
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/cameraics/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cameraics/ui/AbstractIndicatorButton;

    .line 171
    .local v1, v:Lcom/android/cameraics/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/android/cameraics/ui/AbstractSettingPopup;

    move-result-object v0

    .line 172
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method protected initializeCameraPicker()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;

    .line 109
    const-string v2, "pref_camera_id_key"

    .line 108
    invoke-virtual {v1, v2}, Lcom/android/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/cameraics/ListPreference;

    move-result-object v0

    .line 110
    .local v0, pref:Lcom/android/cameraics/ListPreference;
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v1, Lcom/android/cameraics/ui/CameraPicker;

    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/cameraics/ui/CameraPicker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    .line 112
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    invoke-virtual {v1, v0}, Lcom/android/cameraics/ui/CameraPicker;->initialize(Lcom/android/cameraics/ListPreference;)V

    .line 113
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    invoke-virtual {p0, v1}, Lcom/android/cameraics/ui/IndicatorControl;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mListener:Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mListener:Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;->onRestorePreferencesClicked()V

    .line 150
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mListener:Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mListener:Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 157
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .parameter "keyvalues"

    .prologue
    .line 179
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    return-void

    .line 183
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/AbstractIndicatorButton;

    .line 184
    .local v0, b:Lcom/android/cameraics/ui/AbstractIndicatorButton;
    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/cameraics/PreferenceGroup;->reloadValue()V

    .line 190
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    return-void

    .line 190
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/AbstractIndicatorButton;

    .line 191
    .local v0, b:Lcom/android/cameraics/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/cameraics/ui/AbstractIndicatorButton;->reloadPreference()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 197
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControl;->getChildCount()I

    move-result v0

    .line 199
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 210
    iget-object v3, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    invoke-virtual {v3, p1}, Lcom/android/cameraics/ui/CameraPicker;->setEnabled(Z)V

    .line 212
    iget v3, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCurrentMode:I

    if-ne v3, v6, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/cameraics/ui/CameraPicker;->setVisibility(I)V

    .line 216
    :cond_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/cameraics/ui/IndicatorControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 202
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/cameraics/ui/AbstractIndicatorButton;

    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 205
    iget v3, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCurrentMode:I

    if-ne v3, v6, :cond_2

    .line 206
    if-eqz p1, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    .line 206
    goto :goto_2

    .end local v2           #v:Landroid/view/View;
    :cond_4
    move v4, v5

    .line 213
    goto :goto_1
.end method

.method public setListener(Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mListener:Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;

    .line 57
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/CameraPicker;->setListener(Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setOnIndicatorEventListener(Lcom/android/cameraics/ui/OnIndicatorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mOnIndicatorEventListener:Lcom/android/cameraics/ui/OnIndicatorEventListener;

    .line 77
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mOrientation:I

    .line 66
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControl;->getChildCount()I

    move-result v0

    .line 67
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 73
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/cameraics/ui/IndicatorControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/cameraics/ui/Rotatable;

    if-eqz v3, :cond_1

    .line 70
    check-cast v2, Lcom/android/cameraics/ui/Rotatable;

    .end local v2           #view:Landroid/view/View;
    invoke-interface {v2, p1}, Lcom/android/cameraics/ui/Rotatable;->setOrientation(I)V

    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setPreferenceGroup(Lcom/android/cameraics/PreferenceGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mPreferenceGroup:Lcom/android/cameraics/PreferenceGroup;

    .line 82
    invoke-virtual {p1}, Lcom/android/cameraics/PreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    const v2, 0x7f080096

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/cameraics/ui/IndicatorControl;->mCurrentMode:I

    .line 87
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
