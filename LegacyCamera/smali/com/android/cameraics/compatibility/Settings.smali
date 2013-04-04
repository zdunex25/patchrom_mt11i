.class public Lcom/android/cameraics/compatibility/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final ADMOB_TEST:Z = true

.field public static final MODE_ADDS:I = 0x0

.field public static final MODE_PRO:I = 0x2

.field public static final MODE_PROMO_BANNER:I = 0x1

.field public static SELECTED_MODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/android/cameraics/compatibility/Settings;->SELECTED_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
