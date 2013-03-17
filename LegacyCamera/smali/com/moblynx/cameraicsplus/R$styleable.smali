.class public final Lcom/moblynx/cameraicsplus/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraicsplus/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I = null

.field public static final CameraPreference_title:I = 0x0

.field public static final IconIndicator:[I = null

.field public static final IconIndicator_icons:I = 0x0

.field public static final IconIndicator_modes:I = 0x1

.field public static final IconListPreference:[I = null

.field public static final IconListPreference_icons:I = 0x0

.field public static final IconListPreference_images:I = 0x3

.field public static final IconListPreference_largeIcons:I = 0x2

.field public static final IconListPreference_singleIcon:I = 0x1

.field public static final ListPreference:[I = null

.field public static final ListPreference_defaultValue:I = 0x1

.field public static final ListPreference_entries:I = 0x3

.field public static final ListPreference_entryValues:I = 0x2

.field public static final ListPreference_key:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1356
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1357
    const/high16 v2, 0x7f01

    aput v2, v0, v1

    .line 1356
    sput-object v0, Lcom/moblynx/cameraicsplus/R$styleable;->CameraPreference:[I

    .line 1385
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/moblynx/cameraicsplus/R$styleable;->IconIndicator:[I

    .line 1424
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/moblynx/cameraicsplus/R$styleable;->IconListPreference:[I

    .line 1485
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/moblynx/cameraicsplus/R$styleable;->ListPreference:[I

    .line 1532
    return-void

    .line 1385
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1424
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1485
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
