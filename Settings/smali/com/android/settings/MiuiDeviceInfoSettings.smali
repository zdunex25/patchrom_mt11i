.class public Lcom/android/settings/MiuiDeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiDeviceInfoSettings.java"


# static fields
.field private static final CHANCE:[D

.field private static final PICTURES:[I

.field private static final SOUNDS:[Ljava/lang/String;

.field private static sInternalDevice2Memory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalInternalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x5

    const-wide v4, 0xee6b2800L

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->SOUNDS:[Ljava/lang/String;

    .line 44
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->PICTURES:[I

    .line 51
    new-array v0, v3, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->CHANCE:[D

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    .line 372
    sget-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    const-string v1, "shooteru"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    const-string v1, "endeavoru"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    const-string v1, "pyramid"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    const-string v1, "ville"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    const-string v1, "LT18i"

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    const-string v1, "umts_spyder"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    const-string v1, "edison"

    const-wide v2, 0x1dcd65000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void

    .line 44
    :array_0
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
    .end array-data

    .line 51
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x40t 0x33t 0x33t 0xe3t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xd0t 0x3ft
        0x0t 0x0t 0x0t 0xa0t 0x99t 0x99t 0xb9t 0x3ft
        0x0t 0x0t 0x0t 0x40t 0xe1t 0x7at 0xa4t 0x3ft
        0x0t 0x0t 0x0t 0x40t 0xe1t 0x7at 0x84t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private fillOverview()V
    .locals 35

    .prologue
    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getView()Landroid/view/View;

    move-result-object v29

    .line 315
    .local v29, view:Landroid/view/View;
    const v30, 0x7f080074

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 316
    .local v17, model:Landroid/widget/TextView;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const v30, 0x7f080075

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 318
    .local v19, release:Landroid/widget/TextView;
    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const v30, 0x7f080076

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 320
    .local v16, miuiVersion:Landroid/widget/TextView;
    sget-object v30, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const v30, 0x7f080077

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 322
    .local v9, cpu:Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getCpuInfo()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const v30, 0x7f080078

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 324
    .local v15, memory:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-static {}, Lmiui/os/Environment;->getTotalPhysicalMemory()J

    move-result-wide v31

    const-wide/16 v33, 0x400

    mul-long v31, v31, v33

    invoke-static/range {v30 .. v32}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    .line 325
    .local v27, totalRam:Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v18

    .line 328
    .local v18, path:Ljava/io/File;
    new-instance v20, Landroid/os/StatFs;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 329
    .local v20, stat:Landroid/os/StatFs;
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v30

    move/from16 v0, v30

    int-to-long v7, v0

    .line 330
    .local v7, blockSize:J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v30

    move/from16 v0, v30

    int-to-long v4, v0

    .line 331
    .local v4, availableBlocks:J
    const v30, 0x7f080079

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 332
    .local v13, internalMemoryAvailable:Landroid/widget/TextView;
    const v30, 0x7f0b060e

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    mul-long v33, v4, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const v30, 0x7f08007a

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 335
    .local v14, internalMemoryTotal:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/MiuiDeviceInfoSettings;->getTotalInternalMemory()J

    move-result-wide v24

    .line 336
    .local v24, totalInternalMemroy:J
    const v30, 0x7f0b060f

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 337
    .local v26, totalInternalMemroyStr:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    .line 340
    new-instance v20, Landroid/os/StatFs;

    .end local v20           #stat:Landroid/os/StatFs;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 341
    .restart local v20       #stat:Landroid/os/StatFs;
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v30

    move/from16 v0, v30

    int-to-long v7, v0

    .line 342
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockCount()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 343
    .local v22, totalBlocks:J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v30

    move/from16 v0, v30

    int-to-long v4, v0

    .line 345
    const v30, 0x7f08007e

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 346
    .local v12, deviceSdcardTotal:Landroid/widget/TextView;
    const v30, 0x7f08007d

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 347
    .local v11, deviceSdcardTitle:Landroid/widget/TextView;
    const v30, 0x7f08007b

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 348
    .local v6, availableView:Landroid/view/View;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    .line 349
    .local v21, storageState:Ljava/lang/String;
    const-string v30, "mounted"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 350
    const v30, 0x7f0b060e

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    mul-long v33, v4, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, availSd:Ljava/lang/String;
    const v30, 0x7f0b060f

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    mul-long v33, v22, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 352
    .local v28, totalSd:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const v30, 0x7f08007c

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 355
    .local v10, deviceSdcardAvailable:Landroid/widget/TextView;
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const-string v30, ""

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .end local v3           #availSd:Ljava/lang/String;
    .end local v10           #deviceSdcardAvailable:Landroid/widget/TextView;
    .end local v28           #totalSd:Ljava/lang/String;
    :goto_0
    return-void

    .line 359
    :cond_0
    const v30, 0x7f0b029f

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 360
    const v30, 0x7f0b02bb

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 361
    const/16 v30, 0x8

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/util/MiuiFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCpuInfo()Ljava/lang/String;
    .locals 15

    .prologue
    .line 264
    const/4 v6, 0x0

    .line 266
    .local v6, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/sys/devices/system/cpu"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, cpuDir:Ljava/io/File;
    new-instance v10, Lcom/android/settings/MiuiDeviceInfoSettings$1;

    invoke-direct {v10, p0}, Lcom/android/settings/MiuiDeviceInfoSettings$1;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    invoke-virtual {v2, v10}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, cpus:[Ljava/lang/String;
    const-string v1, ""

    .line 280
    .local v1, cpuCount:Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 281
    const v10, 0x7f0b060c

    invoke-virtual {p0, v10}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_0
    array-length v10, v4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 283
    const v10, 0x7f0b060d

    invoke-virtual {p0, v10}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 285
    .local v0, cpuConfigFile:Ljava/lang/String;
    sget-boolean v10, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lmiui/os/Build;->IS_U9200:Z

    if-eqz v10, :cond_3

    .line 286
    :cond_2
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 288
    :cond_3
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 289
    .local v5, fr:Ljava/io/FileReader;
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v7, v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .local v7, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, str:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 293
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0xc

    add-long/2addr v10, v12

    const-wide/16 v12, 0x19

    div-long/2addr v10, v12

    const-wide/16 v12, 0x19

    mul-long/2addr v10, v12

    long-to-float v3, v10

    .line 294
    .local v3, cpuMaxfreq:F
    const-string v9, "MHz"

    .line 295
    .local v9, unit:Ljava/lang/String;
    const/high16 v10, 0x447a

    cmpl-float v10, v3, v10

    if-ltz v10, :cond_4

    .line 296
    const/high16 v10, 0x447a

    div-float/2addr v3, v10

    .line 297
    const-string v9, "GHz"

    .line 299
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v10

    .line 303
    if-eqz v7, :cond_5

    .line 305
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_0
    move-object v6, v7

    .line 310
    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v3           #cpuMaxfreq:F
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .end local v9           #unit:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :goto_1
    return-object v10

    .line 303
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_9

    .line 305
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v7

    .line 310
    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :cond_7
    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .line 306
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v6, v7

    .line 307
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 301
    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v8           #str:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 303
    :goto_3
    if-eqz v6, :cond_7

    .line 305
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 306
    :catch_2
    move-exception v10

    goto :goto_2

    .line 303
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v6, :cond_8

    .line 305
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 307
    :cond_8
    :goto_5
    throw v10

    .line 306
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v3       #cpuMaxfreq:F
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    .restart local v9       #unit:Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_0

    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v3           #cpuMaxfreq:F
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .end local v9           #unit:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 303
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 301
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v10

    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :cond_9
    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x4

    .line 200
    :try_start_0
    const-string v5, "/proc/version"

    invoke-direct {p0, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, procVersionStr:Ljava/lang/String;
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 212
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v5, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 213
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 215
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex did not match on /proc/version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v5, "Unavailable"

    .line 232
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 218
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 219
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex match on /proc/version only returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " groups"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v5, "Unavailable"

    goto :goto_0

    .line 223
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 227
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Ljava/io/IOException;
    const-string v5, "DeviceInfoSettings"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const-string v5, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 244
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, msv:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 247
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0           #msv:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v1

    .line 254
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 249
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getTotalInternalMemory()J
    .locals 12

    .prologue
    const-wide/32 v10, 0x3b9aca00

    const-wide/16 v8, 0x4

    const-wide/16 v6, 0x1

    .line 382
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 383
    sget-object v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    sget-object v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sInternalDevice2Memory:Ljava/util/HashMap;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    .line 402
    .local v0, line:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    return-wide v2

    .line 388
    .end local v0           #line:Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v2, "/proc/partitions"

    const-string v3, "mmcblk0"

    invoke-static {v2, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .restart local v0       #line:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    const-string v2, " +"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, parts:[Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    .line 392
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/32 v4, 0x7a1200

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 393
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v2, v6

    mul-long/2addr v2, v10

    mul-long/2addr v2, v8

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    goto :goto_0

    .line 398
    .end local v1           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 395
    .restart local v1       #parts:[Ljava/lang/String;
    :cond_2
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v2, v6

    mul-long/2addr v2, v10

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 190
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 192
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private static readLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 415
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 416
    .local v0, line:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 417
    const-string v2, "mmcblk0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 150
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v5, 0x7f05001a

    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0, v8}, Lcom/android/settings/MiuiDeviceInfoSettings;->setHasOptionsMenu(Z)V

    .line 73
    const-string v5, "baseband_version"

    const-string v6, "gsm.version.baseband"

    invoke-direct {p0, v5, v6}, Lcom/android/settings/MiuiDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v5, "build_number"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIUI-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/MiuiDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v5, "kernel_version"

    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "safetylegal"

    const-string v7, "ro.url.safetylegal"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/MiuiDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "baseband_version"

    invoke-virtual {p0, v6}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, act:Landroid/app/Activity;
    const-string v5, "container"

    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 93
    .local v4, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v5, "team"

    invoke-static {v0, v4, v5, v8}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 98
    const-string v5, "contributors"

    invoke-static {v0, v4, v5, v8}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 101
    new-instance v3, Lmiui/widget/HeiHeiGestureView;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lmiui/widget/HeiHeiGestureView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v3, hh:Lmiui/widget/HeiHeiGestureView;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lmiui/widget/HeiHeiGestureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    sget-object v5, Lcom/android/settings/MiuiDeviceInfoSettings;->SOUNDS:[Ljava/lang/String;

    sget-object v6, Lcom/android/settings/MiuiDeviceInfoSettings;->PICTURES:[I

    sget-object v7, Lcom/android/settings/MiuiDeviceInfoSettings;->CHANCE:[D

    invoke-virtual {v3, v5, v6, v7}, Lmiui/widget/HeiHeiGestureView;->setResources([Ljava/lang/String;[I[D)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 106
    .local v2, decorView:Landroid/widget/FrameLayout;
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, child:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 108
    invoke-virtual {v3, v1, v10}, Lmiui/widget/HeiHeiGestureView;->addView(Landroid/view/View;I)V

    .line 109
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    return-void
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 115
    const/4 v1, 0x1

    const v2, 0x7f0b0298

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    .local v0, updateItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 137
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 141
    const/4 v1, 0x1

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 260
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->fillOverview()V

    .line 261
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 122
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040031

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, miuilogo:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 126
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 127
    .local v4, parent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040032

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 130
    .local v1, header:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 131
    return-void
.end method
