.class public Lcom/miui/fmradio/FmRxApp;
.super Landroid/app/Activity;
.source "FmRxApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/ti/fm/FmReceiver$ServiceListener;
.implements Lcom/ti/fm/IFmConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;
    }
.end annotation


# static fields
.field private static final NUMBER_IMAGES:[I

.field public static lastTunedFrequency:Ljava/lang/Float;

.field public static sBand:I

.field public static sChannelSpace:I

.field public static sFmReceiver:Lcom/ti/fm/FmReceiver;

.field private static sdefaultSettingOn:Z


# instance fields
.field private configPd:Landroid/app/ProgressDialog;

.field private configurationState:I

.field private hasInitializedFMReceiver:Z

.field private hidNotification:Z

.field private imgFmMode:Landroid/widget/ImageView;

.field private imgFmVolume:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private mDeEmpFilter:I

.field private mDirection:I

.field mFmInterrupted:Z

.field mFmServiceConnected:Z

.field private mFreqDigits:[Landroid/widget/ImageSwitcher;

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstPlay:Z

.field private mMode:I

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationsReceiver:Landroid/content/BroadcastReceiver;

.field private mPS:Ljava/lang/String;

.field private mPreviousPS:Ljava/lang/String;

.field private mPrintDebugInfo:Z

.field private mRds:Z

.field private mRdsAf:Z

.field private mRdsState:Z

.field private mRdsSystem:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:I

.field private mSeekState:Z

.field private mStatus:Z

.field private mToggleAudio:I

.field private mToggleMode:I

.field private mToggleMute:Z

.field private mVolState:Z

.field private mVolume:I

.field private pd:Landroid/app/ProgressDialog;

.field private preSetRadios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/fmradio/logic/PreSetRadio;",
            ">;"
        }
    .end annotation
.end field

.field private txtPsText:Landroid/widget/TextView;

.field private txtRadioText:Landroid/widget/TextView;

.field private txtStatusMsg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/fmradio/FmRxApp;->NUMBER_IMAGES:[I

    .line 191
    sput-boolean v1, Lcom/miui/fmradio/FmRxApp;->sdefaultSettingOn:Z

    .line 206
    sput v1, Lcom/miui/fmradio/FmRxApp;->sBand:I

    .line 207
    const/4 v0, 0x2

    sput v0, Lcom/miui/fmradio/FmRxApp;->sChannelSpace:I

    .line 209
    const/high16 v0, 0x42af

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    return-void

    .line 176
    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    .line 106
    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 109
    iput-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mIsFirstPlay:Z

    .line 110
    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->hidNotification:Z

    .line 111
    iput-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    .line 122
    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->pd:Landroid/app/ProgressDialog;

    .line 139
    iput v1, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMode:I

    .line 140
    iput v2, p0, Lcom/miui/fmradio/FmRxApp;->mToggleAudio:I

    .line 141
    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    .line 143
    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mRdsState:Z

    .line 145
    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/fmradio/FmRxApp;->mVolume:I

    .line 146
    iput v1, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    .line 147
    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mRds:Z

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mPreviousPS:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mRdsAf:Z

    .line 150
    iput v3, p0, Lcom/miui/fmradio/FmRxApp;->mRdsSystem:I

    .line 151
    iput v3, p0, Lcom/miui/fmradio/FmRxApp;->mDeEmpFilter:I

    .line 152
    iput v1, p0, Lcom/miui/fmradio/FmRxApp;->mRssi:I

    .line 154
    iput v2, p0, Lcom/miui/fmradio/FmRxApp;->mDirection:I

    .line 163
    iput v2, p0, Lcom/miui/fmradio/FmRxApp;->configurationState:I

    .line 168
    iput-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mVolState:Z

    .line 171
    iput-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mSeekState:Z

    .line 196
    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mFmInterrupted:Z

    .line 199
    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mFmServiceConnected:Z

    .line 213
    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->hasInitializedFMReceiver:Z

    .line 429
    new-instance v0, Lcom/miui/fmradio/FmRxApp$2;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRxApp$2;-><init>(Lcom/miui/fmradio/FmRxApp;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;

    .line 1689
    new-instance v0, Lcom/miui/fmradio/FmRxApp$4;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRxApp$4;-><init>(Lcom/miui/fmradio/FmRxApp;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2083
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/FmRxApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FmRxApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/miui/fmradio/FmRxApp;->sdefaultSettingOn:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    sput-boolean p0, Lcom/miui/fmradio/FmRxApp;->sdefaultSettingOn:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->saveDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/fmradio/FmRxApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mIsFirstPlay:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/fmradio/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/miui/fmradio/FmRxApp;->mIsFirstPlay:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->initNotifications()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/fmradio/FmRxApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->hidNotification:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/fmradio/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/miui/fmradio/FmRxApp;->hidNotification:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/fmradio/FmRxApp;FLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FmRxApp;->updateNotification(FLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->txtRadioText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->txtPsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/fmradio/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/miui/fmradio/FmRxApp;->mSeekState:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/miui/fmradio/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/miui/fmradio/FmRxApp;->mVolState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->setRdsConfig()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/fmradio/FmRxApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/miui/fmradio/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/miui/fmradio/FmRxApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mPreviousPS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/fmradio/FmRxApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp;->mPreviousPS:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/miui/fmradio/FmRxApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/miui/fmradio/FmRxApp;->configurationState:I

    return p1
.end method

.method static synthetic access$2400(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/fmradio/FmRxApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/miui/fmradio/FmRxApp;->mVolume:I

    return v0
.end method

.method static synthetic access$2502(Lcom/miui/fmradio/FmRxApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/miui/fmradio/FmRxApp;->mVolume:I

    return p1
.end method

.method static synthetic access$2600(Lcom/miui/fmradio/FmRxApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->configPd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/fmradio/FmRxApp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->readPreSetsDatabase()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->loadDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/fmradio/FmRxApp;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FmRxApp;->updateStation(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/fmradio/FmRxApp;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->seekUp()V

    return-void
.end method

.method static synthetic access$3300(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->seekDown()V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->exitApp()V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/fmradio/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->initControls()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/fmradio/FmRxApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->txtStatusMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/fmradio/FmRxApp;Ljava/lang/Float;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmRxApp;->updateFrequencyDisplay(Ljava/lang/Float;)V

    return-void
.end method

.method private buildServiceIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "command"

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.fm.freexperia.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "EXTRA_COMMAND"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private exitApp()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 1611
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->hasInitializedFMReceiver:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    if-eqz v0, :cond_1

    .line 1622
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/ti/fm/FmReceiver;->disable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1627
    :cond_1
    :goto_1
    return-void

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not cancel notification! E.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v3, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1623
    :catch_1
    move-exception v0

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not disable FM Service! E.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v3, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method private initControls()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1142
    const-string v0, "enter initControls"

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v2, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1144
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;

    .line 1145
    iget v0, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    if-nez v0, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "> setting stereo icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v2, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1147
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1153
    :goto_0
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    .line 1154
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "> initControls  mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v2, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1157
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1173
    :goto_1
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1174
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1177
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->txtStatusMsg:Landroid/widget/TextView;

    .line 1180
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->txtRadioText:Landroid/widget/TextView;

    .line 1181
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->txtPsText:Landroid/widget/TextView;

    .line 1183
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1185
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->initImageSwitcher()V

    .line 1191
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->readPreSetsDatabase()V

    .line 1192
    return-void

    .line 1149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "> setting mono icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v2, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1150
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private initImageSwitcher()V
    .locals 7

    .prologue
    .line 332
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/widget/ImageSwitcher;

    iput-object v4, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    .line 333
    iget-object v5, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v6, 0x0

    const v4, 0x7f090008

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    aput-object v4, v5, v6

    .line 334
    iget-object v5, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v6, 0x1

    const v4, 0x7f090009

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    aput-object v4, v5, v6

    .line 335
    iget-object v5, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v6, 0x2

    const v4, 0x7f09000a

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    aput-object v4, v5, v6

    .line 336
    iget-object v5, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v6, 0x3

    const v4, 0x7f09000b

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    aput-object v4, v5, v6

    .line 337
    iget-object v5, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v6, 0x4

    const v4, 0x7f09000c

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    aput-object v4, v5, v6

    .line 338
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    .local v0, arr$:[Landroid/widget/ImageSwitcher;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 339
    .local v3, switcher:Landroid/widget/ImageSwitcher;
    invoke-virtual {v3, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v3           #switcher:Landroid/widget/ImageSwitcher;
    :cond_0
    sget-object v4, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-direct {p0, v4}, Lcom/miui/fmradio/FmRxApp;->updateFrequencyDisplay(Ljava/lang/Float;)V

    .line 344
    return-void
.end method

.method private initNotifications()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1195
    invoke-static {p0}, Lcom/miui/fmradio/Preferences;->getUseNotifications(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1199
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020017

    const/high16 v2, 0x7f07

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1201
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/fmradio/FmRxApp;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1202
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1203
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1205
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030005

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1206
    const v2, 0x7f09002a

    const-string v3, "clear"

    invoke-direct {p0, v3}, Lcom/miui/fmradio/FmRxApp;->buildServiceIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1207
    const v2, 0x7f090029

    const-string v3, "up"

    invoke-direct {p0, v3}, Lcom/miui/fmradio/FmRxApp;->buildServiceIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1208
    const v2, 0x7f090028

    const-string v3, "down"

    invoke-direct {p0, v3}, Lcom/miui/fmradio/FmRxApp;->buildServiceIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1209
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1211
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1213
    :cond_0
    return-void
.end method

.method private insertDelayThread()V
    .locals 1

    .prologue
    .line 1274
    new-instance v0, Lcom/miui/fmradio/FmRxApp$3;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRxApp$3;-><init>(Lcom/miui/fmradio/FmRxApp;)V

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRxApp$3;->start()V

    .line 1288
    return-void
.end method

.method private loadDefaultConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1104
    const-string v1, "loadDefaultConfiguration()-entered"

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v1, v2, v3}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1105
    const-string v1, "fmConfigPreferences"

    invoke-virtual {p0, v1, v4}, Lcom/miui/fmradio/FmRxApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1108
    .local v0, fmConfigPreferences:Landroid/content/SharedPreferences;
    const-string v1, "BAND"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/miui/fmradio/FmRxApp;->sBand:I

    .line 1109
    const-string v2, "FREQUENCY"

    sget v1, Lcom/miui/fmradio/FmRxApp;->sBand:I

    if-nez v1, :cond_0

    const/high16 v1, 0x42af

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 1112
    const-string v1, "MODE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    .line 1113
    const-string v1, "MUTE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    .line 1114
    const-string v1, "RDS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mRdsState:Z

    .line 1121
    return-void

    .line 1109
    :cond_0
    const/high16 v1, 0x4298

    goto :goto_0
.end method

.method private readPreSetsDatabase()V
    .locals 3

    .prologue
    .line 1219
    new-instance v0, Lcom/miui/fmradio/database/PreSetsDB;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/database/PreSetsDB;-><init>(Landroid/content/Context;)V

    .line 1220
    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDB;->open()Lcom/miui/fmradio/database/PreSetsDB;

    .line 1222
    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDB;->getAllPreSetRadios()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    .line 1224
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1226
    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/database/PreSetsDB;->createPreSetItem(Ljava/lang/String;Ljava/lang/String;)J

    .line 1227
    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDB;->getAllPreSetRadios()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    .line 1230
    :cond_0
    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDB;->close()V

    .line 1232
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1233
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1234
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1235
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1236
    new-instance v1, Lcom/miui/fmradio/adapters/PreSetsAdapter;

    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/miui/fmradio/adapters/PreSetsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1237
    return-void
.end method

.method private saveDefaultConfiguration()V
    .locals 5

    .prologue
    .line 1125
    const-string v2, "saveDefaultConfiguration()-Entered"

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v2, v3, v4}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1127
    const-string v2, "fmConfigPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/miui/fmradio/FmRxApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1129
    .local v1, fmConfigPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1130
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "BAND"

    sget v3, Lcom/miui/fmradio/FmRxApp;->sBand:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1131
    const-string v2, "MUTE"

    iget-boolean v3, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1132
    const-string v2, "FREQUENCY"

    sget-object v3, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1138
    return-void
.end method

.method private seekDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1522
    iput v2, p0, Lcom/miui/fmradio/FmRxApp;->mDirection:I

    .line 1525
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mSeekState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1526
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    iget v1, p0, Lcom/miui/fmradio/FmRxApp;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmReceiver;->seek(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1527
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v0, :cond_1

    .line 1528
    const-string v0, "FmReceiver"

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    iput-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mSeekState:Z

    .line 1531
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->txtStatusMsg:Landroid/widget/TextView;

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private seekUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1539
    iput v1, p0, Lcom/miui/fmradio/FmRxApp;->mDirection:I

    .line 1541
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mSeekState:Z

    if-ne v0, v1, :cond_0

    .line 1542
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    iget v1, p0, Lcom/miui/fmradio/FmRxApp;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmReceiver;->seek(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1543
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v0, :cond_1

    .line 1544
    const-string v0, "FmRadio"

    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mSeekState:Z

    .line 1548
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->txtStatusMsg:Landroid/widget/TextView;

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setRdsConfig()V
    .locals 13

    .prologue
    .line 886
    const-string v10, "setRdsConfig()-entered"

    const/4 v11, 0x4

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 887
    const/4 v10, 0x2

    iput v10, p0, Lcom/miui/fmradio/FmRxApp;->configurationState:I

    .line 888
    const-string v10, "fmConfigPreferences"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 892
    .local v3, fmConfigPreferences:Landroid/content/SharedPreferences;
    const-string v10, "BAND"

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 893
    .local v0, band:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setRdsConfig()--- band= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 894
    sget v10, Lcom/miui/fmradio/FmRxApp;->sBand:I

    if-eq v0, v10, :cond_0

    .line 900
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v10, v0}, Lcom/ti/fm/FmReceiver;->setBand(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 901
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_d

    .line 902
    const-string v10, "setRdsConfig()-- setBand ->Error"

    const/4 v11, 0x6

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 903
    const-string v10, "FmReceiver"

    const v11, 0x7f07006b

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_0
    :goto_0
    const-string v10, "DEEMP"

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 947
    .local v2, deEmp:I
    iget v10, p0, Lcom/miui/fmradio/FmRxApp;->mDeEmpFilter:I

    if-eq v10, v2, :cond_2

    .line 951
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v10, v2}, Lcom/ti/fm/FmReceiver;->setDeEmphasisFilter(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 955
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setRdsConfig()--- DeEmp= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 957
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_1

    .line 958
    const-string v10, "setRdsConfig()-- setDeEmphasisFilter ->Error"

    const/4 v11, 0x6

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 959
    const-string v10, "FmReceiver"

    const v11, 0x7f07006c

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_1
    iput v2, p0, Lcom/miui/fmradio/FmRxApp;->mDeEmpFilter:I

    .line 969
    :cond_2
    const-string v10, "MODE"

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 970
    .local v4, mode:I
    iget v10, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    if-eq v10, v4, :cond_3

    .line 975
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v10, v4}, Lcom/ti/fm/FmReceiver;->setMonoStereoMode(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 977
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_10

    .line 978
    const-string v10, "FmReceiver"

    const v11, 0x7f070066

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_3
    :goto_1
    const-string v10, "CHANNELSPACE"

    const/4 v11, 0x2

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 994
    .local v1, channelSpace:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setChannelSpacing()--- channelSpace= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 995
    sget v10, Lcom/miui/fmradio/FmRxApp;->sChannelSpace:I

    if-eq v1, v10, :cond_5

    .line 1000
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v10, v1}, Lcom/ti/fm/FmReceiver;->setChannelSpacing(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1003
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_4

    .line 1004
    const-string v10, "setChannelSpacing()-- setChannelSpacing ->Error"

    const/4 v11, 0x6

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1005
    const-string v10, "FmReceiver"

    const v11, 0x7f07006d

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_4
    sput v1, Lcom/miui/fmradio/FmRxApp;->sChannelSpace:I

    .line 1013
    :cond_5
    const-string v10, "RDS"

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1014
    .local v7, rdsEnable:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setRDS()--- rdsEnable= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1015
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mRds:Z

    if-eq v10, v7, :cond_7

    .line 1017
    if-eqz v7, :cond_12

    .line 1019
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v10}, Lcom/ti/fm/FmReceiver;->enableRds()Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1021
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_6

    .line 1022
    const-string v10, "setRDS()-- enableRds() ->Error"

    const/4 v11, 0x6

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1023
    const-string v10, "FmReceiver"

    const v11, 0x7f070064

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :cond_6
    :goto_2
    iput-boolean v7, p0, Lcom/miui/fmradio/FmRxApp;->mRds:Z

    .line 1045
    :cond_7
    const-string v10, "RDSSYSTEM"

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1050
    .local v8, rdsSystem:I
    iget v10, p0, Lcom/miui/fmradio/FmRxApp;->mRdsSystem:I

    if-eq v10, v8, :cond_9

    .line 1054
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    const-string v11, "RDSSYSTEM"

    const/4 v12, 0x0

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/ti/fm/FmReceiver;->setRdsSystem(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1058
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_8

    .line 1059
    const-string v10, "setRdsSystem()-- setRdsSystem ->Error"

    const/4 v11, 0x6

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1060
    const-string v10, "FmReceiver"

    const v11, 0x7f07006e

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_8
    iput v8, p0, Lcom/miui/fmradio/FmRxApp;->mRdsSystem:I

    .line 1065
    :cond_9
    const-string v10, "RDSAF"

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1067
    .local v6, rdsAfSwitch:Z
    if-eqz v6, :cond_14

    const/4 v5, 0x1

    .line 1071
    .local v5, rdsAf:I
    :goto_3
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mRdsAf:Z

    if-eq v10, v6, :cond_b

    .line 1075
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v10, v5}, Lcom/ti/fm/FmReceiver;->setRdsAfSwitchMode(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1077
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_a

    .line 1078
    const-string v10, "setRdsAf()-- setRdsAfSwitchMode(1) ->Error"

    const/4 v11, 0x6

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1079
    const-string v10, "FmReceiver"

    const v11, 0x7f07006f

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :cond_a
    iput-boolean v6, p0, Lcom/miui/fmradio/FmRxApp;->mRdsAf:Z

    .line 1084
    :cond_b
    const-string v10, "RSSI"

    const/4 v11, 0x7

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1085
    .local v9, rssiThreshHold:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setRssi()-ENTER --- rssiThreshHold= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1090
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v10, v9}, Lcom/ti/fm/FmReceiver;->setRssiThreshold(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1092
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_c

    .line 1093
    const-string v10, "FmReceiver"

    const v11, 0x7f070070

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_c
    iput v9, p0, Lcom/miui/fmradio/FmRxApp;->mRssi:I

    .line 1098
    const-string v10, "setRdsConfig()-exit"

    const/4 v11, 0x4

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1100
    return-void

    .line 905
    .end local v1           #channelSpace:I
    .end local v2           #deEmp:I
    .end local v4           #mode:I
    .end local v5           #rdsAf:I
    .end local v6           #rdsAfSwitch:Z
    .end local v7           #rdsEnable:Z
    .end local v8           #rdsSystem:I
    .end local v9           #rssiThreshHold:I
    :cond_d
    sput v0, Lcom/miui/fmradio/FmRxApp;->sBand:I

    .line 906
    sget-boolean v10, Lcom/miui/fmradio/FmRxApp;->sdefaultSettingOn:Z

    if-eqz v10, :cond_e

    .line 908
    sget v10, Lcom/miui/fmradio/FmRxApp;->sBand:I

    if-nez v10, :cond_f

    .line 909
    const/high16 v10, 0x42af

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    sput-object v10, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 915
    :cond_e
    :goto_4
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    sget-object v11, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/high16 v12, 0x447a

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/ti/fm/FmReceiver;->tune(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 916
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxApp;->getParent()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "FmReceiver"

    const v12, 0x7f070063

    invoke-virtual {p0, v12}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 911
    :cond_f
    const/high16 v10, 0x4298

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    sput-object v10, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_4

    .line 980
    .restart local v2       #deEmp:I
    .restart local v4       #mode:I
    :cond_10
    iput v4, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    .line 981
    iget v10, p0, Lcom/miui/fmradio/FmRxApp;->mMode:I

    if-nez v10, :cond_11

    .line 982
    iget-object v10, p0, Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;

    const v11, 0x7f020018

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 984
    :cond_11
    iget-object v10, p0, Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;

    const v11, 0x7f02000a

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1028
    .restart local v1       #channelSpace:I
    .restart local v7       #rdsEnable:Z
    :cond_12
    sget-object v10, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v10}, Lcom/ti/fm/FmReceiver;->disableRds()Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1031
    iget-boolean v10, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v10, :cond_13

    .line 1032
    const-string v10, "setRDS()-- disableRds() ->Error"

    const/4 v11, 0x6

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1033
    const-string v10, "FmReceiver"

    const v11, 0x7f070065

    invoke-virtual {p0, v11}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p0, v10, v11}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1035
    :cond_13
    const-string v10, "setRDS()-- disableRds() ->success"

    const/4 v11, 0x6

    iget-boolean v12, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v10, v11, v12}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1037
    iget-object v10, p0, Lcom/miui/fmradio/FmRxApp;->txtPsText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v10, p0, Lcom/miui/fmradio/FmRxApp;->txtRadioText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1067
    .restart local v6       #rdsAfSwitch:Z
    .restart local v8       #rdsSystem:I
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method private startup()V
    .locals 8

    .prologue
    const/high16 v7, 0x447a

    const v6, 0x7f070060

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 349
    sget-object v1, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/ti/fm/FmReceiver;->getFMState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 410
    :goto_0
    return-void

    .line 353
    :sswitch_0
    const-string v1, "startup: FmReceiver.STATE_ENABLED"

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v1, v4, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 355
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->loadDefaultConfiguration()V

    .line 356
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->setContentView(I)V

    .line 358
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last tunned frequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getTunedFrequency()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v1, v2, v3}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 359
    sget-object v1, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/ti/fm/FmReceiver;->getTunedFrequency()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_1
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->initControls()V

    .line 364
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp;->txtStatusMsg:Landroid/widget/TextView;

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to restore freq. E.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2, v5}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 368
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    const-string v1, "startup: FmReceiver.STATE_DISABLED"

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v1, v4, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 370
    sput-boolean v3, Lcom/miui/fmradio/FmRxApp;->sdefaultSettingOn:Z

    .line 372
    sget-object v1, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/ti/fm/FmReceiver;->enable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 373
    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v1, :cond_0

    .line 374
    const-string v1, "FmReceiver"

    invoke-virtual {p0, v6}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :cond_0
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070062

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v5, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FmRxApp;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 385
    :sswitch_2
    const-string v1, "startup: FmReceiver.STATE_DEFAULT"

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v1, v4, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 386
    sput-boolean v3, Lcom/miui/fmradio/FmRxApp;->sdefaultSettingOn:Z

    .line 391
    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mFmInterrupted:Z

    if-nez v1, :cond_3

    .line 392
    sget-object v1, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/ti/fm/FmReceiver;->create()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 393
    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v1, :cond_1

    .line 394
    const-string v1, "FmRadio"

    invoke-virtual {p0, v6}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_1
    sget-object v1, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/ti/fm/FmReceiver;->enable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 398
    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v1, :cond_2

    .line 399
    const-string v1, "FmRadio"

    invoke-virtual {p0, v6}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_2
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070062

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v5, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FmRxApp;->pd:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 406
    :cond_3
    const-string v1, "mFmInterrupted is true dont call enable"

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v1, v4, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateFrequencyDisplay(Ljava/lang/Float;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1943
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1945
    div-int/lit16 v2, v1, 0x3e8

    .line 1946
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v1, v3

    .line 1947
    div-int/lit8 v3, v1, 0x64

    .line 1948
    mul-int/lit8 v4, v3, 0x64

    sub-int/2addr v1, v4

    .line 1949
    div-int/lit8 v4, v1, 0xa

    .line 1950
    mul-int/lit8 v5, v4, 0xa

    sub-int/2addr v1, v5

    .line 1955
    sget-object v5, Lcom/miui/fmradio/FmRxApp;->NUMBER_IMAGES:[I

    .line 1957
    iget-object v6, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    aget-object v6, v6, v0

    aget v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 1958
    iget-object v6, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    aget-object v6, v6, v0

    if-nez v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v6, v0}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 1959
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    aget v2, v5, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 1960
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    aget v2, v5, v4

    invoke-virtual {v0, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 1961
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const v2, 0x7f020016

    invoke-virtual {v0, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 1962
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mFreqDigits:[Landroid/widget/ImageSwitcher;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    aget v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 1963
    return-void
.end method

.method private updateNotification(FLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1246
    invoke-static {p0}, Lcom/miui/fmradio/Preferences;->getUseNotifications(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1248
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020017

    const/high16 v2, 0x7f07

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotification:Landroid/app/Notification;

    .line 1249
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1250
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030005

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1251
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1252
    const v2, 0x7f090026

    float-to-double v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1253
    const v1, 0x7f090027

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1254
    const v1, 0x7f09002a

    const-string v2, "clear"

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FmRxApp;->buildServiceIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1255
    const v1, 0x7f090029

    const-string v2, "up"

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FmRxApp;->buildServiceIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1256
    const v1, 0x7f090028

    const-string v2, "down"

    invoke-direct {p0, v2}, Lcom/miui/fmradio/FmRxApp;->buildServiceIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1264
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp;->mNotification:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1265
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1267
    :cond_0
    return-void
.end method

.method private updateStation(IZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1984
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1985
    const/high16 v0, 0x7f03

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1986
    const v0, 0x7f070074

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 1987
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1988
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1989
    const v0, 0x7f090001

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 1990
    const/high16 v0, 0x7f09

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1992
    if-eqz p2, :cond_1

    .line 1993
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v0}, Lcom/miui/fmradio/logic/PreSetRadio;->getStationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2000
    :cond_0
    :goto_0
    new-instance v0, Lcom/miui/fmradio/FmRxApp$5;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/fmradio/FmRxApp$5;-><init>(Lcom/miui/fmradio/FmRxApp;Landroid/widget/EditText;Landroid/app/Dialog;IZ)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2027
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2028
    return-void

    .line 1995
    :cond_1
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mRds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1930
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1931
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1932
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1934
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1291
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1292
    const-string v0, "onActivityResult called"

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v4, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1294
    packed-switch p1, :pswitch_data_0

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1296
    :pswitch_0
    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 1298
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1299
    if-eqz v0, :cond_0

    .line 1301
    const-string v1, "FREQUENCY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 1302
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmRxApp;->updateFrequencyDisplay(Ljava/lang/Float;)V

    .line 1303
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    sget-object v1, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmReceiver;->tune(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1304
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v0, :cond_0

    .line 1305
    const-string v0, "FmReceiver"

    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityFmRdsConfig configurationState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/fmradio/FmRxApp;->configurationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v4, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1315
    iget v0, p0, Lcom/miui/fmradio/FmRxApp;->configurationState:I

    if-ne v0, v3, :cond_0

    .line 1318
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->setRdsConfig()V

    .line 1319
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FmRxApp;->configPd:Landroid/app/ProgressDialog;

    .line 1323
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->insertDelayThread()V

    goto :goto_0

    .line 1294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1473
    packed-switch v0, :pswitch_data_0

    .line 1518
    :goto_0
    :pswitch_0
    return-void

    .line 1476
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_RXFREQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/miui/fmradio/FmRxApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1480
    :pswitch_2
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    if-eqz v0, :cond_0

    .line 1481
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v0, v3}, Lcom/ti/fm/FmReceiver;->setMuteMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1485
    :goto_1
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v0, :cond_1

    .line 1486
    const-string v0, "FmRadio"

    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1483
    :cond_0
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v0, v2}, Lcom/ti/fm/FmReceiver;->setMuteMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    goto :goto_1

    .line 1488
    :cond_1
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    if-eqz v0, :cond_2

    .line 1489
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1490
    iput-boolean v3, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    goto :goto_0

    .line 1492
    :cond_2
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1493
    iput-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z

    goto :goto_0

    .line 1499
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->seekDown()V

    goto :goto_0

    .line 1514
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->seekUp()V

    goto :goto_0

    .line 1473
    nop

    :pswitch_data_0
    .packed-switch 0x7f090010
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 1659
    const-string v0, "onConfigurationChanged"

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1660
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1662
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-static {p0}, Lcom/miui/fmradio/Preferences;->getPrintDebugInfo(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    .line 225
    iput-object p0, p0, Lcom/miui/fmradio/FmRxApp;->mContext:Landroid/content/Context;

    .line 228
    if-eqz p1, :cond_0

    .line 229
    const-string v4, "fm_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 230
    .local v2, fmState:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 231
    const-string v4, "fm_interrupted"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/fmradio/FmRxApp;->mFmInterrupted:Z

    .line 235
    .end local v2           #fmState:Landroid/os/Bundle;
    :cond_0
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 236
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxApp;->setVolumeControlStream(I)V

    .line 240
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.ti.fm.rx.intent.action.FM_ENABLED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v4, "com.ti.fm.rx.intent.action.FM_DISABLED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v4, "com.ti.fm.rx.intent.action.GET_FREQUENCY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v4, "com.ti.fm.rx.intent.action.SEEK_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v4, "com.ti.fm.rx.intent.action.BAND_CHANGE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v4, "com.ti.fm.rx.intent.action.GET_CHANNEL_SPACE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v4, "com.ti.fm.rx.intent.action.SET_MODE_MONOSTEREO"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v4, "com.ti.fm.rx.intent.action.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v4, "com.ti.fm.rx.intent.action.RDS_TEXT_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v4, "com.ti.fm.rx.intent.action.PS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v4, "com.ti.fm.rx.intent.action.AUDIO_PATH_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v4, "com.ti.fm.rx.intent.action.TUNE_COMPLETE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v4, "com.ti.fm.rx.intent.action.SEEK_STOP_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v4, "com.ti.fm.rx.intent.action.MUTE_CHANGE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v4, "com.ti.fm.rx.intent.action.DISPLAY_MODE_MONO_STEREO_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v4, "com.ti.fm.rx.intent.action.ENABLE_RDS_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v4, "com.ti.fm.rx.intent.action.DISABLE_RDS_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v4, "com.ti.fm.rx.intent.action.SET_RDS_AF_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v4, "com.ti.fm.rx.intent.action.SET_RDS_SYSTEM_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v4, "com.ti.fm.rx.intent.action.SET_DEEMP_FILTER_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v4, "com.ti.fm.rx.intent.action.SET_RSSI_THRESHHOLD_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v4, "com.ti.fm.rx.intent.action.SET_RF_DEPENDENT_MUTE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v4, "com.ti.fm.rx.intent.action.PI_CODE_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v4, "com.ti.fm.rx.intent.action.MASTER_VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v4, "com.ti.fm.rx.intent.action.CHANNEL_SPACING_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v4, "com.ti.fm.rx.intent.action.COMPLETE_SCAN_DONE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v4, "com.ti.fm.rx.intent.action.COMPLETE_SCAN_STOP_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v4, "com.ti.fm.rx.intent.action.GET_BAND_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v4, "com.ti.fm.rx.intent.action.GET_MONO_STEREO_MODE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v4, "com.ti.fm.rx.intent.action.GET_MUTE_MODE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v4, "com.ti.fm.rx.intent.action.GET_RF_MUTE_MODE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v4, "com.ti.fm.rx.intent.action.GET_RSSI_THRESHHOLD_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v4, "com.ti.fm.rx.intent.action.GET_DEEMPHASIS_FILTER_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v4, "com.ti.fm.rx.intent.action.GET_VOLUME_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v4, "com.ti.fm.rx.intent.action.GET_RDS_SYSTEM_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v4, "com.ti.fm.rx.intent.action.GET_RDS_GROUPMASK_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v4, "com.ti.fm.rx.intent.action.GET_RDS_AF_SWITCH_MODE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v4, "com.ti.fm.rx.intent.action.GET_RSSI_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v4, "com.ti.fm.rx.intent.action.COMPLETE_SCAN_PROGRESS_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v4, "com.ti.fm.rx.intent.action.SET_RDS_AF_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v4, "com.ti.fm.rx.intent.action.SET_RF_DEPENDENT_MUTE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v4, "com.ti.fm.rx.intent.action.SET_CHANNEL_SPACE_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/miui/fmradio/FmRxApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/miui/fmradio/FmRxApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/fmradio/FmRxApp;->hasInitializedFMReceiver:Z

    .line 292
    new-instance v4, Lcom/ti/fm/FmReceiver;

    invoke-direct {v4, p0, p0}, Lcom/ti/fm/FmReceiver;-><init>(Landroid/content/Context;Lcom/ti/fm/FmReceiver$ServiceListener;)V

    sput-object v4, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    .line 295
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.fm.freexperia.NOTIFICATION"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    new-instance v4, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;

    invoke-direct {v4, p0}, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;-><init>(Lcom/miui/fmradio/FmRxApp;)V

    iput-object v4, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationsReceiver:Landroid/content/BroadcastReceiver;

    .line 298
    iget-object v4, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/miui/fmradio/FmRxApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 301
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07007a

    invoke-virtual {p0, v5}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/miui/fmradio/FmRxApp$1;

    invoke-direct {v6, p0}, Lcom/miui/fmradio/FmRxApp$1;-><init>(Lcom/miui/fmradio/FmRxApp;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1556
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1559
    const/4 v0, 0x3

    const v1, 0x7f07003d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1560
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1562
    const/4 v0, 0x2

    const v1, 0x7f07003c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1563
    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1565
    const/4 v0, 0x5

    const v1, 0x7f07003f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1566
    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1568
    const/4 v0, 0x4

    const v1, 0x7f07003e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1569
    const v1, 0x7f02001c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1571
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1673
    const-string v0, "onDestroy"

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1674
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1679
    iget-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->hasInitializedFMReceiver:Z

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1681
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->mNotificationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1683
    :cond_0
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    if-eqz v0, :cond_1

    .line 1684
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/ti/fm/FmReceiver;->close()V

    .line 1685
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 1967
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v0}, Lcom/miui/fmradio/logic/PreSetRadio;->isStationSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v0}, Lcom/miui/fmradio/logic/PreSetRadio;->getStationFrequency()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v0}, Lcom/miui/fmradio/logic/PreSetRadio;->getStationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/fmradio/FmRxApp;->tuneStationFrequency(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/miui/fmradio/FmRxApp;->updateStation(IZ)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2033
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_0

    .line 2034
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2035
    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2036
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2038
    new-instance v2, Lcom/miui/fmradio/FmRxApp$6;

    invoke-direct {v2, p0, p3}, Lcom/miui/fmradio/FmRxApp$6;-><init>(Lcom/miui/fmradio/FmRxApp;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2072
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2073
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2075
    :cond_0
    return v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    .line 1335
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v0

    .line 1418
    :goto_0
    return v1

    .line 1338
    :pswitch_1
    const-string v0, "Back Key Pressed."

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1339
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->saveDefaultConfiguration()V

    .line 1340
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->exitApp()V

    goto :goto_0

    .line 1345
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getTunedFrequency()  returned Tuned Freq = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getTunedFrequency()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1349
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getRssiThreshold()    returned RSSI threshold = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getRssiThreshold()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1353
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getBand() returned Band  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getBand()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1357
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getDeEmphasisFilter()    returned De-emp  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getDeEmphasisFilter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1361
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getMonoStereoMode() returned MonoStereo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getMonoStereoMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1365
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getMuteMode()  returned MuteMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getMuteMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1369
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getRdsAfSwitchMode()    returned RdsAfSwitchMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getRdsAfSwitchMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1373
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getRdsGroupMask() returned RdsGrpMask = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getRdsGroupMask()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1377
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getRdsSystem() returned Rds System = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getRdsSystem()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1381
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getRfDependentMuteMode()    returned RfDepndtMuteMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getRfDependentMuteMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1385
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getRssi()    returned value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getRssi()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1389
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing isValidChannel()    returned isValidChannel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->isValidChannel()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1393
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getFwVersion()    returned getFwVersion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getFwVersion()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1397
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getChannelSpacing()    returned getChannelSpacing = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getChannelSpacing()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1401
    :pswitch_10
    const-string v0, "Testing completeScan()"

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1402
    sget-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/ti/fm/FmReceiver;->completeScan()Z

    goto/16 :goto_0

    .line 1406
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing getCompleteScanProgress()    returned scan progress = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->getCompleteScanProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1410
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing stopCompleteScan()    returned status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/ti/fm/FmReceiver;->stopCompleteScan()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1414
    :pswitch_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing setRfDependentMuteMode()    returned RfDepndtMuteMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    sget-object v4, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    invoke-virtual {v4}, Lcom/ti/fm/FmReceiver;->getRfDependentMuteMode()I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ti/fm/FmReceiver;->setRfDependentMuteMode(I)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v5, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 1335
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1576
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1601
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1580
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/fmradio/Preferences;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1581
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1586
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RDS_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1587
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/fmradio/FmRxApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1591
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->exitApp()V

    goto :goto_0

    .line 1596
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_RXHELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1576
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1647
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1648
    const-string v0, "onPause"

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1650
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1654
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->saveDefaultConfiguration()V

    .line 1656
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1665
    const-string v0, "onResume"

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1666
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1667
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1668
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->startup()V

    .line 1670
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1631
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1632
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mFmInterrupted:Z

    .line 1635
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1636
    const-string v1, "fm_interrupted"

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mFmInterrupted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1638
    const-string v1, "fm_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1639
    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 413
    const-string v0, "onServiceConnected"

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mFmServiceConnected:Z

    .line 415
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->startup()V

    .line 416
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 419
    const-string v0, "Lost connection to service"

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxApp;->mFmServiceConnected:Z

    .line 421
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    .line 422
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1642
    const-string v0, "onStart"

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1643
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1644
    return-void
.end method

.method public showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 878
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 882
    return-void
.end method

.method tuneStationFrequency(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    .line 1438
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1439
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 1440
    const/high16 v1, 0x4120

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastTunedFrequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v1, v2, v3}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1443
    sget-object v1, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    sget-object v2, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Lcom/ti/fm/FmReceiver;->tune(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    .line 1444
    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mStatus:Z

    if-nez v1, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxApp;->getParent()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "FmReceiver"

    const v3, 0x7f070063

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_0
    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mIsFirstPlay:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->hidNotification:Z

    if-nez v1, :cond_1

    .line 1449
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mIsFirstPlay:Z

    .line 1450
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxApp;->initNotifications()V

    .line 1454
    :cond_1
    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->hidNotification:Z

    if-nez v1, :cond_2

    .line 1455
    invoke-direct {p0, v0, p2}, Lcom/miui/fmradio/FmRxApp;->updateNotification(FLjava/lang/String;)V

    .line 1468
    :cond_2
    :goto_0
    return-void

    .line 1459
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Enter valid frequency!!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    const-string v0, "nfe"

    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z

    invoke-static {v0, v4, v1}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto :goto_0
.end method
