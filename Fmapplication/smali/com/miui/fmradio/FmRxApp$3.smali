.class Lcom/miui/fmradio/FmRxApp$3;
.super Ljava/lang/Thread;
.source "FmRxApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRxApp;->insertDelayThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRxApp;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp$3;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1279
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmRxApp$3;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$3;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->configPd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/miui/fmradio/FmRxApp;->access$2600(Lcom/miui/fmradio/FmRxApp;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1285
    return-void

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InsertDelayThread()-- Exception!"

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/miui/fmradio/FmRxApp$3;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static {v3}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto :goto_0
.end method
