.class public abstract Lcom/android/cameraics/ui/AbstractSettingPopup;
.super Lcom/android/cameraics/ui/RotateLayout;
.source "AbstractSettingPopup.java"


# instance fields
.field protected mSettingList:Landroid/view/ViewGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/cameraics/ui/RotateLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cameraics/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/cameraics/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .line 42
    return-void
.end method

.method public abstract reloadPreference()V
.end method
