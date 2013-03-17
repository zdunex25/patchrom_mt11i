.class public Lcom/moblynx/cameraics/IconListPreference;
.super Lcom/moblynx/cameraics/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mIconIds:[I

.field private mImageIds:[I

.field private mLargeIconIds:[I

.field private mSingleIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v2, Lcom/moblynx/cameraicsplus/R$styleable;->IconListPreference:[I

    .line 37
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 41
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/moblynx/cameraics/IconListPreference;->mSingleIconId:I

    .line 42
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/moblynx/cameraics/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/moblynx/cameraics/IconListPreference;->mIconIds:[I

    .line 45
    const/4 v2, 0x2

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/moblynx/cameraics/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/moblynx/cameraics/IconListPreference;->mLargeIconIds:[I

    .line 47
    const/4 v2, 0x3

    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/moblynx/cameraics/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/moblynx/cameraics/IconListPreference;->mImageIds:[I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 76
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 84
    :goto_0
    return-object v2

    .line 77
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 79
    .local v3, n:I
    new-array v2, v3, [I

    .line 80
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/moblynx/cameraics/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    .local v0, entryValues:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/moblynx/cameraics/IntArray;

    invoke-direct {v2}, Lcom/moblynx/cameraics/IntArray;-><init>()V

    .line 91
    .local v2, iconIds:Lcom/moblynx/cameraics/IntArray;
    new-instance v4, Lcom/moblynx/cameraics/IntArray;

    invoke-direct {v4}, Lcom/moblynx/cameraics/IntArray;-><init>()V

    .line 92
    .local v4, largeIconIds:Lcom/moblynx/cameraics/IntArray;
    new-instance v3, Lcom/moblynx/cameraics/IntArray;

    invoke-direct {v3}, Lcom/moblynx/cameraics/IntArray;-><init>()V

    .line 94
    .local v3, imageIds:Lcom/moblynx/cameraics/IntArray;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v5, v0

    .local v5, len:I
    :goto_0
    if-lt v1, v5, :cond_3

    .line 101
    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mIconIds:[I

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/moblynx/cameraics/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v2, v6}, Lcom/moblynx/cameraics/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mIconIds:[I

    .line 102
    :cond_0
    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_1

    .line 103
    invoke-virtual {v4}, Lcom/moblynx/cameraics/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mLargeIconIds:[I

    .line 105
    :cond_1
    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mImageIds:[I

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/moblynx/cameraics/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v3, v6}, Lcom/moblynx/cameraics/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mImageIds:[I

    .line 106
    :cond_2
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 107
    return-void

    .line 95
    :cond_3
    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 96
    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mIconIds:[I

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Lcom/moblynx/cameraics/IntArray;->add(I)V

    .line 97
    :cond_4
    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mLargeIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Lcom/moblynx/cameraics/IntArray;->add(I)V

    .line 98
    :cond_5
    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mImageIds:[I

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/moblynx/cameraics/IconListPreference;->mImageIds:[I

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Lcom/moblynx/cameraics/IntArray;->add(I)V

    .line 94
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIconIds()[I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/moblynx/cameraics/IconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getImageIds()[I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/moblynx/cameraics/IconListPreference;->mImageIds:[I

    return-object v0
.end method

.method public getLargeIconIds()[I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/moblynx/cameraics/IconListPreference;->mLargeIconIds:[I

    return-object v0
.end method

.method public getSingleIcon()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/moblynx/cameraics/IconListPreference;->mSingleIconId:I

    return v0
.end method

.method public setIconIds([I)V
    .locals 0
    .parameter "iconIds"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/moblynx/cameraics/IconListPreference;->mIconIds:[I

    .line 69
    return-void
.end method

.method public setLargeIconIds([I)V
    .locals 0
    .parameter "largeIconIds"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/moblynx/cameraics/IconListPreference;->mLargeIconIds:[I

    .line 73
    return-void
.end method
