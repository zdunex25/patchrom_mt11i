.class Lcom/miui/fmradio/FmRxApp$4;
.super Landroid/content/BroadcastReceiver;
.source "FmRxApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmRxApp;
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
    .line 1689
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1694
    .local v8, fmAction:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "enter onReceive: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v33

    invoke-static/range {v31 .. v33}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1695
    const-string v31, "com.ti.fm.rx.intent.action.FM_ENABLED"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1698
    :cond_0
    const-string v31, "com.ti.fm.rx.intent.action.FM_DISABLED"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x2

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1702
    :cond_1
    const-string v31, "com.ti.fm.rx.intent.action.SET_MODE_MONOSTEREO"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x3

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1705
    :cond_2
    const-string v31, "com.ti.fm.rx.intent.action.DISPLAY_MODE_MONO_STEREO_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 1706
    const-string v31, "com.ti.fm.rx.intent.MODE_MONO_STEREO"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 1707
    .local v22, modeDisplay:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0xb

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1710
    .end local v22           #modeDisplay:Ljava/lang/Integer;
    :cond_3
    const-string v31, "com.ti.fm.rx.intent.action.RDS_TEXT_CHANGED"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 1719
    const-string v31, "com.ti.fm.rx.intent.RADIOTEXT_CONVERTED_VALUE"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1720
    .local v27, rdstext:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x9

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1723
    .end local v27           #rdstext:Ljava/lang/String;
    :cond_4
    const-string v31, "com.ti.fm.rx.intent.action.PI_CODE_CHANGED_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 1724
    const-string v31, "com.ti.fm.rx.intent.PI"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 1725
    .local v25, pi:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x19

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1728
    .end local v25           #pi:Ljava/lang/Integer;
    :cond_5
    const-string v31, "com.ti.fm.rx.intent.action.TUNE_COMPLETE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 1729
    const-string v31, "com.ti.fm.rx.intent.TUNED_FREQUENCY"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 1730
    .local v30, tuneFreq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x6

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1733
    .end local v30           #tuneFreq:I
    :cond_6
    const-string v31, "com.ti.fm.rx.intent.action.COMPLETE_SCAN_PROGRESS_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 1734
    const-string v31, "com.ti.fm.rx.intent.SCAN_PROGRESS"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 1735
    .local v26, progress:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1739
    .end local v26           #progress:I
    :cond_7
    const-string v31, "com.ti.fm.rx.intent.action.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x5

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1743
    :cond_8
    const-string v31, "com.ti.fm.rx.intent.action.MUTE_CHANGE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x7

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1747
    :cond_9
    const-string v31, "com.ti.fm.rx.intent.action.SEEK_STOP_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 1748
    const-string v31, "com.ti.fm.rx.intent.SEEK_FREQUENCY"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1749
    .local v9, freq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1752
    .end local v9           #freq:I
    :cond_a
    const-string v31, "com.ti.fm.rx.intent.action.SEEK_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 1753
    const-string v31, "com.ti.fm.rx.intent.SEEK_FREQUENCY"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1754
    .restart local v9       #freq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1757
    .end local v9           #freq:I
    :cond_b
    const-string v31, "com.ti.fm.rx.intent.action.BAND_CHANGE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0xa

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1761
    :cond_c
    const-string v31, "com.ti.fm.rx.intent.action.GET_CHANNEL_SPACE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 1762
    const-string v31, "com.ti.fm.rx.intent.GET_CHANNEL_SPACE"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1763
    .local v4, chSpace:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x18

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1766
    .end local v4           #chSpace:Ljava/lang/Long;
    :cond_d
    const-string v31, "com.ti.fm.rx.intent.action.SET_CHANNEL_SPACE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x15

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1770
    :cond_e
    const-string v31, "com.ti.fm.rx.intent.action.GET_RDS_AF_SWITCH_MODE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 1771
    const-string v31, "com.ti.fm.rx.intent.GET_RDS_AF_SWITCHMODE"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 1772
    .local v29, switchMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x1a

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1775
    .end local v29           #switchMode:Ljava/lang/Long;
    :cond_f
    const-string v31, "com.ti.fm.rx.intent.action.GET_VOLUME_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 1776
    const-string v31, "com.ti.fm.rx.intent.GET_VOLUME"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 1777
    .local v20, gVolume:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x1c

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1780
    .end local v20           #gVolume:Ljava/lang/Long;
    :cond_10
    const-string v31, "com.ti.fm.rx.intent.action.GET_MONO_STEREO_MODE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 1781
    const-string v31, "com.ti.fm.rx.intent.GET_MODE"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1782
    .local v13, gMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x1d

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1785
    .end local v13           #gMode:Ljava/lang/Long;
    :cond_11
    const-string v31, "com.ti.fm.rx.intent.action.GET_MUTE_MODE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 1786
    const-string v31, "com.ti.fm.rx.intent.GET_MUTE_MODE"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1787
    .local v14, gMuteMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x1e

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1790
    .end local v14           #gMuteMode:Ljava/lang/Long;
    :cond_12
    const-string v31, "com.ti.fm.rx.intent.action.GET_BAND_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1791
    const-string v31, "com.ti.fm.rx.intent.GET_BAND"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1792
    .local v10, gBand:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x1b

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1795
    .end local v10           #gBand:Ljava/lang/Long;
    :cond_13
    const-string v31, "com.ti.fm.rx.intent.action.GET_FREQUENCY"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 1796
    const-string v31, "com.ti.fm.rx.intent.TUNED_FREQUENCY"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1797
    .local v12, gFreq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x25

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1800
    .end local v12           #gFreq:I
    :cond_14
    const-string v31, "com.ti.fm.rx.intent.action.GET_RF_MUTE_MODE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 1801
    const-string v31, "com.ti.fm.rx.intent.GET_RF_MUTE_MODE"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 1802
    .local v17, gRfMuteMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x1f

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1805
    .end local v17           #gRfMuteMode:Ljava/lang/Long;
    :cond_15
    const-string v31, "com.ti.fm.rx.intent.action.GET_RSSI_THRESHHOLD_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 1806
    const-string v31, "com.ti.fm.rx.intent.GET_RSSI_THRESHHOLD"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 1807
    .local v19, gRssiThreshhold:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x20

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1810
    .end local v19           #gRssiThreshhold:Ljava/lang/Long;
    :cond_16
    const-string v31, "com.ti.fm.rx.intent.action.GET_DEEMPHASIS_FILTER_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 1811
    const-string v31, "com.ti.fm.rx.intent.GET_DEEMPHASIS_FILTER"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1812
    .local v11, gFilter:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x21

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1815
    .end local v11           #gFilter:Ljava/lang/Long;
    :cond_17
    const-string v31, "com.ti.fm.rx.intent.action.GET_RSSI_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_18

    .line 1816
    const-string v31, "com.ti.fm.rx.intent.GET_RSSI"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 1817
    .local v18, gRssi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x22

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1820
    .end local v18           #gRssi:I
    :cond_18
    const-string v31, "com.ti.fm.rx.intent.action.GET_RDS_SYSTEM_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 1821
    const-string v31, "com.ti.fm.rx.intent.GET_RDS_SYSTEM"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 1822
    .local v16, gRdsSystem:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x23

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1825
    .end local v16           #gRdsSystem:Ljava/lang/Long;
    :cond_19
    const-string v31, "com.ti.fm.rx.intent.action.GET_RDS_GROUPMASK_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 1826
    const-string v31, "com.ti.fm.rx.intent.GET_RDS_GROUPMASK"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1827
    .local v15, gRdsMask:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x24

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1830
    .end local v15           #gRdsMask:Ljava/lang/Long;
    :cond_1a
    const-string v31, "com.ti.fm.rx.intent.action.ENABLE_RDS_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0xc

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1834
    :cond_1b
    const-string v31, "com.ti.fm.rx.intent.action.DISABLE_RDS_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0xf

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1838
    :cond_1c
    const-string v31, "com.ti.fm.rx.intent.action.SET_RDS_AF_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0xe

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1842
    :cond_1d
    const-string v31, "com.ti.fm.rx.intent.action.SET_RDS_SYSTEM_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0xd

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1846
    :cond_1e
    const-string v31, "com.ti.fm.rx.intent.action.SET_DEEMP_FILTER_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x10

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1850
    :cond_1f
    const-string v31, "com.ti.fm.rx.intent.action.PS_CHANGED"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_20

    .line 1857
    const-string v31, "com.ti.fm.rx.intent.PS_CONVERTED_VALUE"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1859
    .local v23, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x11

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1863
    .end local v23           #name:Ljava/lang/String;
    :cond_20
    const-string v31, "com.ti.fm.rx.intent.action.SET_RSSI_THRESHHOLD_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_21

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x12

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1867
    :cond_21
    const-string v31, "com.ti.fm.rx.intent.action.SET_RF_DEPENDENT_MUTE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x13

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1871
    :cond_22
    const-string v31, "com.ti.fm.rx.intent.action.COMPLETE_SCAN_DONE_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_24

    .line 1872
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1874
    .local v7, extras:Landroid/os/Bundle;
    const-string v31, "com.ti.fm.rx.intent.SCAN_LIST"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 1876
    .local v5, channelList:[I
    const-string v31, "com.ti.fm.rx.intent.SCAN_LIST_COUNT"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 1878
    .local v24, noOfChannels:I
    const-string v31, "com.ti.fm.rx.intent.STATUS"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 1879
    .local v28, status:I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "noOfChannels"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v33

    invoke-static/range {v31 .. v33}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1881
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_23

    .line 1884
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "channelList"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget v32, v5, v21

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v33

    invoke-static/range {v31 .. v33}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1881
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1887
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x16

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1892
    .end local v5           #channelList:[I
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v21           #i:I
    .end local v24           #noOfChannels:I
    .end local v28           #status:I
    :cond_24
    const-string v31, "com.ti.fm.rx.intent.action.COMPLETE_SCAN_STOP_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_25

    .line 1893
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1894
    .restart local v7       #extras:Landroid/os/Bundle;
    const-string v31, "com.ti.fm.rx.intent.STATUS"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 1895
    .restart local v28       #status:I
    const-string v31, "com.ti.fm.rx.intent.LAST_SCAN_CHANNEL"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1897
    .local v6, channelValue:I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Last Scanned Channel Frequency before calling Stop Scan"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v33

    invoke-static/range {v31 .. v33}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1902
    .end local v6           #channelValue:I
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v28           #status:I
    :cond_25
    const-string v31, "com.ti.fm.rx.intent.action.MASTER_VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_26

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    const-string v32, "com.ti.fm.rx.intent.MASTER_VOLUME"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    #setter for: Lcom/miui/fmradio/FmRxApp;->mVolume:I
    invoke-static/range {v31 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2502(Lcom/miui/fmradio/FmRxApp;I)I

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v31, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2700(Lcom/miui/fmradio/FmRxApp;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$4;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mVolume:I
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$2500(Lcom/miui/fmradio/FmRxApp;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1913
    :cond_26
    return-void
.end method
