.class public Lcom/moblynx/cameraics/ui/RightAlignedHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "RightAlignedHorizontalScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 37
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0, v2}, Lcom/moblynx/cameraics/ui/RightAlignedHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/moblynx/cameraics/ui/RightAlignedHorizontalScrollView;->scrollTo(II)V

    .line 43
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method
