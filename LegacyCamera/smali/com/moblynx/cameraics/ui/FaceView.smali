.class public Lcom/moblynx/cameraics/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/moblynx/cameraics/ui/FocusIndicator;
.implements Lcom/moblynx/cameraics/ui/Rotatable;


# instance fields
.field private final LOGV:Z

.field private final TAG:Ljava/lang/String;

.field private mDisplayOrientation:I

.field private final mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocused:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocusing:Landroid/graphics/drawable/Drawable;

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Ljava/lang/Object;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPause:Z

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "FaceView"

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->LOGV:Z

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 58
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaces:[Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->invalidate()V

    .line 115
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaces:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaces:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 127
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaces:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaces:[Ljava/lang/Object;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v5, p0, Lcom/moblynx/cameraics/ui/FaceView;->mMirror:Z

    iget v6, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->getHeight()I

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/moblynx/cameraics/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/moblynx/cameraics/ui/FaceView;->mOrientation:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 135
    iget v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mOrientation:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, MyFace:Ljava/lang/Class;
    const/4 v1, 0x0

    .line 141
    .local v1, MyFace_rect:Ljava/lang/reflect/Field;
    :try_start_0
    const-string v4, "android.hardware.Camera$Face"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 142
    const-string v4, "rect"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaces:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    .end local v0           #MyFace:Ljava/lang/Class;
    .end local v1           #MyFace_rect:Ljava/lang/reflect/Field;
    .end local v3           #i:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    return-void

    .line 144
    .restart local v0       #MyFace:Ljava/lang/Class;
    .restart local v1       #MyFace_rect:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 145
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "FaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Class not found "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/moblynx/cameraics/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaces:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :goto_2
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/moblynx/cameraics/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 163
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/moblynx/cameraics/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/moblynx/cameraics/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 164
    iget-object v7, p0, Lcom/moblynx/cameraics/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/moblynx/cameraics/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 163
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mPause:Z

    .line 119
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mPause:Z

    .line 123
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 72
    iput p1, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDisplayOrientation:I

    .line 74
    return-void
.end method

.method public setFaces([Ljava/lang/Object;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaces:[Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/moblynx/cameraics/ui/FaceView;->mMirror:Z

    .line 84
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 77
    iput p1, p0, Lcom/moblynx/cameraics/ui/FaceView;->mOrientation:I

    .line 78
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->invalidate()V

    .line 79
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->invalidate()V

    .line 106
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->invalidate()V

    .line 94
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/FaceView;->invalidate()V

    .line 100
    return-void
.end method
