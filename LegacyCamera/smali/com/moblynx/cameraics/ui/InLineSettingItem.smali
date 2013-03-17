.class public abstract Lcom/moblynx/cameraics/ui/InLineSettingItem;
.super Landroid/widget/LinearLayout;
.source "InLineSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;
    }
.end annotation


# instance fields
.field protected mIndex:I

.field private mListener:Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/moblynx/cameraics/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected changeIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mPreference:Lcom/moblynx/cameraics/ListPreference;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 69
    :cond_1
    iput p1, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mIndex:I

    .line 70
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mPreference:Lcom/moblynx/cameraics/ListPreference;

    iget v1, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ListPreference;->setValueIndex(I)V

    .line 71
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mListener:Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mListener:Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;

    invoke-interface {v0}, Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;->onSettingChanged()V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->updateView()V

    .line 75
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->sendAccessibilityEvent(I)V

    .line 76
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initialize(Lcom/moblynx/cameraics/ListPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->setTitle(Lcom/moblynx/cameraics/ListPreference;)V

    .line 60
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mPreference:Lcom/moblynx/cameraics/ListPreference;

    .line 62
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->reloadPreference()V

    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->updateView()V

    .line 95
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mPreference:Lcom/moblynx/cameraics/ListPreference;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mPreference:Lcom/moblynx/cameraics/ListPreference;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mPreference:Lcom/moblynx/cameraics/ListPreference;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mIndex:I

    .line 84
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->updateView()V

    .line 86
    :cond_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/InLineSettingItem;->mListener:Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;

    .line 90
    return-void
.end method

.method protected setTitle(Lcom/moblynx/cameraics/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 55
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/moblynx/cameraics/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method protected abstract updateView()V
.end method
