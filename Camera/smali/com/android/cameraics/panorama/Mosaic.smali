.class public Lcom/android/cameraics/panorama/Mosaic;
.super Ljava/lang/Object;
.source "Mosaic.java"


# static fields
.field public static final BLENDTYPE_CYLINDERPAN:I = 0x2

.field public static final BLENDTYPE_FULL:I = 0x0

.field public static final BLENDTYPE_HORIZONTAL:I = 0x3

.field public static final BLENDTYPE_PAN:I = 0x1

.field public static final MOSAIC_RET_CANCELLED:I = -0x2

.field public static final MOSAIC_RET_ERROR:I = -0x1

.field public static final MOSAIC_RET_FEW_INLIERS:I = 0x2

.field public static final MOSAIC_RET_LOW_TEXTURE:I = -0x3

.field public static final MOSAIC_RET_OK:I = 0x1

.field public static final STRIPTYPE_THIN:I = 0x0

.field public static final STRIPTYPE_WIDE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "jni_mosaic"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native allocateMosaicMemory(II)V
.end method

.method public native createMosaic(Z)I
.end method

.method public native freeMosaicMemory()V
.end method

.method public native getFinalMosaic()[I
.end method

.method public native getFinalMosaicNV21()[B
.end method

.method public native reportProgress(ZZ)I
.end method

.method public native reset()V
.end method

.method public native setBlendingType(I)V
.end method

.method public native setSourceImage([B)[F
.end method

.method public native setSourceImageFromGPU()[F
.end method

.method public native setStripType(I)V
.end method
