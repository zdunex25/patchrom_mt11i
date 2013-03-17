.class public Lcom/moblynx/cameraics/ui/InLineSettingRestore;
.super Lcom/moblynx/cameraics/ui/InLineSettingItem;
.source "InLineSettingRestore.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected setTitle(Lcom/moblynx/cameraics/ListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 35
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/InLineSettingRestore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/InLineSettingRestore;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method protected updateView()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
