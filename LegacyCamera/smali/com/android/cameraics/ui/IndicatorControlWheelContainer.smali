.class public Lcom/android/cameraics/ui/IndicatorControlWheelContainer;
.super Lcom/android/cameraics/ui/IndicatorControlContainer;
.source "IndicatorControlWheelContainer.java"


# static fields
.field public static final FULL_WHEEL_RADIUS:I = 0x5d

.field public static final SHUTTER_BUTTON_RADIUS:I = 0x4a

.field public static final STROKE_WIDTH:I = 0x57

.field private static final TAG:Ljava/lang/String; = "IndicatorControlWheelContainer"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

.field private mShutterButton:Landroid/view/View;

.field private mShutterButtonRadius:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/ui/IndicatorControlContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method public dismissSecondLevelIndicator()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/IndicatorControlWheel;->dismissSecondLevelIndicator()V

    .line 200
    return-void
.end method

.method public dismissSettingPopup()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v7

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 74
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mCenterX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-double v1, v9

    .line 75
    .local v1, dx:D
    iget v9, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mCenterY:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v3, v9

    .line 76
    .local v3, dy:D
    mul-double v9, v1, v1

    mul-double v11, v3, v3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 79
    .local v5, radius:D
    iget-wide v9, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButtonRadius:D

    cmpg-double v9, v5, v9

    if-gtz v9, :cond_4

    .line 80
    iget-object v9, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v9}, Lcom/android/cameraics/ui/IndicatorControlWheel;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 81
    iget-object v9, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v9}, Lcom/android/cameraics/ui/IndicatorControlWheel;->onTouchOutBound()V

    .line 83
    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v8, :cond_0

    .line 84
    :cond_3
    iget-object v7, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 89
    :cond_4
    iget-object v7, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 91
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 92
    iget-object v7, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 93
    goto :goto_0

    .line 96
    :cond_5
    iget-object v7, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v7, p1}, Lcom/android/cameraics/ui/IndicatorControlWheel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/IndicatorControlWheel;->enableZoom(Z)V

    .line 190
    return-void
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/IndicatorControlWheel;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/cameraics/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "group"
    .parameter "isZoomSupported"
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/cameraics/ui/IndicatorControlWheel;->initialize(Landroid/content/Context;Lcom/android/cameraics/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    .line 53
    const/16 v0, 0x4a

    invoke-static {v0}, Lcom/android/cameraics/Util;->dpToPixel(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButtonRadius:D

    .line 56
    const v0, 0x7f0d000b

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/IndicatorControlWheel;

    iput-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    .line 57
    return-void
.end method

.method public onIndicatorEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 66
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

    .line 104
    iget-object v2, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 105
    .local v1, shutterButtonWidth:I
    iget-object v2, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 106
    .local v0, shutterButtonHeight:I
    sub-int v2, p4, p2

    const/16 v3, 0x5d

    invoke-static {v3}, Lcom/android/cameraics/Util;->dpToPixel(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mCenterX:I

    .line 107
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mCenterY:I

    .line 108
    iget-object v2, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    .line 109
    iget v4, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mCenterY:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    .line 110
    sub-int v5, p4, p2

    .line 111
    iget v6, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mCenterY:I

    add-int/2addr v6, v0

    div-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    .line 108
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 113
    iget-object v2, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v2, v8, v8, v3, v4}, Lcom/android/cameraics/ui/IndicatorControlWheel;->layout(IIII)V

    .line 114
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v7, 0x0

    const/high16 v8, -0x8000

    .line 119
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 120
    .local v2, freeSpec:I
    iget-object v7, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7, v2, v2}, Landroid/view/View;->measure(II)V

    .line 121
    iget-object v7, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v7, v2, v2}, Lcom/android/cameraics/ui/IndicatorControlWheel;->measure(II)V

    .line 124
    iget-object v7, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/lit8 v1, v7, 0x10

    .line 126
    .local v1, desiredWidth:I
    iget-object v7, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/lit8 v0, v7, 0x10

    .line 128
    .local v0, desiredHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 129
    .local v6, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 131
    .local v3, heightMode:I
    if-nez v6, :cond_0

    .line 132
    move v5, v1

    .line 138
    .local v5, measuredWidth:I
    :goto_0
    if-nez v3, :cond_2

    .line 139
    move v4, v0

    .line 145
    .local v4, measuredHeight:I
    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->setMeasuredDimension(II)V

    .line 146
    return-void

    .line 133
    .end local v4           #measuredHeight:I
    .end local v5           #measuredWidth:I
    :cond_0
    if-ne v6, v8, :cond_1

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 135
    .restart local v5       #measuredWidth:I
    goto :goto_0

    .line 136
    .end local v5           #measuredWidth:I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .restart local v5       #measuredWidth:I
    goto :goto_0

    .line 140
    :cond_2
    if-ne v3, v8, :cond_3

    .line 141
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 142
    .restart local v4       #measuredHeight:I
    goto :goto_1

    .line 143
    .end local v4           #measuredHeight:I
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .restart local v4       #measuredHeight:I
    goto :goto_1
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/IndicatorControlWheel;->overrideSettings([Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/IndicatorControlWheel;->reloadPreferences()V

    .line 156
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/IndicatorControlWheel;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method public setListener(Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/IndicatorControlWheel;->setListener(Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;)V

    .line 151
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/cameraics/ui/IndicatorControlWheel;->setOrientation(I)V

    .line 171
    return-void
.end method

.method public startTimeLapseAnimation(IJ)V
    .locals 1
    .parameter "timeLapseInterval"
    .parameter "startTime"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/cameraics/ui/IndicatorControlWheel;->startTimeLapseAnimation(IJ)V

    .line 176
    return-void
.end method

.method public stopTimeLapseAnimation()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/cameraics/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/IndicatorControlWheel;->stopTimeLapseAnimation()V

    .line 180
    return-void
.end method
