.class public Lcom/android/cameraics/ModePicker;
.super Landroid/widget/RelativeLayout;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/cameraics/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/cameraics/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/ModePicker$OnModeChangeListener;
    }
.end annotation


# static fields
.field public static final MODE_CAMERA:I = 0x0

.field private static final MODE_NUM:I = 0x3

.field public static final MODE_PANORAMA:I = 0x2

.field public static final MODE_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ModePicker"


# instance fields
.field private final CURRENT_MODE_BACKGROUND:I

.field private final DISABLED_COLOR:I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentMode:I

.field private mCurrentModeBar:Landroid/view/View;

.field private mCurrentModeFrame:Landroid/view/View;

.field private mCurrentModeIcon:[Lcom/android/cameraics/ui/RotateImageView;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mListener:Lcom/android/cameraics/ModePicker$OnModeChangeListener;

.field private mModeSelectionFrame:Landroid/view/View;

.field private mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

.field private mSelectionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    .line 124
    new-instance v0, Lcom/android/cameraics/ModePicker$1;

    invoke-direct {v0, p0}, Lcom/android/cameraics/ModePicker$1;-><init>(Lcom/android/cameraics/ModePicker;)V

    iput-object v0, p0, Lcom/android/cameraics/ModePicker;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/cameraics/ModePicker;->DISABLED_COLOR:I

    .line 74
    const v0, 0x7f02001d

    iput v0, p0, Lcom/android/cameraics/ModePicker;->CURRENT_MODE_BACKGROUND:I

    .line 76
    const v0, 0x7f050002

    .line 75
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ModePicker;->mFadeIn:Landroid/view/animation/Animation;

    .line 78
    const v0, 0x7f050003

    .line 77
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    .line 79
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 80
    invoke-static {p1}, Lcom/android/cameraics/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/cameraics/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cameraics/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/cameraics/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/ModePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/cameraics/ModePicker;->changeToSelectedMode()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/cameraics/ModePicker;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/cameraics/ModePicker;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    return-object v0
.end method

.method private changeToSelectedMode()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mListener:Lcom/android/cameraics/ModePicker$OnModeChangeListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mListener:Lcom/android/cameraics/ModePicker$OnModeChangeListener;

    iget v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    invoke-interface {v0, v1}, Lcom/android/cameraics/ModePicker$OnModeChangeListener;->onModeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "ModePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed:onModeChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method private enableModeSelection(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 140
    iput-boolean p1, p0, Lcom/android/cameraics/ModePicker;->mSelectionEnabled:Z

    .line 142
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mFadeIn:Landroid/view/animation/Animation;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/cameraics/ModePicker;->updateModeState()V

    .line 149
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private highlightView(Landroid/widget/ImageView;Z)V
    .locals 2
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 219
    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget v0, p0, Lcom/android/cameraics/ModePicker;->DISABLED_COLOR:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private registerOnClickListener()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 117
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/cameraics/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateModeState()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    .line 228
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 229
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v7, :cond_2

    .line 236
    .end local v0           #i:I
    :cond_0
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 237
    const/4 v0, 0x0

    .restart local v0       #i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v0, v7, :cond_4

    .line 251
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_1
    return-void

    .line 230
    .restart local v0       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v6, v4, v0

    iget v4, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    if-ne v0, v4, :cond_3

    move v4, v5

    :goto_2
    invoke-direct {p0, v6, v4}, Lcom/android/cameraics/ModePicker;->highlightView(Landroid/widget/ImageView;Z)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 239
    .restart local v1       #j:I
    :cond_4
    if-ne v0, v5, :cond_5

    .line 241
    iget v3, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    .line 247
    .local v3, target:I
    :goto_3
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v4, v4, v0

    .line 248
    iget-object v6, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/cameraics/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 247
    invoke-virtual {v4, v6}, Lcom/android/cameraics/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    .end local v3           #target:I
    :cond_5
    iget v4, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    if-ne v1, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 245
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .local v2, j:I
    move v3, v1

    .restart local v3       #target:I
    move v1, v2

    .end local v2           #j:I
    .restart local v1       #j:I
    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/cameraics/ModePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cameraics/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/cameraics/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/cameraics/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 162
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/cameraics/ModePicker;->enableModeSelection(Z)V

    .line 177
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 171
    :goto_2
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeBar:Landroid/view/View;

    if-nez v1, :cond_3

    .line 172
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/cameraics/ModePicker;->enableModeSelection(Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    if-eq v1, v0, :cond_2

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->setCurrentMode(I)V

    goto :goto_2

    .line 165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/android/cameraics/ModePicker;->changeToSelectedMode()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    .line 87
    new-array v0, v5, [Lcom/android/cameraics/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    .line 88
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    .line 89
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/RotateImageView;

    .line 88
    aput-object v0, v1, v4

    .line 90
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    .line 91
    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/RotateImageView;

    .line 90
    aput-object v0, v1, v2

    .line 92
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    .line 93
    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/RotateImageView;

    .line 92
    aput-object v0, v1, v3

    .line 96
    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 98
    new-array v0, v5, [Lcom/android/cameraics/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeIcon:[Lcom/android/cameraics/ui/RotateImageView;

    .line 99
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeIcon:[Lcom/android/cameraics/ui/RotateImageView;

    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/RotateImageView;

    aput-object v0, v1, v3

    .line 100
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeIcon:[Lcom/android/cameraics/ui/RotateImageView;

    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 101
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeIcon:[Lcom/android/cameraics/ui/RotateImageView;

    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ui/RotateImageView;

    aput-object v0, v1, v4

    .line 107
    :goto_0
    invoke-direct {p0}, Lcom/android/cameraics/ModePicker;->registerOnClickListener()V

    .line 108
    return-void

    .line 104
    :cond_0
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeBar:Landroid/view/View;

    .line 105
    invoke-direct {p0, v2}, Lcom/android/cameraics/ModePicker;->enableModeSelection(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 256
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 258
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeBar:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/cameraics/ui/RotateImageView;->getWidth()I

    move-result v3

    .line 260
    .local v3, viewWidth:I
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v4, v4, v5

    .line 261
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 262
    .local v0, iconWidth:I
    sub-int v4, v3, v0

    div-int/lit8 v2, v4, 0x2

    .line 263
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    mul-int/2addr v5, v3

    add-int v1, v4, v5

    .line 264
    .local v1, l:I
    iget-object v4, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeBar:Landroid/view/View;

    add-int v5, v1, v2

    .line 265
    sub-int v6, p5, p3

    iget-object v7, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 266
    add-int v7, v1, v2

    add-int/2addr v7, v0

    .line 267
    sub-int v8, p5, p3

    .line 264
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 269
    .end local v0           #iconWidth:I
    .end local v1           #l:I
    .end local v2           #padding:I
    .end local v3           #viewWidth:I
    :cond_0
    return-void
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/cameraics/ModePicker;->setCurrentMode(I)V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onOtherPopupShowed()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/cameraics/ModePicker;->mSelectionEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cameraics/ModePicker;->enableModeSelection(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 184
    iput p1, p0, Lcom/android/cameraics/ModePicker;->mCurrentMode:I

    .line 185
    invoke-direct {p0}, Lcom/android/cameraics/ModePicker;->updateModeState()V

    .line 186
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 215
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/cameraics/ModePicker;->updateModeState()V

    .line 216
    :cond_1
    return-void

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/cameraics/ui/RotateImageView;->setEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/cameraics/ui/RotateImageView;->setEnabled(Z)V

    .line 211
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnModeChangeListener(Lcom/android/cameraics/ModePicker$OnModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/cameraics/ModePicker;->mListener:Lcom/android/cameraics/ModePicker$OnModeChangeListener;

    .line 181
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 200
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mModeSelectionIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/cameraics/ui/RotateImageView;->setOrientation(I)V

    .line 196
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/cameraics/ModePicker;->mCurrentModeIcon:[Lcom/android/cameraics/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/cameraics/ui/RotateImageView;->setOrientation(I)V

    .line 194
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
