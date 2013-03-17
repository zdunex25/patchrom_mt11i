.class public abstract Lcom/moblynx/cameraics/ui/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"

# interfaces
.implements Lcom/moblynx/cameraics/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;,
        Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomIndexChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomControl"

.field private static final ZOOMING_INTERVAL:I = 0x3e8

.field public static final ZOOM_IN:I = 0x0

.field public static final ZOOM_OUT:I = 0x1

.field public static final ZOOM_STOP:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIndexListener:Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomIndexChangedListener;

.field private mListener:Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;

.field protected mOnIndicatorEventListener:Lcom/moblynx/cameraics/ui/OnIndicatorEventListener;

.field protected mOrientation:I

.field protected final mRunnable:Ljava/lang/Runnable;

.field private mSmoothZoomSupported:Z

.field private mState:I

.field private mStep:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Lcom/moblynx/cameraics/ui/ZoomControl$1;

    invoke-direct {v0, p0}, Lcom/moblynx/cameraics/ui/ZoomControl$1;-><init>(Lcom/moblynx/cameraics/ui/ZoomControl;)V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    .line 76
    const v0, 0x7f02009b

    invoke-virtual {p0, p1, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0200a1

    invoke-virtual {p0, p1, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f02009e

    invoke-virtual {p0, p1, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/moblynx/cameraics/ui/ZoomControl;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mState:I

    return v0
.end method

.method static synthetic access$1(Lcom/moblynx/cameraics/ui/ZoomControl;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/ui/ZoomControl;->performZoom(IZ)V

    return-void
.end method

.method private performZoom(IZ)V
    .locals 4
    .parameter "state"
    .parameter "fromUser"

    .prologue
    .line 164
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mState:I

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    :cond_2
    iput p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mState:I

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_1
    iget-boolean v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mSmoothZoomSupported:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomMax:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 169
    :pswitch_0
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->zoomIn()Z

    goto :goto_1

    .line 172
    :pswitch_1
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->zoomOut()Z

    goto :goto_1

    .line 175
    :pswitch_2
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->stopZooming()V

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopZooming()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mListener:Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mListener:Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 155
    :cond_0
    return-void
.end method

.method private zoomIn()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomMax:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mStep:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->changeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method

.method private zoomOut()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mStep:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->changeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 3
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 88
    new-instance v0, Lcom/moblynx/cameraics/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/moblynx/cameraics/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    const v1, 0x7f0200a1

    if-ne p2, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    const v2, 0x7f0800ed

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->addView(Landroid/view/View;)V

    .line 98
    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    const v2, 0x7f0800f1

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public changeZoomIndex(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 194
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mListener:Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;

    if-eqz v2, :cond_2

    .line 195
    iget-boolean v2, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v2, :cond_4

    .line 196
    iget v2, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    if-ge p1, v2, :cond_3

    move v0, v1

    .line 197
    .local v0, zoomType:I
    :goto_0
    if-nez v0, :cond_0

    iget v2, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    iget v3, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomMax:I

    if-ne v2, v3, :cond_1

    .line 198
    :cond_0
    if-ne v0, v1, :cond_2

    iget v2, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    if-eqz v2, :cond_2

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mListener:Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, v0}, Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 208
    .end local v0           #zoomType:I
    :cond_2
    :goto_1
    return v1

    .line 196
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :cond_4
    iget v2, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomMax:I

    if-le p1, v2, :cond_5

    iget p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomMax:I

    .line 203
    :cond_5
    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 204
    :cond_6
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mListener:Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, p1}, Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 205
    iput p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    goto :goto_1
.end method

.method public closeZoomControl()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 103
    invoke-direct {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->stopZooming()V

    .line 104
    iget-boolean v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mSmoothZoomSupported:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/moblynx/cameraics/ui/OnIndicatorEventListener;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/moblynx/cameraics/ui/OnIndicatorEventListener;

    .line 107
    const/4 v1, 0x3

    .line 106
    invoke-interface {v0, v1}, Lcom/moblynx/cameraics/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 109
    :cond_1
    return-void
.end method

.method protected performZoom(D)V
    .locals 3
    .parameter "zoomPercentage"

    .prologue
    .line 187
    iget v1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 188
    .local v0, index:I
    iget v1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0
.end method

.method protected performZoom(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->performZoom(IZ)V

    .line 161
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 225
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 226
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 227
    return-void
.end method

.method public setOnIndicatorEventListener(Lcom/moblynx/cameraics/ui/OnIndicatorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mOnIndicatorEventListener:Lcom/moblynx/cameraics/ui/OnIndicatorEventListener;

    .line 125
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mListener:Lcom/moblynx/cameraics/ui/ZoomControl$OnZoomChangedListener;

    .line 121
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 212
    iput p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mOrientation:I

    .line 213
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->getChildCount()I

    move-result v0

    .line 214
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 220
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0, v1}, Lcom/moblynx/cameraics/ui/ZoomControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 216
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/moblynx/cameraics/ui/RotateImageView;

    if-eqz v3, :cond_1

    .line 217
    check-cast v2, Lcom/moblynx/cameraics/ui/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/moblynx/cameraics/ui/RotateImageView;->setOrientation(I)V

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSmoothZoomSupported(Z)V
    .locals 0
    .parameter "smoothZoomSupported"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mSmoothZoomSupported:Z

    .line 137
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 128
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid zoom value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iput p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    .line 132
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->invalidate()V

    .line 133
    return-void
.end method

.method public setZoomMax(I)V
    .locals 0
    .parameter "zoomMax"

    .prologue
    .line 112
    iput p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomMax:I

    .line 116
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/ZoomControl;->requestLayout()V

    .line 117
    return-void
.end method

.method protected setZoomStep(I)V
    .locals 0
    .parameter "step"

    .prologue
    .line 148
    iput p1, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mStep:I

    .line 149
    return-void
.end method

.method public startZoomControl()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 84
    iget v0, p0, Lcom/moblynx/cameraics/ui/ZoomControl;->mZoomIndex:I

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/ZoomControl;->setZoomIndex(I)V

    .line 85
    return-void
.end method
