.class public Lcom/moblynx/cameraics/ui/OneRowGridView;
.super Landroid/widget/GridView;
.source "OneRowGridView.java"


# instance fields
.field private mInternalRequestedColumnWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 40
    iget v2, p0, Lcom/moblynx/cameraics/ui/OneRowGridView;->mInternalRequestedColumnWidth:I

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/OneRowGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 42
    .local v0, n:I
    :goto_0
    iget v2, p0, Lcom/moblynx/cameraics/ui/OneRowGridView;->mInternalRequestedColumnWidth:I

    mul-int v1, v2, v0

    .line 43
    .local v1, size:I
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 45
    .end local v0           #n:I
    .end local v1           #size:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 46
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/OneRowGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 32
    iget v0, p0, Lcom/moblynx/cameraics/ui/OneRowGridView;->mInternalRequestedColumnWidth:I

    if-eq v0, p1, :cond_0

    .line 33
    iput p1, p0, Lcom/moblynx/cameraics/ui/OneRowGridView;->mInternalRequestedColumnWidth:I

    .line 34
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/OneRowGridView;->requestLayout()V

    .line 36
    :cond_0
    return-void
.end method
