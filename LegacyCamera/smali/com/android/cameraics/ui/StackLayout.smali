.class public Lcom/android/cameraics/ui/StackLayout;
.super Landroid/view/ViewGroup;
.source "StackLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StackLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 52
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 58
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/cameraics/ui/StackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 55
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/cameraics/ui/StackLayout;->getChildCount()I

    move-result v1

    .line 37
    .local v1, count:I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/cameraics/ui/StackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/cameraics/ui/StackLayout;->measureChild(Landroid/view/View;II)V

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 42
    .local v3, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 44
    .local v2, height:I
    invoke-static {v3, p1}, Lcom/android/cameraics/ui/StackLayout;->resolveSize(II)I

    move-result v4

    .line 45
    invoke-static {v2, p2}, Lcom/android/cameraics/ui/StackLayout;->resolveSize(II)I

    move-result v5

    .line 44
    invoke-virtual {p0, v4, v5}, Lcom/android/cameraics/ui/StackLayout;->setMeasuredDimension(II)V

    .line 46
    return-void
.end method
