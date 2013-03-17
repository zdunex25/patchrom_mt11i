.class public Lcom/moblynx/cameraics/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-wide v0, 0x3ff5555555555555L

    invoke-virtual {p0, v0, v1}, Lcom/moblynx/cameraics/PreviewFrameLayout;->setAspectRatio(D)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v12, 0x4000

    const-wide/high16 v10, 0x3fe0

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 65
    .local v2, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 73
    .local v1, previewHeight:I
    invoke-virtual {p0}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 74
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 78
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 79
    sub-int/2addr v1, v3

    .line 80
    int-to-double v4, v2

    int-to-double v6, v1

    iget-wide v8, p0, Lcom/moblynx/cameraics/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 81
    int-to-double v4, v1

    iget-wide v6, p0, Lcom/moblynx/cameraics/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v2, v4

    .line 87
    :goto_0
    add-int/2addr v2, v0

    .line 88
    add-int/2addr v1, v3

    .line 91
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 92
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 91
    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 93
    return-void

    .line 83
    :cond_0
    int-to-double v4, v2

    iget-wide v6, p0, Lcom/moblynx/cameraics/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v1, v4

    goto :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/moblynx/cameraics/PreviewFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 47
    const/4 v1, 0x1

    .line 46
    if-ne v0, v1, :cond_1

    .line 48
    const-wide/high16 v0, 0x3ff0

    div-double p1, v0, p1

    .line 51
    :cond_1
    iget-wide v0, p0, Lcom/moblynx/cameraics/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_2

    .line 52
    iput-wide p1, p0, Lcom/moblynx/cameraics/PreviewFrameLayout;->mAspectRatio:D

    .line 53
    invoke-virtual {p0}, Lcom/moblynx/cameraics/PreviewFrameLayout;->requestLayout()V

    .line 55
    :cond_2
    return-void
.end method

.method public showBorder(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 58
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
