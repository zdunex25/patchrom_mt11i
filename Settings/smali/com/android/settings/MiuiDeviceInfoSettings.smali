.class public Lcom/android/settings/MiuiDeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiDeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;,
        Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    }
.end annotation


# static fields
.field private static final CHANCE:[D

.field private static final PICTURES:[I

.field private static final SOUNDS:[Ljava/lang/String;

.field private static sTotalInternalMemory:J


# instance fields
.field private mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

.field private mMeasurementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUpdateHandler:Landroid/os/Handler;

.field private receiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 51
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

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->PICTURES:[I

    .line 65
    new-array v0, v3, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->CHANCE:[D

    return-void

    .line 58
    nop

    :array_0
    .array-data 0x4
        0x49t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 65
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
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 480
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v0}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    .line 481
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v0}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    .line 524
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDeviceInfoSettings$2;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MiuiDeviceInfoSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->fillOverview()V

    return-void
.end method

.method private fillOverview()V
    .locals 34

    .prologue
    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getView()Landroid/view/View;

    move-result-object v28

    .line 377
    .local v28, view:Landroid/view/View;
    const v29, 0x7f08006f

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 378
    .local v18, model:Landroid/widget/TextView;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const v29, 0x7f080070

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 380
    .local v20, release:Landroid/widget/TextView;
    sget-object v29, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const v29, 0x7f080071

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 382
    .local v17, miuiVersion:Landroid/widget/TextView;
    sget-object v29, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const v29, 0x7f080072

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 386
    .local v11, cpuView:Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getCpuInfo()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const v29, 0x7f080073

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 389
    .local v16, memoryView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lmiui/os/Environment;->getTotalPhysicalMemory(Landroid/content/Context;)J

    move-result-wide v29

    const-wide/16 v31, 0x400

    mul-long v29, v29, v31

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v26

    .line 390
    .local v26, totalRam:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v29, 0x7f080075

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 394
    .local v22, totalInternalMemoryView:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/MiuiDeviceInfoSettings;->getTotalInternalMemory()J

    move-result-wide v23

    .line 395
    .local v23, totalInternalMemroy:J
    const v29, 0x7f0b0691

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->miuiFormatSize(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 396
    .local v25, totalInternalMemroyStr:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    .line 400
    .local v6, availableSize:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090011

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 401
    .local v15, isStatInternalSdcardInfo:Z
    if-eqz v15, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    move-wide/from16 v29, v0

    add-long v6, v6, v29

    .line 405
    :cond_0
    sget-boolean v29, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v29, :cond_1

    sget-boolean v29, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-eqz v29, :cond_2

    .line 406
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v19

    .line 407
    .local v19, path:Ljava/io/File;
    new-instance v21, Landroid/os/StatFs;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 408
    .local v21, stat:Landroid/os/StatFs;
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v29

    move/from16 v0, v29

    int-to-long v9, v0

    .line 409
    .local v9, blockSize:J
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    mul-long v29, v29, v9

    add-long v6, v6, v29

    .line 412
    .end local v9           #blockSize:J
    .end local v19           #path:Ljava/io/File;
    .end local v21           #stat:Landroid/os/StatFs;
    :cond_2
    const v29, 0x7f080074

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 413
    .local v4, availableInternalMemoryView:Landroid/widget/TextView;
    const v29, 0x7f0b0690

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/MiuiDeviceInfoSettings;->miuiFormatSize(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, availableInternalMemroyStr:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const v29, 0x7f080079

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 417
    .local v14, deviceSdcardTotal:Landroid/widget/TextView;
    const v29, 0x7f080078

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 418
    .local v13, deviceSdcardTitle:Landroid/widget/TextView;
    const v29, 0x7f080076

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 420
    .local v8, availableView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-eqz v29, :cond_3

    if-eqz v15, :cond_4

    .line 421
    :cond_3
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :goto_0
    return-void

    .line 425
    :cond_4
    const v29, 0x7f0b0690

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->miuiFormatSize(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, availSd:Ljava/lang/String;
    const v29, 0x7f0b0691

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->miuiFormatSize(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 427
    .local v27, totalSd:Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    const v29, 0x7f080077

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 431
    .local v12, deviceSdcardAvailable:Landroid/widget/TextView;
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCpuInfo()Ljava/lang/String;
    .locals 15

    .prologue
    .line 326
    const/4 v6, 0x0

    .line 328
    .local v6, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/sys/devices/system/cpu"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v2, cpuDir:Ljava/io/File;
    new-instance v10, Lcom/android/settings/MiuiDeviceInfoSettings$1;

    invoke-direct {v10, p0}, Lcom/android/settings/MiuiDeviceInfoSettings$1;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    invoke-virtual {v2, v10}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, cpus:[Ljava/lang/String;
    const-string v1, ""

    .line 342
    .local v1, cpuCount:Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 343
    const v10, 0x7f0b068e

    invoke-virtual {p0, v10}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_0
    array-length v10, v4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 345
    const v10, 0x7f0b068f

    invoke-virtual {p0, v10}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 347
    .local v0, cpuConfigFile:Ljava/lang/String;
    sget-boolean v10, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lmiui/os/Build;->IS_U9200:Z

    if-eqz v10, :cond_3

    .line 348
    :cond_2
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 350
    :cond_3
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 351
    .local v5, fr:Ljava/io/FileReader;
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v7, v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .local v7, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, str:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 355
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

    .line 356
    .local v3, cpuMaxfreq:F
    const-string v9, "MHz"

    .line 357
    .local v9, unit:Ljava/lang/String;
    const/high16 v10, 0x447a

    cmpl-float v10, v3, v10

    if-ltz v10, :cond_4

    .line 358
    const/high16 v10, 0x447a

    div-float/2addr v3, v10

    .line 359
    const-string v9, "GHz"

    .line 361
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

    .line 365
    if-eqz v7, :cond_5

    .line 367
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_0
    move-object v6, v7

    .line 372
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

    .line 365
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

    .line 367
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v7

    .line 372
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

    .line 368
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

    .line 369
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 363
    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v8           #str:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 365
    :goto_3
    if-eqz v6, :cond_7

    .line 367
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 368
    :catch_2
    move-exception v10

    goto :goto_2

    .line 365
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v6, :cond_8

    .line 367
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 369
    :cond_8
    :goto_5
    throw v10

    .line 368
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

    .line 365
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

    .line 363
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

    .line 254
    :try_start_0
    const-string v5, "/proc/version"

    invoke-direct {p0, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, procVersionStr:Ljava/lang/String;
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 266
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v5, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 267
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 269
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
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

    .line 271
    const-string v5, "Unavailable"

    .line 286
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 272
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 273
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

    .line 275
    const-string v5, "Unavailable"

    goto :goto_0

    .line 277
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

    .line 281
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 282
    .local v1, e:Ljava/io/IOException;
    const-string v5, "DeviceInfoSettings"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    const-string v5, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 298
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, msv:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 301
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0           #msv:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v1

    .line 308
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 303
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

    .line 439
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 442
    :try_start_0
    const-string v2, "/proc/partitions"

    const-string v3, "mmcblk0"

    invoke-static {v2, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, line:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    const-string v2, " +"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, parts:[Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    .line 446
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/32 v4, 0x7a1200

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 447
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v2, v6

    mul-long/2addr v2, v10

    mul-long/2addr v2, v8

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v1           #parts:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    return-wide v2

    .line 449
    .restart local v1       #parts:[Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v2, v6

    mul-long/2addr v2, v10

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 452
    .end local v1           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private miuiFormatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/util/MiuiFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 242
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 244
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 246
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
    .line 466
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 468
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 469
    .local v0, line:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    const-string v2, "mmcblk0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 476
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
    .line 204
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
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
    .line 218
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

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
    .line 227
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v11, 0x7f05001b

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 90
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiDeviceInfoSettings;->setHasOptionsMenu(Z)V

    .line 92
    const-string v11, "baseband_version"

    const-string v12, "gsm.version.baseband"

    invoke-direct {p0, v11, v12}, Lcom/android/settings/MiuiDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v11, "build_number"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MIUI-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/settings/MiuiDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v11, "kernel_version"

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "safetylegal"

    const-string v13, "ro.url.safetylegal"

    invoke-direct {p0, v11, v12, v13}, Lcom/android/settings/MiuiDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "baseband_version"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 111
    .local v0, act:Landroid/app/Activity;
    const-string v11, "container"

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 112
    .local v6, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v11, "team"

    const/4 v12, 0x1

    invoke-static {v0, v6, v11, v12}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 117
    const-string v11, "contributors"

    const/4 v12, 0x1

    invoke-static {v0, v6, v11, v12}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 120
    const-string v11, "storage"

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageManager;

    iput-object v11, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 121
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    .line 122
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    .line 123
    iget-object v11, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v11}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    .line 124
    .local v10, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v9, 0x0

    .line 125
    .local v9, storagePath:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v11, v10

    if-ge v4, v11, :cond_3

    .line 126
    aget-object v11, v10, v4

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 127
    const-string v11, "mounted"

    iget-object v12, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v12, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 128
    aget-object v12, v10, v4

    if-nez v4, :cond_2

    const/4 v11, 0x1

    :goto_1
    invoke-static {v0, v12, v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v5

    .line 130
    .local v5, measurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    new-instance v8, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;

    aget-object v11, v10, v4

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    invoke-direct {v8, p0, v11}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;Z)V

    .line 131
    .local v8, receiver:Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
    iget-object v11, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v5, v8}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 133
    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 134
    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 135
    iget-object v11, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v5           #measurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    .end local v8           #receiver:Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 139
    :cond_3
    sget-boolean v11, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v11, :cond_4

    .line 140
    const-string v11, "user_manual"

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 141
    .local v7, preference:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    .end local v7           #preference:Landroid/preference/Preference;
    :cond_4
    new-instance v3, Lmiui/widget/HeiHeiGestureView;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v3, v11}, Lmiui/widget/HeiHeiGestureView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v3, hh:Lmiui/widget/HeiHeiGestureView;
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Lmiui/widget/HeiHeiGestureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    sget-object v11, Lcom/android/settings/MiuiDeviceInfoSettings;->SOUNDS:[Ljava/lang/String;

    sget-object v12, Lcom/android/settings/MiuiDeviceInfoSettings;->PICTURES:[I

    sget-object v13, Lcom/android/settings/MiuiDeviceInfoSettings;->CHANCE:[D

    invoke-virtual {v3, v11, v12, v13}, Lmiui/widget/HeiHeiGestureView;->setResources([Ljava/lang/String;[I[D)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 149
    .local v2, decorView:Landroid/widget/FrameLayout;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, child:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 151
    const/4 v11, 0x0

    invoke-virtual {v3, v1, v11}, Lmiui/widget/HeiHeiGestureView;->addView(Landroid/view/View;I)V

    .line 152
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    return-void
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 169
    const/4 v1, 0x1

    const v2, 0x7f0b02b3

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, updateItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 314
    .local v1, storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    goto :goto_0

    .line 316
    .end local v1           #storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 317
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 191
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 195
    const/4 v1, 0x1

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 158
    const-string v1, "user_manual"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MIUI_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 163
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 321
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 322
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->fillOverview()V

    .line 323
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 176
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04002f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 179
    .local v3, miuilogo:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 180
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 181
    .local v4, parent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 183
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040030

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, header:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 185
    return-void
.end method
