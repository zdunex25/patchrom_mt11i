.class public Lcom/android/cameraics/ui/IndicatorControlBar;
.super Lcom/android/cameraics/ui/IndicatorControl;
.source "IndicatorControlBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ICON_SPACING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IndicatorControlBar"


# instance fields
.field private mSecondLevelIcon:Landroid/widget/ImageView;

.field private mZoomControl:Lcom/android/cameraics/ui/ZoomControlBar;

.field private mZoomIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/cameraics/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/cameraics/ui/IndicatorControlBar;->ICON_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/cameraics/ui/IndicatorControl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mZoomControl:Lcom/android/cameraics/ui/ZoomControlBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mZoomControl:Lcom/android/cameraics/ui/ZoomControlBar;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/ZoomControlBar;->setEnabled(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/android/cameraics/PreferenceGroup;Z)V
    .locals 2
    .parameter "context"
    .parameter "group"
    .parameter "zoomSupported"

    .prologue
    .line 56
    invoke-virtual {p0, p2}, Lcom/android/cameraics/ui/IndicatorControlBar;->setPreferenceGroup(Lcom/android/cameraics/PreferenceGroup;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControlBar;->initializeCameraPicker()V

    .line 60
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/CameraPicker;->setBackgroundResource(I)V

    .line 65
    :cond_0
    if-eqz p3, :cond_1

    .line 66
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/IndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/ZoomControlBar;

    iput-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mZoomControl:Lcom/android/cameraics/ui/ZoomControlBar;

    .line 67
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mZoomControl:Lcom/android/cameraics/ui/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/ZoomControlBar;->setVisibility(I)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControlBar;->requestLayout()V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControlBar;->dismissSettingPopup()Z

    .line 82
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mOnIndicatorEventListener:Lcom/android/cameraics/ui/OnIndicatorEventListener;

    .line 83
    const/4 v1, 0x0

    .line 82
    invoke-interface {v0, v1}, Lcom/android/cameraics/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    .line 50
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/IndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControlBar;->getChildCount()I

    move-result v0

    .line 90
    .local v0, count:I
    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/cameraics/ui/IndicatorControlBar;->getPaddingLeft()I

    move-result v2

    .line 95
    .local v2, padding:I
    sub-int v4, p4, p2

    .line 96
    .local v4, width:I
    sub-int v1, p5, p3

    .line 99
    .local v1, height:I
    move v3, v1

    .line 101
    .local v3, size:I
    iget-object v5, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    add-int v6, v2, v3

    invoke-virtual {v5, v2, v8, v6, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 104
    iget-object v5, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mZoomControl:Lcom/android/cameraics/ui/ZoomControlBar;

    if-eqz v5, :cond_2

    .line 105
    iget-object v5, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mZoomControl:Lcom/android/cameraics/ui/ZoomControlBar;

    add-int v6, v2, v3

    sub-int v7, v4, v2

    sub-int/2addr v7, v3

    invoke-virtual {v5, v6, v8, v7, v3}, Lcom/android/cameraics/ui/ZoomControlBar;->layout(IIII)V

    .line 108
    :cond_2
    iget-object v5, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    if-eqz v5, :cond_0

    .line 109
    iget-object v5, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mCameraPicker:Lcom/android/cameraics/ui/CameraPicker;

    sub-int v6, v4, v2

    sub-int/2addr v6, v3

    sub-int v7, v4, v2

    invoke-virtual {v5, v6, v8, v7, v3}, Lcom/android/cameraics/ui/CameraPicker;->layout(IIII)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/cameraics/ui/IndicatorControl;->setEnabled(Z)V

    .line 116
    iget v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlBar;->mSecondLevelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 123
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/cameraics/ui/IndicatorControlBar;->enableZoom(Z)V

    goto :goto_1
.end method
