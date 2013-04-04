.class public Lcom/android/cameraics/ui/ControlPanelLayout;
.super Landroid/widget/RelativeLayout;
.source "ControlPanelLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ControlPanelLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 14
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 44
    .local v7, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 45
    .local v0, heightSpecSize:I
    const/4 v3, 0x0

    .line 48
    .local v3, measuredSize:I
    invoke-virtual {p0}, Lcom/android/cameraics/ui/ControlPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v1, 0x1

    .line 51
    .local v1, isLandscape:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 53
    .local v4, mode:I
    move v2, v7

    .line 54
    .local v2, longSideSize:I
    move v5, v0

    .line 55
    .local v5, shortSideSize:I
    move v6, v7

    .line 63
    .local v6, specSize:I
    :goto_1
    if-lez v7, :cond_3

    if-lez v0, :cond_3

    const/high16 v8, -0x8000

    if-ne v4, v8, :cond_3

    .line 66
    int-to-double v8, v2

    int-to-double v10, v5

    const-wide/high16 v12, 0x4008

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4010

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v3, v8

    .line 69
    invoke-static {v2, v5, v3}, Landroid/support/custom/NewFeatures;->checkMinControlPanelSize(III)I

    move-result v3

    .line 76
    :goto_2
    const/high16 v8, -0x8000

    if-ne v4, v8, :cond_0

    if-le v3, v6, :cond_0

    .line 77
    move v3, v6

    .line 80
    :cond_0
    if-eqz v1, :cond_4

    .line 81
    const/high16 v8, 0x4000

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 86
    :goto_3
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 87
    return-void

    .line 48
    .end local v1           #isLandscape:Z
    .end local v2           #longSideSize:I
    .end local v4           #mode:I
    .end local v5           #shortSideSize:I
    .end local v6           #specSize:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    .restart local v1       #isLandscape:Z
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 58
    .restart local v4       #mode:I
    move v2, v0

    .line 59
    .restart local v2       #longSideSize:I
    move v5, v7

    .line 60
    .restart local v5       #shortSideSize:I
    move v6, v0

    .restart local v6       #specSize:I
    goto :goto_1

    .line 72
    :cond_3
    const-string v8, "ControlPanelLayout"

    const-string v9, "layout_xxx of ControlPanelLayout should be wrap_content"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 83
    :cond_4
    const/high16 v8, 0x4000

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3
.end method
