.class public Lcom/moblynx/cameraics/ui/IndicatorControlWheel;
.super Lcom/moblynx/cameraics/ui/IndicatorControl;
.source "IndicatorControlWheel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATION_TIME:I = 0x12c

.field private static final CLOSE_ICON_DEFAULT_DEGREES:I = 0x13b

.field private static final EDGE_STROKE_WIDTH:F = 6.0f

.field private static final FIRST_LEVEL_END_DEGREES:I = 0x11e

.field private static final FIRST_LEVEL_SECTOR_DEGREES:I = 0x2d

.field private static final FIRST_LEVEL_START_DEGREES:I = 0x4a

.field private static final HIGHLIGHT_DEGREES:I = 0x1e

#the value of this static final field might be set in the static constructor
.field private static final HIGHLIGHT_RADIANS:D = 0.0

.field public static final HIGHLIGHT_WIDTH:I = 0x4

.field private static final MAX_ZOOM_CONTROL_DEGREES:I = 0x108

.field private static final SECOND_LEVEL_END_DEGREES:I = 0x12c

.field private static final SECOND_LEVEL_START_DEGREES:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "IndicatorControlWheel"

.field private static final TIME_LAPSE_ARC_WIDTH:I = 0x6


# instance fields
.field private final HIGHLIGHT_COLOR:I

.field private final HIGHLIGHT_FAN_COLOR:I

.field private final TIME_LAPSE_ARC_COLOR:I

.field private mAnimationStartTime:J

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCenterX:I

.field private mCenterY:I

.field private mChildRadians:[D

.field private mCloseIcon:Landroid/widget/ImageView;

.field private mCurrentLevel:I

.field private mEndVisibleRadians:[D

.field private mHandler:Landroid/os/Handler;

.field private mInAnimation:Z

.field private mInitialized:Z

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mNumberOfFrames:J

.field private mPressedIndex:I

.field private mRecordingStartTime:J

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSecondLevelIcon:Landroid/widget/ImageView;

.field private mSecondLevelStartIndex:I

.field private mSectorRadians:[D

.field private mShutterButtonRadius:D

.field private mStartVisibleRadians:[D

.field private mStrokeWidth:I

.field private mTimeLapseInterval:I

.field private mTouchSectorRadians:[D

.field private mWheelRadius:D

.field private mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-wide/high16 v0, 0x403e

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput v4, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 90
    iput-wide v5, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mRecordingStartTime:J

    .line 91
    iput-wide v5, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 101
    iput-boolean v3, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 102
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v1, Lcom/moblynx/cameraics/ui/IndicatorControlWheel$1;

    invoke-direct {v1, p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel$1;-><init>(Lcom/moblynx/cameraics/ui/IndicatorControlWheel;)V

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mRunnable:Ljava/lang/Runnable;

    .line 110
    iput v3, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    .line 111
    iput v4, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 112
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    .line 113
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    .line 114
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSectorRadians:[D

    .line 115
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_COLOR:I

    .line 124
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_FAN_COLOR:I

    .line 125
    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->TIME_LAPSE_ARC_COLOR:I

    .line 127
    invoke-virtual {p0, v3}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->setWillNotDraw(Z)V

    .line 129
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 130
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    .line 134
    return-void
.end method

.method private addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;
    .locals 1
    .parameter "context"
    .parameter "resourceId"
    .parameter "rotatable"

    .prologue
    .line 205
    if-eqz p3, :cond_0

    .line 206
    new-instance v0, Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/moblynx/cameraics/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, view:Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->addView(Landroid/view/View;)V

    .line 213
    return-object v0

    .line 208
    .end local v0           #view:Landroid/widget/ImageView;
    :cond_0
    new-instance v0, Lcom/moblynx/cameraics/ui/TwoStateImageView;

    invoke-direct {v0, p1}, Lcom/moblynx/cameraics/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private changeIndicatorsLevel()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 147
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mAnimationStartTime:J

    .line 150
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->requestLayout()V

    .line 151
    return-void
.end method

.method private getChildCountByLevel(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 138
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    sub-int/2addr v0, v1

    .line 141
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    goto :goto_0
.end method

.method private getSelectedIndicatorIndex()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 549
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 555
    iget v4, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    if-eq v4, v3, :cond_0

    .line 556
    iget v4, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    invoke-virtual {p0, v4}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 557
    .local v2, v:Landroid/view/View;
    instance-of v4, v2, Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 558
    iget v3, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 561
    .end local v2           #v:Landroid/view/View;
    :cond_0
    :goto_1
    return v3

    .line 550
    :cond_1
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;

    .line 551
    .local v0, b:Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/moblynx/cameraics/ui/AbstractSettingPopup;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 552
    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->indexOfChild(Landroid/view/View;)I

    move-result v3

    goto :goto_1

    .line 549
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getTouchIndicatorIndex(D)I
    .locals 20
    .parameter "delta"

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInAnimation:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    const/4 v12, -0x1

    .line 350
    :cond_0
    :goto_0
    return v12

    .line 268
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildCountByLevel(I)I

    move-result v3

    .line 269
    .local v3, count:I
    if-nez v3, :cond_2

    const/4 v12, -0x1

    goto :goto_0

    .line 270
    :cond_2
    add-int/lit8 v11, v3, -0x1

    .line 271
    .local v11, sectors:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_4

    const/4 v12, 0x0

    .line 273
    .local v12, startIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v17, v0

    aget-wide v7, v16, v17

    .line 276
    .local v7, halfTouchSectorRadians:D
    const-wide/16 v13, 0x0

    .line 277
    .local v13, startRadians:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_7

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 281
    add-int/lit8 v12, v12, 0x1

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCameraPicker:Lcom/moblynx/cameraics/ui/CameraPicker;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 283
    const-wide v16, 0x4052800000000000L

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    add-double v13, v16, v7

    .line 291
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, -0x1

    .line 297
    .local v4, endIndex:I
    :goto_3
    const-wide/16 v16, 0x0

    cmpg-double v16, v13, v16

    if-gez v16, :cond_3

    const-wide v16, 0x401921fb54442d18L

    add-double v13, v13, v16

    .line 299
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v4

    add-double v5, v16, v7

    .line 302
    .local v5, endRadians:D
    cmpl-double v16, v13, v5

    if-lez v16, :cond_9

    .line 304
    cmpl-double v16, p1, v13

    if-gez v16, :cond_8

    cmpg-double v16, p1, v5

    if-lez v16, :cond_8

    const/4 v15, 0x0

    .line 309
    .local v15, touchInRange:Z
    :goto_4
    if-eqz v15, :cond_11

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 314
    const/16 v17, 0x2

    .line 313
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 315
    const/4 v10, 0x0

    .line 321
    .local v10, offset:I
    :goto_5
    const/4 v9, 0x0

    .line 322
    .local v9, index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide v16

    sub-double v16, p1, v16

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSectorRadians:[D

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v19, v0

    aget-wide v18, v18, v19

    .line 323
    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v9, v0

    .line 326
    if-le v9, v11, :cond_c

    add-int/2addr v12, v11

    goto/16 :goto_0

    .line 271
    .end local v4           #endIndex:I
    .end local v5           #endRadians:D
    .end local v7           #halfTouchSectorRadians:D
    .end local v9           #index:I
    .end local v10           #offset:I
    .end local v12           #startIndex:I
    .end local v13           #startRadians:D
    .end local v15           #touchInRange:Z
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    goto/16 :goto_1

    .line 286
    .restart local v7       #halfTouchSectorRadians:D
    .restart local v12       #startIndex:I
    .restart local v13       #startRadians:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    sub-double v13, v16, v7

    .line 288
    goto/16 :goto_2

    .line 289
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    sub-double v13, v16, v7

    goto/16 :goto_2

    .line 293
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildCount()I

    move-result v16

    add-int/lit8 v4, v16, -0x1

    .line 294
    .restart local v4       #endIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    sub-double v13, v16, v7

    goto/16 :goto_3

    .line 304
    .restart local v5       #endRadians:D
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 306
    :cond_9
    cmpl-double v16, p1, v13

    if-ltz v16, :cond_a

    cmpg-double v16, p1, v5

    if-gtz v16, :cond_a

    const/4 v15, 0x1

    .restart local v15       #touchInRange:Z
    :goto_6
    goto/16 :goto_4

    .end local v15           #touchInRange:Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_6

    .line 317
    .restart local v15       #touchInRange:Z
    :cond_b
    const/16 v10, 0x5a

    .line 318
    .restart local v10       #offset:I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v10}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide p1

    goto/16 :goto_5

    .line 328
    .restart local v9       #index:I
    :cond_c
    if-ltz v9, :cond_0

    .line 330
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCameraPicker:Lcom/moblynx/cameraics/ui/CameraPicker;

    move-object/from16 v16, v0

    if-nez v16, :cond_e

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide v16

    .line 332
    sub-double v16, v16, v7

    cmpl-double v16, p1, v16

    if-ltz v16, :cond_10

    .line 333
    add-int/2addr v12, v9

    goto/16 :goto_0

    .line 336
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    add-int v17, v12, v9

    aget-wide v16, v16, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide v16

    .line 337
    add-double v16, v16, v7

    cmpg-double v16, p1, v16

    if-gtz v16, :cond_f

    .line 338
    add-int/2addr v12, v9

    goto/16 :goto_0

    .line 340
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    move-object/from16 v16, v0

    add-int v17, v12, v9

    add-int/lit8 v17, v17, 0x1

    aget-wide v16, v16, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->rebase(DI)D

    move-result-wide v16

    .line 341
    sub-double v16, v16, v7

    cmpl-double v16, p1, v16

    if-ltz v16, :cond_10

    .line 342
    add-int v16, v12, v9

    add-int/lit8 v12, v16, 0x1

    goto/16 :goto_0

    .line 348
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    move/from16 v16, v0

    if-nez v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 350
    .end local v9           #index:I
    .end local v10           #offset:I
    :cond_11
    const/4 v12, -0x1

    goto/16 :goto_0
.end method

.method private injectMotionEvent(ILandroid/view/MotionEvent;I)V
    .locals 1
    .parameter "viewIndex"
    .parameter "event"
    .parameter "action"

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, v:Landroid/view/View;
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 372
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 373
    return-void
.end method

.method private presetFirstLevelChildRadians()V
    .locals 10

    .prologue
    const-wide v8, 0x4071e00000000000L

    const-wide v6, 0x4052800000000000L

    const/4 v5, 0x0

    .line 498
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 499
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    sget-wide v3, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    aput-wide v3, v2, v5

    .line 500
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v5

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, startIndex:I
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .local v1, startIndex:I
    const-wide v3, 0x4070800000000000L

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    move v0, v1

    .line 507
    .end local v1           #startIndex:I
    .restart local v0       #startIndex:I
    :cond_0
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCameraPicker:Lcom/moblynx/cameraics/ui/CameraPicker;

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .restart local v1       #startIndex:I
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    move v0, v1

    .line 510
    .end local v1           #startIndex:I
    .restart local v0       #startIndex:I
    :cond_1
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int/lit8 v1, v0, 0x1

    .end local v0           #startIndex:I
    .restart local v1       #startIndex:I
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 511
    return-void
.end method

.method private presetSecondLevelChildRadians()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    .line 514
    invoke-direct {p0, v8}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildCountByLevel(I)I

    move-result v0

    .line 515
    .local v0, count:I
    if-gt v0, v8, :cond_0

    move v6, v8

    .line 517
    .local v6, sectors:I
    :goto_0
    const/16 v9, 0xf0

    div-int/2addr v9, v6

    int-to-double v4, v9

    .line 518
    .local v4, sectorDegrees:D
    iget-object v9, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSectorRadians:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 520
    const-wide v1, 0x4073b00000000000L

    .line 521
    .local v1, degrees:D
    iget-object v9, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    const-wide/high16 v10, 0x404e

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 523
    iget v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 524
    .local v7, startIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 530
    iget-object v9, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTouchSectorRadians:[D

    .line 531
    sget-wide v10, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 530
    aput-wide v10, v9, v8

    .line 533
    iget-object v9, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    const-wide v10, 0x4072c00000000000L

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 534
    return-void

    .line 515
    .end local v1           #degrees:D
    .end local v3           #i:I
    .end local v4           #sectorDegrees:D
    .end local v6           #sectors:I
    .end local v7           #startIndex:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    goto :goto_0

    .line 525
    .restart local v1       #degrees:D
    .restart local v3       #i:I
    .restart local v4       #sectorDegrees:D
    .restart local v6       #sectors:I
    .restart local v7       #startIndex:I
    :cond_1
    iget-object v9, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    add-int v10, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 526
    add-double/2addr v1, v4

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private rebase(DI)D
    .locals 4
    .parameter "oldAngle"
    .parameter "offset"

    .prologue
    .line 364
    int-to-double v0, p3

    add-double/2addr v0, p1

    const-wide v2, 0x401921fb54442d18L

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private rotateWheel()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 428
    const/16 v6, 0xff

    .line 429
    .local v6, totalDegrees:I
    iget v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_3

    const/16 v5, 0x13b

    .line 431
    .local v5, startAngle:I
    :goto_0
    iget v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_0

    neg-int v6, v6

    .line 433
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mAnimationStartTime:J

    sub-long/2addr v9, v11

    long-to-int v0, v9

    .line 434
    .local v0, elapsedTime:I
    const/16 v7, 0x12c

    if-lt v0, v7, :cond_1

    .line 435
    const/16 v0, 0x12c

    .line 436
    iget v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    iput v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    .line 437
    iput-boolean v8, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInAnimation:Z

    .line 440
    :cond_1
    mul-int v7, v6, v0

    div-int/lit16 v7, v7, 0x12c

    add-int v1, v5, v7

    .line 441
    .local v1, expectedAngle:I
    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 442
    iget-object v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    iget v11, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    aget-wide v11, v7, v11

    .line 441
    sub-double v3, v9, v11

    .line 443
    .local v3, increment:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildCount()I

    move-result v7

    if-lt v2, v7, :cond_5

    .line 445
    iget-object v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    if-eqz v7, :cond_2

    .line 446
    iget-object v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    iget-object v9, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v8, v9, v8

    .line 447
    const-wide v10, 0x4070800000000000L

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 446
    invoke-virtual {v7, v8, v9}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->rotate(D)V

    .line 449
    :cond_2
    return-void

    .line 430
    .end local v0           #elapsedTime:I
    .end local v1           #expectedAngle:I
    .end local v2           #i:I
    .end local v3           #increment:D
    .end local v5           #startAngle:I
    :cond_3
    const/16 v5, 0x3c

    goto :goto_0

    .restart local v0       #elapsedTime:I
    .restart local v5       #startAngle:I
    :cond_4
    move v7, v8

    .line 436
    goto :goto_1

    .line 443
    .restart local v1       #expectedAngle:I
    .restart local v2       #i:I
    .restart local v3       #increment:D
    :cond_5
    iget-object v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v9, v7, v2

    add-double/2addr v9, v3

    aput-wide v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public dismissSecondLevelIndicator()V
    .locals 2

    .prologue
    .line 663
    iget v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->changeIndicatorsLevel()V

    .line 666
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 424
    :goto_0
    return v10

    .line 378
    :cond_0
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 381
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-double v3, v10

    .line 382
    .local v3, dx:D
    iget v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v5, v10

    .line 383
    .local v5, dy:D
    mul-double v10, v3, v3

    mul-double v12, v5, v5

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 386
    .local v8, radius:D
    iget-wide v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mWheelRadius:D

    iget v12, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v12, v12

    add-double/2addr v10, v12

    cmpg-double v10, v8, v10

    if-gtz v10, :cond_a

    iget-wide v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    cmpl-double v10, v8, v10

    if-lez v10, :cond_a

    .line 387
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 388
    .local v1, delta:D
    const-wide/16 v10, 0x0

    cmpg-double v10, v1, v10

    if-gez v10, :cond_1

    const-wide v10, 0x401921fb54442d18L

    add-double/2addr v1, v10

    .line 389
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getTouchIndicatorIndex(D)I

    move-result v7

    .line 391
    .local v7, index:I
    iget-object v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    if-eqz v10, :cond_2

    if-nez v7, :cond_2

    .line 392
    iget-object v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    invoke-virtual {v10, p1}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 395
    :cond_2
    iget v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    if-ne v7, v10, :cond_3

    if-nez v0, :cond_5

    .line 396
    :cond_3
    iget v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 397
    iget v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    const/4 v11, 0x3

    invoke-direct {p0, v10, p1, v11}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 402
    :cond_4
    :goto_1
    const/4 v10, -0x1

    if-eq v7, v10, :cond_5

    const/4 v10, 0x2

    if-ne v0, v10, :cond_5

    .line 403
    iget v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-eqz v10, :cond_5

    .line 404
    const/4 v10, 0x0

    invoke-direct {p0, v7, p1, v10}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 408
    :cond_5
    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    const/4 v10, 0x2

    if-eq v0, v10, :cond_6

    .line 409
    invoke-virtual {p0, v7}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 413
    :cond_6
    iget v10, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-nez v10, :cond_8

    if-eqz v7, :cond_8

    .line 414
    const/4 v10, 0x2

    if-ne v0, v10, :cond_8

    .line 415
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 400
    :cond_7
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getSelectedIndicatorIndex()I

    move-result v10

    if-eq v10, v7, :cond_4

    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    goto :goto_1

    .line 418
    :cond_8
    const/4 v10, 0x1

    if-ne v0, v10, :cond_9

    const/4 v7, -0x1

    .end local v7           #index:I
    :cond_9
    iput v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 419
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->invalidate()V

    .line 420
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 423
    .end local v1           #delta:D
    :cond_a
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->onTouchOutBound()V

    .line 424
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->setEnabled(Z)V

    .line 651
    :cond_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/moblynx/cameraics/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "group"
    .parameter "isZoomSupported"
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    const-wide v0, 0x4052800000000000L

    iput-wide v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    .line 161
    const/16 v0, 0x57

    invoke-static {v0}, Lcom/moblynx/cameraics/Util;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStrokeWidth:I

    .line 162
    iget-wide v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    iget v2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mWheelRadius:D

    .line 164
    invoke-virtual {p0, p2}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->setPreferenceGroup(Lcom/moblynx/cameraics/PreferenceGroup;)V

    .line 173
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    .line 174
    if-eqz p3, :cond_0

    .line 175
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->setAlpha(F)V

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->initializeCameraPicker()V

    .line 189
    const v0, 0x7f02006d

    invoke-direct {p0, p1, v0, v7}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelStartIndex:I

    .line 193
    const v0, 0x7f020032

    invoke-direct {p0, p1, v0, v6}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->addImageButton(Landroid/content/Context;IZ)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    .line 194
    invoke-virtual {p0, p4, p5}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->addControls([Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildCount()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    .line 198
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->presetFirstLevelChildRadians()V

    .line 199
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->presetSecondLevelChildRadians()V

    .line 200
    iput-boolean v7, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInitialized:Z

    .line 201
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControlWheel;->setAlpha(F)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->changeIndicatorsLevel()V

    .line 156
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getSelectedIndicatorIndex()I

    move-result v14

    .line 570
    .local v14, selectedIndex:I
    const/4 v2, 0x1

    if-lt v14, v2, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v2, v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-int v8, v2

    .line 572
    .local v8, degree:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    double-to-float v10, v2

    .line 573
    .local v10, innerR:F
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-object/from16 v0, p0

    iget v4, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStrokeWidth:I

    int-to-double v6, v4

    add-double/2addr v2, v6

    .line 574
    const-wide/high16 v6, 0x4008

    .line 573
    add-double/2addr v2, v6

    double-to-float v13, v2

    .line 577
    .local v13, outerR:F
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 578
    .local v9, fanPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v3, v3

    sub-float/2addr v3, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v4, v4

    sub-float/2addr v4, v10

    .line 579
    move-object/from16 v0, p0

    iget v6, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v6, v6

    add-float/2addr v6, v10

    move-object/from16 v0, p0

    iget v7, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v7, v7

    add-float/2addr v7, v10

    .line 578
    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v3, v8

    add-int/lit8 v3, v3, 0xf

    int-to-float v3, v3

    .line 581
    const/high16 v4, -0x3e10

    .line 580
    invoke-virtual {v9, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v3, v3

    sub-float/2addr v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v4, v4

    sub-float/2addr v4, v13

    .line 583
    move-object/from16 v0, p0

    iget v6, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    int-to-float v6, v6

    add-float/2addr v6, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    int-to-float v7, v7

    add-float/2addr v7, v13

    .line 582
    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v3, v8

    add-int/lit8 v3, v3, -0xf

    int-to-float v3, v3

    .line 585
    const/high16 v4, 0x41f0

    .line 584
    invoke-virtual {v9, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 586
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4080

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_FAN_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    neg-int v2, v8

    add-int/lit8 v2, v2, -0xf

    int-to-float v4, v2

    .line 598
    const/high16 v5, 0x41f0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 597
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 602
    .end local v8           #degree:I
    .end local v9           #fanPath:Landroid/graphics/Path;
    .end local v10           #innerR:F
    .end local v13           #outerR:F
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    if-eqz v2, :cond_1

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    sub-double/2addr v3, v6

    double-to-float v3, v3

    .line 605
    move-object/from16 v0, p0

    iget v4, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    int-to-double v6, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v17, v0

    sub-double v6, v6, v17

    double-to-float v4, v6

    .line 606
    move-object/from16 v0, p0

    iget v6, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v17, v0

    add-double v6, v6, v17

    double-to-float v6, v6

    .line 607
    move-object/from16 v0, p0

    iget v7, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    int-to-double v0, v7

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mShutterButtonRadius:D

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v7, v0

    .line 604
    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    const/high16 v3, 0x4040

    const/high16 v4, 0x4040

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40c0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->TIME_LAPSE_ARC_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mRecordingStartTime:J

    sub-long v15, v2, v6

    .line 615
    .local v15, timeDelta:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-long v2, v2

    div-long v11, v15, v2

    .line 617
    .local v11, numberOfFrames:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mNumberOfFrames:J

    cmp-long v2, v11, v2

    if-lez v2, :cond_2

    .line 620
    const/high16 v5, 0x43b4

    .line 621
    .local v5, sweepAngle:F
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 626
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->invalidate()V

    .line 630
    .end local v5           #sweepAngle:F
    .end local v11           #numberOfFrames:J
    .end local v15           #timeDelta:J
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/moblynx/cameraics/ui/IndicatorControl;->onDraw(Landroid/graphics/Canvas;)V

    .line 631
    return-void

    .line 623
    .restart local v11       #numberOfFrames:J
    .restart local v15       #timeDelta:J
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-long v2, v2

    rem-long v2, v15, v2

    long-to-float v2, v2

    const/high16 v3, 0x43b4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    int-to-float v3, v3

    div-float v5, v2, v3

    .restart local v5       #sweepAngle:F
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInitialized:Z

    if-nez v13, :cond_1

    .line 494
    :cond_0
    return-void

    .line 455
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_2

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->rotateWheel()V

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    :cond_2
    sub-int v13, p4, p2

    .line 460
    const/16 v14, 0x5d

    .line 459
    invoke-static {v14}, Lcom/moblynx/cameraics/Util;->dpToPixel(I)I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    .line 461
    sub-int v13, p5, p3

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    .line 465
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildCount()I

    move-result v13

    if-ge v4, v13, :cond_0

    .line 466
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 468
    .local v9, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mChildRadians:[D

    aget-wide v5, v13, v4

    .line 469
    .local v5, radian:D
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_5

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    const/4 v14, 0x1

    aget-wide v7, v13, v14

    .line 472
    .local v7, startVisibleRadians:D
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInAnimation:Z

    if-eqz v13, :cond_6

    .line 473
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    const/4 v14, 0x1

    aget-wide v1, v13, v14

    .line 475
    .local v1, endVisibleRadians:D
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    if-eqz v13, :cond_4

    .line 476
    :cond_3
    sget-wide v13, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    const-wide/high16 v15, 0x4000

    div-double/2addr v13, v15

    sub-double v13, v7, v13

    cmpg-double v13, v5, v13

    if-ltz v13, :cond_4

    .line 477
    sget-wide v13, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->HIGHLIGHT_RADIANS:D

    const-wide/high16 v15, 0x4000

    div-double/2addr v13, v15

    add-double/2addr v13, v1

    cmpl-double v13, v5, v13

    if-lez v13, :cond_7

    .line 478
    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 465
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 471
    .end local v1           #endVisibleRadians:D
    .end local v7           #startVisibleRadians:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mStartVisibleRadians:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    aget-wide v7, v13, v14

    goto :goto_1

    .line 474
    .restart local v7       #startVisibleRadians:D
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mEndVisibleRadians:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentLevel:I

    aget-wide v1, v13, v14

    goto :goto_2

    .line 481
    .restart local v1       #endVisibleRadians:D
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 482
    move-object/from16 v0, p0

    iget v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterX:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mWheelRadius:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int v11, v13, v14

    .line 483
    .local v11, x:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCenterY:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mWheelRadius:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v14, v14

    sub-int v12, v13, v14

    .line 484
    .local v12, y:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 485
    .local v10, width:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 486
    .local v3, height:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mZoomControl:Lcom/moblynx/cameraics/ui/ZoomControlWheel;

    if-ne v9, v13, :cond_8

    .line 488
    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int v15, p4, p2

    sub-int v16, p5, p3

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 490
    :cond_8
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v3, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    .line 491
    div-int/lit8 v16, v3, 0x2

    add-int v16, v16, v12

    .line 490
    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3
.end method

.method public onTouchOutBound()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 654
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    .line 655
    iget v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    if-eq v0, v3, :cond_0

    .line 656
    iget v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->injectMotionEvent(ILandroid/view/MotionEvent;I)V

    .line 657
    iput v3, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mPressedIndex:I

    .line 658
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->invalidate()V

    .line 660
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 635
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControl;->setEnabled(Z)V

    .line 636
    iget-boolean v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mInitialized:Z

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 637
    :cond_0
    iget v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 638
    iget-object v3, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->requestLayout()V

    .line 645
    :goto_3
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mSecondLevelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 638
    goto :goto_1

    :cond_2
    move v1, v2

    .line 639
    goto :goto_2

    .line 643
    :cond_3
    invoke-virtual {p0, p1}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->enableZoom(Z)V

    goto :goto_3
.end method

.method public startTimeLapseAnimation(IJ)V
    .locals 2
    .parameter "timeLapseInterval"
    .parameter "startTime"

    .prologue
    .line 537
    iput p1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    .line 538
    iput-wide p2, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mRecordingStartTime:J

    .line 539
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mNumberOfFrames:J

    .line 540
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->invalidate()V

    .line 541
    return-void
.end method

.method public stopTimeLapseAnimation()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    iput v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->mTimeLapseInterval:I

    .line 545
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->invalidate()V

    .line 546
    return-void
.end method
