.class public Lcom/android/cameraics/ui/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# instance fields
.field private final DISABLED_ALPHA:F

.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cameraics/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/cameraics/ui/TwoStateImageView;->DISABLED_ALPHA:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cameraics/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 34
    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/cameraics/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 54
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 43
    iget-boolean v0, p0, Lcom/android/cameraics/ui/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 44
    if-eqz p1, :cond_1

    .line 45
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/TwoStateImageView;->setAlpha(F)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/TwoStateImageView;->setAlpha(F)V

    goto :goto_0
.end method
