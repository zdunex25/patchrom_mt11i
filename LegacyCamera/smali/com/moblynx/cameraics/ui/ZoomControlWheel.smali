.class public Lcom/moblynx/cameraics/ui/ZoomControlWheel;
.super Lcom/moblynx/cameraics/ui/ZoomControl;
.source "ZoomControlWheel.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BUFFER_RADIANS:D = 0.0

.field private static final DEFAULT_SLIDER_POSITION:I = 0xf9

.field private static final EDGE_STROKE_WIDTH:F = 6.0f

.field private static final HIGHLIGHT_DEGREES:I = 0x1e

.field private static final HIGHLIGHT_WIDTH:I = 0x4

.field private static final MAX_SLIDER_ANGLE:I = 0xf9

.field private static final MIN_SLIDER_ANGLE:I = 0x6f

#the value of this static final field might be set in the static constructor
.field private static final SLIDER_RANGE:D = 0.0

.field private static final TAG:Ljava/lang/String; = "ZoomControlWheel"

.field private static final TRAIL_WIDTH:I = 0x2

.field private static final ZOOM_IN_ICON_DEGREES:I = 0x60

.field private static final ZOOM_OUT_ICON_DEGREES:I = 0x108


# instance fields
.field private final HIGHLIGHT_COLOR:I

.field private final TRAIL_COLOR:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCenterX:I

.field private mCenterY:I

.field private mRotateAngle:D

.field private mShutterButtonRadius:D

.field private mSliderRadians:D

.field private mStrokeWidth:I

.field private mWheelRadius:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-wide/high16 v0, 0x402e

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->BUFFER_RADIANS:D

    .line 51
    const-wide v0, 0x4061400000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 50
    sput-wide v0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->SLIDER_RANGE:D

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/ui/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const-wide v1, 0x406f200000000000L

    iput-wide v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mSliderRadians:D

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->setWillNotDraw(Z)V

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->HIGHLIGHT_COLOR:I

    .line 79
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->TRAIL_COLOR:I

    .line 81
    const-wide v1, 0x4052800000000000L

    iput-wide v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mShutterButtonRadius:D

    .line 82
    const/16 v1, 0x57

    invoke-static {v1}, Lcom/moblynx/cameraics/Util;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mStrokeWidth:I

    .line 83
    iget-wide v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mShutterButtonRadius:D

    iget v3, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mStrokeWidth:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mWheelRadius:D

    .line 84
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;IIDII)V
    .locals 6
    .parameter "canvas"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "radius"
    .parameter "color"
    .parameter "width"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterX:I

    int-to-double v1, v1

    sub-double/2addr v1, p4

    double-to-float v1, v1

    iget v2, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterY:I

    int-to-double v2, v2

    sub-double/2addr v2, p4

    double-to-float v2, v2

    .line 163
    iget v3, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterX:I

    int-to-double v3, v3

    add-double/2addr v3, p4

    double-to-float v3, v3

    iget v4, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterY:I

    int-to-double v4, v4

    add-double/2addr v4, p4

    double-to-float v4, v4

    .line 162
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 166
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 168
    return-void
.end method

.method private getSliderDrawAngle(D)D
    .locals 6
    .parameter "sliderAngle"

    .prologue
    const-wide v4, 0x406f200000000000L

    const-wide v2, 0x405bc00000000000L

    .line 135
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 136
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 140
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 137
    .restart local p1
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 138
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    goto :goto_0
.end method

.method private getZoomIndexAngle()D
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mZoomMax:I

    if-nez v0, :cond_0

    const-wide v0, 0x400921fb54442d18L

    .line 156
    :goto_0
    return-wide v0

    .line 157
    :cond_0
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mZoomIndex:I

    mul-int/lit16 v0, v0, 0x8a

    iget v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mZoomMax:I

    div-int/2addr v0, v1

    .line 156
    rsub-int v0, v0, 0xf9

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private layoutIcon(Landroid/view/View;D)V
    .locals 9
    .parameter "view"
    .parameter "radian"

    .prologue
    .line 125
    iget-wide v4, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mRotateAngle:D

    add-double/2addr p2, v4

    .line 126
    iget v4, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterX:I

    iget-wide v5, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mWheelRadius:D

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int v2, v4, v5

    .line 127
    .local v2, x:I
    iget v4, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterY:I

    iget-wide v5, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mWheelRadius:D

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sub-int v3, v4, v5

    .line 128
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 129
    .local v1, width:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 130
    .local v0, height:I
    div-int/lit8 v4, v1, 0x2

    sub-int v4, v2, v4

    div-int/lit8 v5, v0, 0x2

    sub-int v5, v3, v5

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v2

    .line 131
    div-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    .line 130
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 132
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    .line 113
    :goto_0
    return v9

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 91
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-double v3, v9

    .line 92
    .local v3, dx:D
    iget v9, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterY:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v5, v9

    .line 93
    .local v5, dy:D
    mul-double v9, v3, v3

    mul-double v11, v5, v5

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 95
    .local v7, radius:D
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 96
    .local v1, angle:D
    const-wide/16 v9, 0x0

    cmpg-double v9, v1, v9

    if-gez v9, :cond_2

    const-wide v9, 0x401921fb54442d18L

    add-double/2addr v1, v9

    .line 97
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->getSliderDrawAngle(D)D

    move-result-wide v9

    iput-wide v9, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mSliderRadians:D

    .line 102
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->closeZoomControl()V

    goto :goto_1

    .line 109
    :pswitch_1
    const-wide v9, 0x406f200000000000L

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 110
    iget-wide v11, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mSliderRadians:D

    sub-double/2addr v9, v11

    sget-wide v11, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->SLIDER_RANGE:D

    div-double/2addr v9, v11

    .line 109
    invoke-virtual {p0, v9, v10}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->performZoom(D)V

    .line 111
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->requestLayout()V

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mRotateAngle:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int v0, v0

    rsub-int v2, v0, -0xf9

    .line 174
    .local v2, startAngle:I
    const/16 v3, 0x8a

    .line 175
    .local v3, radians:I
    add-int v0, v2, v3

    if-lez v0, :cond_0

    neg-int v3, v2

    .line 177
    :cond_0
    iget-wide v4, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mWheelRadius:D

    iget v6, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->TRAIL_COLOR:I

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    .line 176
    invoke-direct/range {v0 .. v7}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->drawArc(Landroid/graphics/Canvas;IIDII)V

    .line 178
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ui/ZoomControl;->onDraw(Landroid/graphics/Canvas;)V

    .line 179
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 146
    sub-int v0, p4, p2

    .line 147
    const/16 v1, 0x5d

    .line 146
    invoke-static {v1}, Lcom/moblynx/cameraics/Util;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterX:I

    .line 148
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mCenterY:I

    .line 149
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mZoomIn:Landroid/widget/ImageView;

    const-wide/high16 v1, 0x4058

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->layoutIcon(Landroid/view/View;D)V

    .line 150
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mZoomOut:Landroid/widget/ImageView;

    const-wide v1, 0x4070800000000000L

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->layoutIcon(Landroid/view/View;D)V

    .line 151
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mZoomSlider:Landroid/widget/ImageView;

    iget-wide v1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mSliderRadians:D

    invoke-direct {p0, v1, v2}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->getSliderDrawAngle(D)D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->layoutIcon(Landroid/view/View;D)V

    .line 152
    return-void
.end method

.method public rotate(D)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mRotateAngle:D

    .line 183
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->requestLayout()V

    .line 184
    return-void
.end method

.method public startZoomControl()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->startZoomControl()V

    .line 119
    const-wide v0, 0x406f200000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->mSliderRadians:D

    .line 120
    return-void
.end method
