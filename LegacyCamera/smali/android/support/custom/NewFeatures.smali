.class public Landroid/support/custom/NewFeatures;
.super Ljava/lang/Object;
.source "NewFeatures.java"


# static fields
.field private static final PANEL_LDPI:I = 0x4e

.field private static final PANEL_MDPI:I = 0x6c

.field private static final PANEL_TABLET:I = 0x10e

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field private static TAG:Ljava/lang/String;

.field private static storageSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "NewFeatures"

    sput-object v0, Landroid/support/custom/NewFeatures;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "void"

    sput-object v0, Landroid/support/custom/NewFeatures;->storageSource:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMinControlPanelSize(III)I
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "measured"

    .prologue
    .line 158
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 160
    .local v0, small:I
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_1

    const/16 v1, 0x4e

    if-ge p2, v1, :cond_1

    .line 162
    const/16 p2, 0x4e

    .line 172
    :cond_0
    :goto_0
    return p2

    .line 164
    :cond_1
    const/16 v1, 0x168

    if-gt v0, v1, :cond_2

    const/16 v1, 0x6c

    if-ge p2, v1, :cond_2

    .line 166
    const/16 p2, 0x6c

    .line 167
    goto :goto_0

    .line 168
    :cond_2
    invoke-static {}, Lcom/android/cameraics/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10e

    if-ge p2, v1, :cond_0

    .line 170
    const/16 p2, 0x10e

    goto :goto_0
.end method

.method public static getExtraStorageSource()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 45
    sget-object v7, Landroid/support/custom/NewFeatures;->storageSource:Ljava/lang/String;

    if-eqz v7, :cond_0

    sget-object v7, Landroid/support/custom/NewFeatures;->storageSource:Ljava/lang/String;

    const-string v8, "void"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 47
    :cond_0
    sget-object v1, Landroid/support/custom/NewFeatures;->storageSource:Ljava/lang/String;

    .line 106
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 50
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 53
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "/mnt/sdcard-ext"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v7, "/mnt/external_sd"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v7, "/mnt/emmc"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v7, "/mnt/sdcard/external_sd"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v7, "/mnt/sdcard/_ExternalSD"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v7, "/mnt/sdcard2"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v7, "/Removable/MicroSD"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v7, "/mnt/extSdCard"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v7, "/storage/sdcard1"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v7, "/mnt/sdcard/ext_sd"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v7, "/storage/extSdCard"

    const-string v8, "ok"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    new-instance v7, Ljava/io/File;

    const-string v8, "/system/etc/vold.fstab"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 77
    .local v5, scanner:Ljava/util/Scanner;
    :cond_2
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_3

    .line 105
    .end local v5           #scanner:Ljava/util/Scanner;
    :goto_1
    sput-object v6, Landroid/support/custom/NewFeatures;->storageSource:Ljava/lang/String;

    move-object v1, v6

    .line 106
    goto :goto_0

    .line 78
    .restart local v5       #scanner:Ljava/util/Scanner;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, line:Ljava/lang/String;
    const-string v7, "dev_mount"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, lineElements:[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v1, v3, v7

    .line 84
    .local v1, element:Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    const/4 v7, 0x0

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_4
    sget-object v7, Landroid/support/custom/NewFeatures;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    sput-object v1, Landroid/support/custom/NewFeatures;->storageSource:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 99
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #lineElements:[Ljava/lang/String;
    .end local v5           #scanner:Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    sget-object v7, Landroid/support/custom/NewFeatures;->TAG:Ljava/lang/String;

    const-string v8, "getExtraStorageSource error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setMuteMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 27
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 29
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 31
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 33
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 35
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 37
    return-void
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 7
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/cameraics/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    sget-object v3, Landroid/support/custom/NewFeatures;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Uri invalid. uri="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v3, 0x3

    new-array v2, v3, [Landroid/content/Intent;

    const/4 v3, 0x0

    .line 122
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.REVIEW"

    invoke-direct {v4, v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v2, v3

    .line 124
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x2

    .line 125
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v2, v3

    .line 128
    .local v2, intentArray:[Landroid/content/Intent;
    aget-object v3, v2, v6

    const-string v4, "BROWSE_IMAGE_EXTERNAL_LAUNCH"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    aget-object v3, v2, v6

    const-string v4, "com.motorola.blurgallery"

    const-string v5, "com.motorola.cgallery.BrowseImages"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    aget-object v3, v2, v6

    invoke-virtual {v3, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    aget-object v3, v2, v6

    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 138
    :try_start_0
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Landroid/support/custom/NewFeatures;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": review image fail. uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
