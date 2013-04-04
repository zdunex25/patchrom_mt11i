.class public Lcom/android/cameraics/ui/InLineSettingSwitch;
.super Lcom/android/cameraics/ui/InLineSettingItem;
.source "InLineSettingSwitch.java"


# instance fields
.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitch:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/android/cameraics/ui/InLineSettingSwitch$1;

    invoke-direct {v0, p0}, Lcom/android/cameraics/ui/InLineSettingSwitch$1;-><init>(Lcom/android/cameraics/ui/InLineSettingSwitch;)V

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 58
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/cameraics/ui/InLineSettingSwitch;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/cameraics/ListPreference;)V
    .locals 6
    .parameter "preference"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/cameraics/ui/InLineSettingItem;->initialize(Lcom/android/cameraics/ListPreference;)V

    .line 75
    iget-object v0, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mSwitch:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/cameraics/ui/InLineSettingSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    const v2, 0x7f0800f0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v5}, Lcom/android/cameraics/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 75
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/cameraics/ui/InLineSettingItem;->onFinishInflate()V

    .line 64
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/InLineSettingSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mSwitch:Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mSwitch:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {v0, v1}, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->setOnCheckedChangeListener(Ljava/lang/Object;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v1}, Lcom/android/cameraics/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method protected updateView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    iget-object v3, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mSwitch:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->setOnCheckedChangeListener(Ljava/lang/Object;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v3, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mOverrideValue:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mSwitch:Ljava/lang/Object;

    iget v4, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mIndex:I

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-static {v3, v1}, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->setChecked(Ljava/lang/Object;Z)V

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mSwitch:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {v1, v2}, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->setOnCheckedChangeListener(Ljava/lang/Object;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    return-void

    :cond_0
    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mPreference:Lcom/android/cameraics/ListPreference;

    iget-object v4, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/cameraics/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, index:I
    iget-object v3, p0, Lcom/android/cameraics/ui/InLineSettingSwitch;->mSwitch:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :goto_2
    invoke-static {v3, v1}, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->setChecked(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
