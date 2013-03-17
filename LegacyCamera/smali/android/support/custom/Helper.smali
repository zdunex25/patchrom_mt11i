.class public Landroid/support/custom/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static final HTC_MANUFACTURER:I = 0x800

.field public static final HTC_ONE_X_MODEL:I = 0x4000000

.field public static final NEXUS7_MODEL:I = 0x800000

.field public static final NEXUS_MODEL:I = 0x400000

.field public static final RUNNING_4_0_4:I = 0x4

.field public static final RUNNING_ICS:I = 0x2

.field public static final RUNNING_JELLY_BEAN:I = 0x1

.field public static final SAMSUNG_MANUFACTURER:I = 0x400

.field public static final SAMSUNG_S2_NOTE_MODEL:I = 0x100000

.field public static final SAMSUNG_S3_MODEL:I = 0x200000

.field public static final SAMSUNG_TAB_MODEL:I = 0x1000000

.field private static features:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 11
    invoke-static {}, Landroid/support/custom/Helper;->initCompatibility()V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatures(I)Z
    .locals 1
    .parameter "feat"

    .prologue
    .line 157
    sget v0, Landroid/support/custom/Helper;->features:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 7

    .prologue
    .line 38
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 39
    .local v2, manufacturer:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 40
    .local v1, device:Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 41
    .local v3, model:Ljava/lang/String;
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 42
    .local v4, releaseAPIVersion:Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .local v0, currentapiVersion:I
    const/4 v5, 0x0

    sput v5, Landroid/support/custom/Helper;->features:I

    .line 48
    const/16 v5, 0xf

    if-le v0, v5, :cond_4

    .line 50
    sget v5, Landroid/support/custom/Helper;->features:I

    or-int/lit8 v5, v5, 0x1

    sput v5, Landroid/support/custom/Helper;->features:I

    .line 57
    :goto_0
    if-eqz v4, :cond_0

    const-string v5, "4.0.4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    sget v5, Landroid/support/custom/Helper;->features:I

    or-int/lit8 v5, v5, 0x4

    sput v5, Landroid/support/custom/Helper;->features:I

    .line 64
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "samsung"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 66
    sget v5, Landroid/support/custom/Helper;->features:I

    or-int/lit16 v5, v5, 0x400

    sput v5, Landroid/support/custom/Helper;->features:I

    .line 78
    :cond_1
    :goto_1
    const-string v5, "I9100"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    const-string v5, "I9108"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    const-string v5, "I717"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    const-string v5, "N7000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 84
    const-string v5, "N7003"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 88
    const-string v5, "SGH-I777"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    const-string v5, "SGH-I927"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 90
    const-string v5, "SGH-I727"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 92
    const-string v5, "SGH-N033"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 93
    const-string v5, "SGH-N034"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 94
    const-string v5, "SC-02C"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    const-string v5, "SC-03D"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    const-string v5, "SHW-M250"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    const-string v5, "SPH-D710"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 104
    const-string v5, "SGH-I989"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    const-string v5, "SGH-T989"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 107
    const-string v5, "galaxys2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    :cond_2
    sget v5, Landroid/support/custom/Helper;->features:I

    const/high16 v6, 0x10

    or-int/2addr v5, v6

    sput v5, Landroid/support/custom/Helper;->features:I

    .line 151
    :cond_3
    :goto_2
    return-void

    .line 54
    :cond_4
    sget v5, Landroid/support/custom/Helper;->features:I

    or-int/lit8 v5, v5, 0x2

    sput v5, Landroid/support/custom/Helper;->features:I

    goto/16 :goto_0

    .line 68
    :cond_5
    const-string v5, "HTC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    sget v5, Landroid/support/custom/Helper;->features:I

    or-int/lit16 v5, v5, 0x800

    sput v5, Landroid/support/custom/Helper;->features:I

    goto/16 :goto_1

    .line 115
    :cond_6
    const-string v5, "GT-I9300"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 116
    const-string v5, "GT-I9305"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 117
    const-string v5, "SCH-I535"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 118
    const-string v5, "SPH-L710"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 119
    const-string v5, "SGH-T999"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 120
    const-string v5, "SGH-I747"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 121
    const-string v5, "SCH-R530"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 123
    const-string v5, "SC-06D"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 125
    const-string v5, "SHV-E210"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 127
    const-string v5, "GT-I9308"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 129
    :cond_7
    sget v5, Landroid/support/custom/Helper;->features:I

    const/high16 v6, 0x20

    or-int/2addr v5, v6

    sput v5, Landroid/support/custom/Helper;->features:I

    goto :goto_2

    .line 132
    :cond_8
    const-string v5, "HTC One X"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 133
    const-string v5, "endeavoru"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 135
    :cond_9
    sget v5, Landroid/support/custom/Helper;->features:I

    const/high16 v6, 0x400

    or-int/2addr v5, v6

    sput v5, Landroid/support/custom/Helper;->features:I

    goto/16 :goto_2

    .line 137
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nexus"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 139
    sget v5, Landroid/support/custom/Helper;->features:I

    const/high16 v6, 0x40

    or-int/2addr v5, v6

    sput v5, Landroid/support/custom/Helper;->features:I

    .line 140
    const-string v5, "Nexus 7"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    sget v5, Landroid/support/custom/Helper;->features:I

    const/high16 v6, 0x80

    or-int/2addr v5, v6

    sput v5, Landroid/support/custom/Helper;->features:I

    goto/16 :goto_2

    .line 145
    :cond_b
    const-string v5, "GT-P3100"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    sget v5, Landroid/support/custom/Helper;->features:I

    const/high16 v6, 0x100

    or-int/2addr v5, v6

    sput v5, Landroid/support/custom/Helper;->features:I

    goto/16 :goto_2
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 165
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    .line 166
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
