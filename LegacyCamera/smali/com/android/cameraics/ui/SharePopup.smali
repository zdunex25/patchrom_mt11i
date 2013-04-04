.class public Lcom/android/cameraics/ui/SharePopup;
.super Landroid/widget/PopupWindow;
.source "SharePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/cameraics/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/ui/SharePopup$MySimpleAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/PopupWindow;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/android/cameraics/ui/Rotatable;"
    }
.end annotation


# static fields
.field private static final ADAPTER_COLUMN_ICON:Ljava/lang/String; = "icon"

.field private static final ANIM_DURATION:J = 0x96L

.field public static final MSG_URI_DELETED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SharePopup"


# instance fields
.field private mActivityOrientation:I

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mComponent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

.field private mDeleteRotate:Lcom/android/cameraics/ui/RotateLayout;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mGotoGalleryRotate:Lcom/android/cameraics/ui/RotateLayout;

.field public mHandler:Landroid/os/Handler;

.field private mImageViewFrame:Landroid/view/View;

.field private mMimeType:Ljava/lang/String;

.field private mOrientation:I

.field private mPreviewFrame:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mShareList:Landroid/widget/GridView;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mThumbnailRotateLayout:Lcom/android/cameraics/ui/RotateLayout;

.field private mUri:Landroid/net/Uri;

.field private final mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/graphics/Bitmap;ILandroid/view/View;Landroid/os/Handler;)V
    .locals 9
    .parameter "activity"
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"
    .parameter "previewFrame"
    .parameter "handler"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mComponent:Ljava/util/ArrayList;

    .line 113
    new-instance v6, Lcom/android/cameraics/ui/SharePopup$1;

    invoke-direct {v6, p0}, Lcom/android/cameraics/ui/SharePopup$1;-><init>(Lcom/android/cameraics/ui/SharePopup;)V

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    iput v6, p0, Lcom/android/cameraics/ui/SharePopup;->mActivityOrientation:I

    .line 132
    iput-object p1, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/android/cameraics/ui/SharePopup;->mUri:Landroid/net/Uri;

    .line 134
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/cameraics/ui/SharePopup;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mMimeType:Ljava/lang/String;

    .line 135
    iput-object p5, p0, Lcom/android/cameraics/ui/SharePopup;->mPreviewFrame:Landroid/view/View;

    .line 136
    iput-object p6, p0, Lcom/android/cameraics/ui/SharePopup;->mHandler:Landroid/os/Handler;

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 138
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04001d

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 140
    .local v5, sharePopup:Landroid/view/ViewGroup;
    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    const v6, 0x7f0d0080

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/cameraics/ui/RotateLayout;

    .line 141
    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnailRotateLayout:Lcom/android/cameraics/ui/RotateLayout;

    .line 143
    const v6, 0x7f0d008a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    .line 144
    const v6, 0x7f0d0070

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    .line 145
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    const v6, 0x7f0d0081

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 146
    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mImageViewFrame:Landroid/view/View;

    .line 148
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mImageViewFrame:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v6, 0x7f0d0083

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/cameraics/ui/RotateLayout;

    .line 151
    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mGotoGalleryRotate:Lcom/android/cameraics/ui/RotateLayout;

    .line 153
    const v6, 0x7f0d0084

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const/high16 v6, 0x10a

    .line 158
    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 161
    const v6, 0x10a0001

    .line 160
    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 162
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mFadeInAnim:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 163
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mFadeOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 166
    const v6, 0x7f0d0086

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/cameraics/ui/RotateLayout;

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteRotate:Lcom/android/cameraics/ui/RotateLayout;

    .line 167
    const v6, 0x7f0d0087

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v6, 0x7f0d0072

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/cameraics/ui/RotateLayout;

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    .line 171
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/cameraics/ui/RotateLayout;->setVisibility(I)V

    .line 172
    const v6, 0x7f0d0077

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    const v6, 0x7f0d0074

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    const v8, 0x7f080039

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v6, 0x7f0d0078

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    const v8, 0x7f08003a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v6, 0x7f0d007a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 179
    .local v0, cancelDeleteButton:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    const/high16 v7, 0x104

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v6, 0x7f0d007b

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 182
    .local v2, okDeleteButton:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    const v7, 0x104000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v6, Lcom/android/cameraics/ui/SharePopup$2;

    invoke-direct {v6, p0}, Lcom/android/cameraics/ui/SharePopup$2;-><init>(Lcom/android/cameraics/ui/SharePopup;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v6, Lcom/android/cameraics/ui/SharePopup$3;

    invoke-direct {v6, p0}, Lcom/android/cameraics/ui/SharePopup$3;-><init>(Lcom/android/cameraics/ui/SharePopup;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapWidth:I

    .line 233
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapHeight:I

    .line 236
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mMimeType:Ljava/lang/String;

    const-string v7, "video/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    const v6, 0x7f0d0082

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapWidth:I

    .line 240
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapHeight:I

    .line 242
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 245
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x7f0d007f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    .line 246
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 247
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    iget-object v6, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/cameraics/ui/SharePopup;->setWidth(I)V

    .line 253
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/cameraics/ui/SharePopup;->setHeight(I)V

    .line 254
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v6}, Lcom/android/cameraics/ui/SharePopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-virtual {p0, v5}, Lcom/android/cameraics/ui/SharePopup;->setContentView(Landroid/view/View;)V

    .line 256
    invoke-virtual {p0, p4}, Lcom/android/cameraics/ui/SharePopup;->setOrientation(I)V

    .line 257
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/cameraics/ui/SharePopup;->setFocusable(Z)V

    .line 258
    const v6, 0x7f0c0016

    invoke-virtual {p0, v6}, Lcom/android/cameraics/ui/SharePopup;->setAnimationStyle(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/cameraics/ui/SharePopup;->createShareMenu()V

    .line 261
    invoke-direct {p0}, Lcom/android/cameraics/ui/SharePopup;->adjustThumbnailPosition()V

    .line 262
    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/ui/SharePopup;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/android/cameraics/ui/SharePopup;->mOrientation:I

    return v0
.end method

.method static synthetic access$1(Lcom/android/cameraics/ui/SharePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/android/cameraics/ui/SharePopup;->fadeOutDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/cameraics/ui/SharePopup;)Lcom/android/cameraics/ui/RotateLayout;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/cameraics/ui/SharePopup;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/cameraics/ui/SharePopup;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private adjustThumbnailPosition()V
    .locals 5

    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnailRotateLayout:Lcom/android/cameraics/ui/RotateLayout;

    invoke-virtual {v2}, Lcom/android/cameraics/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    .local v1, lpOld:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 270
    .local v0, lpNew:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    iget v2, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapWidth:I

    iget v3, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapHeight:I

    mul-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapHeight:I

    iget v3, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapWidth:I

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_1

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    .line 301
    iget-object v3, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 300
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnailRotateLayout:Lcom/android/cameraics/ui/RotateLayout;

    invoke-virtual {v2, v0}, Lcom/android/cameraics/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/RotateLayout;->setVisibility(I)V

    .line 453
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 447
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/RotateLayout;->setVisibility(I)V

    .line 448
    return-void
.end method


# virtual methods
.method public createShareMenu()V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v13, 0x0

    .line 397
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 399
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/cameraics/ui/SharePopup;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 398
    invoke-virtual {v11, v1, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 401
    .local v9, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    iget v1, p0, Lcom/android/cameraics/ui/SharePopup;->mActivityOrientation:I

    if-ne v1, v6, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 415
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 416
    .local v12, width:I
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v1, v12}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 419
    .end local v12           #width:I
    :cond_0
    new-instance v0, Lcom/android/cameraics/ui/SharePopup$MySimpleAdapter;

    iget-object v2, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    .line 420
    const v4, 0x7f04001c

    .line 421
    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v5, v13

    .line 422
    new-array v6, v6, [I

    const v1, 0x7f0d007e

    aput v1, v6, v13

    move-object v1, p0

    .line 419
    invoke-direct/range {v0 .. v6}, Lcom/android/cameraics/ui/SharePopup$MySimpleAdapter;-><init>(Lcom/android/cameraics/ui/SharePopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 424
    .local v0, listItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 425
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 426
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 427
    return-void

    .line 402
    .end local v0           #listItemAdapter:Landroid/widget/SimpleAdapter;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 403
    .local v8, info:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    .line 404
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 403
    invoke-direct {v7, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v7, component:Landroid/content/ComponentName;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "icon"

    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v2, p0, Lcom/android/cameraics/ui/SharePopup;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 375
    :sswitch_0
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/support/custom/NewFeatures;->viewUri(Landroid/net/Uri;Landroid/content/Context;)V

    goto :goto_0

    .line 380
    :sswitch_1
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/cameraics/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/cameraics/ui/SharePopup;->fadeInDialog()V

    goto :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x7f0d0081 -> :sswitch_0
        0x7f0d0084 -> :sswitch_0
        0x7f0d0087 -> :sswitch_1
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/cameraics/ui/SharePopup;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 438
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 440
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 389
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/cameraics/ui/SharePopup;->dismiss()V

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 14
    .parameter "orientation"

    .prologue
    .line 310
    iput p1, p0, Lcom/android/cameraics/ui/SharePopup;->mOrientation:I

    .line 312
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    iget-object v13, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int v4, v12, v13

    .line 313
    .local v4, hPaddingRootView:I
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    iget-object v13, p0, Lcom/android/cameraics/ui/SharePopup;->mRootView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    add-int v11, v12, v13

    .line 317
    .local v11, vPaddingRootView:I
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v12, v4

    int-to-float v7, v12

    .line 318
    .local v7, maxWidth:F
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    int-to-float v6, v12

    .line 320
    .local v6, maxHeight:F
    const/16 v12, 0x5a

    if-eq p1, v12, :cond_0

    const/16 v12, 0x10e

    if-ne p1, v12, :cond_1

    .line 321
    :cond_0
    move v10, v7

    .line 322
    .local v10, temp:F
    move v7, v6

    .line 323
    move v6, v10

    .line 325
    .end local v10           #temp:F
    :cond_1
    div-float v0, v7, v6

    .line 326
    .local v0, actualAspect:F
    iget v12, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/cameraics/ui/SharePopup;->mBitmapHeight:I

    int-to-float v13, v13

    div-float v2, v12, v13

    .line 328
    .local v2, desiredAspect:F
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mMimeType:Ljava/lang/String;

    const-string v13, "video/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 329
    const v2, 0x3faaaaab

    .line 330
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 335
    :goto_0
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 336
    .local v8, params:Landroid/view/ViewGroup$LayoutParams;
    cmpl-float v12, v0, v2

    if-lez v12, :cond_4

    .line 337
    mul-float v12, v6, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 338
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 343
    :goto_1
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnailRotateLayout:Lcom/android/cameraics/ui/RotateLayout;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnailRotateLayout:Lcom/android/cameraics/ui/RotateLayout;

    invoke-virtual {v12, p1}, Lcom/android/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 347
    :cond_2
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 348
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-lt v5, v1, :cond_5

    .line 354
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mGotoGalleryRotate:Lcom/android/cameraics/ui/RotateLayout;

    invoke-virtual {v12, p1}, Lcom/android/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 357
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteRotate:Lcom/android/cameraics/ui/RotateLayout;

    invoke-virtual {v12, p1}, Lcom/android/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 358
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mDeleteConfirmRotate:Lcom/android/cameraics/ui/RotateLayout;

    invoke-virtual {v12, p1}, Lcom/android/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 360
    invoke-direct {p0}, Lcom/android/cameraics/ui/SharePopup;->adjustThumbnailPosition()V

    .line 361
    return-void

    .line 332
    .end local v1           #count:I
    .end local v5           #i:I
    .end local v8           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mThumbnail:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 340
    .restart local v8       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 341
    div-float v12, v7, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 349
    .restart local v1       #count:I
    .restart local v5       #i:I
    :cond_5
    iget-object v12, p0, Lcom/android/cameraics/ui/SharePopup;->mShareList:Landroid/widget/GridView;

    invoke-virtual {v12, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 350
    .local v3, f:Landroid/view/ViewGroup;
    const v12, 0x7f0d007d

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/cameraics/ui/RotateLayout;

    .line 351
    .local v9, r:Lcom/android/cameraics/ui/RotateLayout;
    invoke-virtual {v9, p1}, Lcom/android/cameraics/ui/RotateLayout;->setOrientation(I)V

    .line 348
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 367
    iget-object v0, p0, Lcom/android/cameraics/ui/SharePopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/cameraics/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/cameraics/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cameraics/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 368
    return-void
.end method
