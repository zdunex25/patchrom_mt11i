.class Lcom/miui/fmradio/FmRxApp$2;
.super Landroid/os/Handler;
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
    .line 429
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .parameter "msg"

    .prologue
    .line 432
    const-string v32, "mHandler called"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 433
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 440
    :sswitch_0
    const-string v32, "EVENT_FM_ENABLED"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->pd:Landroid/app/ProgressDialog;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$100(Lcom/miui/fmradio/FmRxApp;)Landroid/app/ProgressDialog;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->pd:Landroid/app/ProgressDialog;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$100(Lcom/miui/fmradio/FmRxApp;)Landroid/app/ProgressDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/ProgressDialog;->dismiss()V

    .line 446
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #calls: Lcom/miui/fmradio/FmRxApp;->setRdsConfig()V
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$200(Lcom/miui/fmradio/FmRxApp;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #calls: Lcom/miui/fmradio/FmRxApp;->loadDefaultConfiguration()V
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$300(Lcom/miui/fmradio/FmRxApp;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    const v33, 0x7f030003

    invoke-virtual/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->setContentView(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    #setter for: Lcom/miui/fmradio/FmRxApp;->mToggleMute:Z
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$402(Lcom/miui/fmradio/FmRxApp;Z)Z

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #calls: Lcom/miui/fmradio/FmRxApp;->initControls()V
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$500(Lcom/miui/fmradio/FmRxApp;)V

    goto :goto_0

    .line 460
    :sswitch_1
    const-string v32, "EVENT_MONO_STEREO_CHANGE"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mMode:I
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$600(Lcom/miui/fmradio/FmRxApp;)I

    move-result v32

    if-nez v32, :cond_2

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v32

    const v33, 0x7f020018

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 464
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v32

    const v33, 0x7f02000a

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 473
    :sswitch_2
    const-string v32, "EVENT_MONO_STEREO_DISPLAY"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 475
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    .line 477
    .local v21, mode:Ljava/lang/Integer;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v32

    if-nez v32, :cond_3

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v32

    const v33, 0x7f020018

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 480
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->imgFmMode:Landroid/widget/ImageView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v32

    const v33, 0x7f02000a

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 488
    .end local v21           #mode:Ljava/lang/Integer;
    :sswitch_3
    const-string v32, "EVENT_MUTE_CHANGE"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 492
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Integer;

    .line 493
    .local v27, seekFreq:Ljava/lang/Integer;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "EVENT_SEEK_STOPPED seekFreq: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 494
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x447a

    div-float v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    sput-object v32, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtStatusMsg:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$800(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const v33, 0x7f070053

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    sget-object v33, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    #calls: Lcom/miui/fmradio/FmRxApp;->updateFrequencyDisplay(Ljava/lang/Float;)V
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$900(Lcom/miui/fmradio/FmRxApp;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 502
    .end local v27           #seekFreq:Ljava/lang/Integer;
    :sswitch_5
    const-string v32, "EVENT_FM_DISABLED"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 507
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1002(Z)Z

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #calls: Lcom/miui/fmradio/FmRxApp;->saveDefaultConfiguration()V
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1100(Lcom/miui/fmradio/FmRxApp;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->finish()V

    goto/16 :goto_0

    .line 513
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 514
    .local v5, freq:Ljava/lang/Integer;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "EVENT_SEEK_STARTED freq"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 515
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x447a

    div-float v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    sput-object v32, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtStatusMsg:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$800(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const v33, 0x7f070053

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    sget-object v33, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    #calls: Lcom/miui/fmradio/FmRxApp;->updateFrequencyDisplay(Ljava/lang/Float;)V
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$900(Lcom/miui/fmradio/FmRxApp;Ljava/lang/Float;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mIsFirstPlay:Z
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1200(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    #setter for: Lcom/miui/fmradio/FmRxApp;->mIsFirstPlay:Z
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$1202(Lcom/miui/fmradio/FmRxApp;Z)Z

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #calls: Lcom/miui/fmradio/FmRxApp;->initNotifications()V
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1300(Lcom/miui/fmradio/FmRxApp;)V

    .line 523
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->hidNotification:Z
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1400(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v32

    if-nez v32, :cond_5

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    sget-object v33, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Float;->floatValue()F

    move-result v33

    const-string v34, ""

    #calls: Lcom/miui/fmradio/FmRxApp;->updateNotification(FLjava/lang/String;)V
    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$1500(Lcom/miui/fmradio/FmRxApp;FLjava/lang/String;)V

    .line 528
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtRadioText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1600(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtPsText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    #setter for: Lcom/miui/fmradio/FmRxApp;->mSeekState:Z
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$1802(Lcom/miui/fmradio/FmRxApp;Z)Z

    goto/16 :goto_0

    .line 547
    .end local v5           #freq:Ljava/lang/Integer;
    :sswitch_7
    const-string v32, "EVENT_VOLUME_CHANGE"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    #setter for: Lcom/miui/fmradio/FmRxApp;->mVolState:Z
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$1902(Lcom/miui/fmradio/FmRxApp;Z)Z

    .line 557
    invoke-static {}, Lcom/miui/fmradio/FmRxApp;->access$1000()Z

    move-result v32

    if-nez v32, :cond_0

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    sget-object v33, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    sget v34, Lcom/miui/fmradio/FmRxApp;->sBand:I

    invoke-virtual/range {v33 .. v34}, Lcom/ti/fm/FmReceiver;->setBand(I)Z

    move-result v33

    #setter for: Lcom/miui/fmradio/FmRxApp;->mStatus:Z
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2002(Lcom/miui/fmradio/FmRxApp;Z)Z

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mStatus:Z
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->getParent()Landroid/app/Activity;

    move-result-object v33

    const-string v34, "FmReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v35, v0

    const v36, 0x7f070067

    invoke-virtual/range {v35 .. v36}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v32 .. v35}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    sget-object v33, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    sget-object v34, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Float;->floatValue()F

    move-result v34

    const/high16 v35, 0x447a

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/ti/fm/FmReceiver;->tune(I)Z

    move-result v33

    #setter for: Lcom/miui/fmradio/FmRxApp;->mStatus:Z
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2002(Lcom/miui/fmradio/FmRxApp;Z)Z

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mStatus:Z
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->getParent()Landroid/app/Activity;

    move-result-object v33

    const-string v34, "FmReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v35, v0

    const v36, 0x7f070063

    invoke-virtual/range {v35 .. v36}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v32 .. v35}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :sswitch_8
    const-string v32, "EVENT_COMPLETE_SCAN_PROGRESS"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 586
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Integer;

    .line 587
    .local v24, progress:Ljava/lang/Integer;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "EVENT_COMPLETE_SCAN_PROGRESS progress"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 595
    .end local v24           #progress:Ljava/lang/Integer;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Integer;

    .line 596
    .local v30, tuneFreq:Ljava/lang/Integer;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "EVENT_TUNE_COMPLETE tuneFreq"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 597
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x447a

    div-float v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    sput-object v32, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtStatusMsg:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$800(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const v33, 0x7f070053

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    sget-object v33, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    #calls: Lcom/miui/fmradio/FmRxApp;->updateFrequencyDisplay(Ljava/lang/Float;)V
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$900(Lcom/miui/fmradio/FmRxApp;Ljava/lang/Float;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtRadioText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1600(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtPsText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sdefaultSettingOn: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static {}, Lcom/miui/fmradio/FmRxApp;->access$1000()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 611
    invoke-static {}, Lcom/miui/fmradio/FmRxApp;->access$1000()Z

    move-result v32

    if-nez v32, :cond_7

    .line 624
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1002(Z)Z

    .line 628
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtRadioText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1600(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtPsText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 645
    .end local v30           #tuneFreq:Ljava/lang/Integer;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 648
    .local v25, rds:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtRadioText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1600(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 656
    .end local v25           #rds:Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 657
    .local v23, pi:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "EVENT_PI_CODE rds"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 661
    .end local v23           #pi:Ljava/lang/String;
    :sswitch_c
    const-string v32, "EVENT_SET_CHANNELSPACE"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 666
    :sswitch_d
    const-string v32, "EVENT_GET_CHANNEL_SPACE_CHANGE"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 667
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 668
    .local v7, gChSpace:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gChSpace"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 674
    .end local v7           #gChSpace:Ljava/lang/Long;
    :sswitch_e
    const-string v32, "EVENT_BAND_CHANGE"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 681
    invoke-static {}, Lcom/miui/fmradio/FmRxApp;->access$1000()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 683
    sget v32, Lcom/miui/fmradio/FmRxApp;->sBand:I

    if-nez v32, :cond_9

    .line 684
    const/high16 v32, 0x42af

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    sput-object v32, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 690
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    sget-object v33, Lcom/miui/fmradio/FmRxApp;->sFmReceiver:Lcom/ti/fm/FmReceiver;

    sget-object v34, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Float;->floatValue()F

    move-result v34

    const/high16 v35, 0x447a

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/ti/fm/FmReceiver;->tune(I)Z

    move-result v33

    #setter for: Lcom/miui/fmradio/FmRxApp;->mStatus:Z
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2002(Lcom/miui/fmradio/FmRxApp;Z)Z

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mStatus:Z
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->getParent()Landroid/app/Activity;

    move-result-object v33

    const-string v34, "FmReceiver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v35, v0

    const v36, 0x7f070063

    invoke-virtual/range {v35 .. v36}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v32 .. v35}, Lcom/miui/fmradio/FmRxApp;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 686
    :cond_9
    const/high16 v32, 0x4298

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    sput-object v32, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_1

    .line 700
    :sswitch_f
    const-string v32, "EVENT_ENABLE_RDS"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 705
    :sswitch_10
    const-string v32, "EVENT_SET_RDS_AF"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 709
    :sswitch_11
    const-string v32, "EVENT_SET_RDS_SYSTEM"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 713
    :sswitch_12
    const-string v32, "EVENT_DISABLE_RDS"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtPsText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtRadioText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1600(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 719
    :sswitch_13
    const-string v32, "EVENT_SET_DEEMP_FILTER"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 733
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    #setter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmRxApp;->access$2102(Lcom/miui/fmradio/FmRxApp;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->txtPsText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$1700(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_0

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/Preferences;->getUseNotifications(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/Preferences;->getNotificationsUseRDSinsteadPreset(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 740
    const/16 v19, 0x6

    .line 741
    .local v19, lastPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_0

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v19

    .line 744
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPreviousPS:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2200(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    sget-object v33, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Float;->floatValue()F

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v34

    #calls: Lcom/miui/fmradio/FmRxApp;->updateNotification(FLjava/lang/String;)V
    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$1500(Lcom/miui/fmradio/FmRxApp;FLjava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v33, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPS:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2100(Lcom/miui/fmradio/FmRxApp;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    #setter for: Lcom/miui/fmradio/FmRxApp;->mPreviousPS:Ljava/lang/String;
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2202(Lcom/miui/fmradio/FmRxApp;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 759
    .end local v19           #lastPos:I
    :sswitch_15
    const-string v32, "EVENT_SET_RSSI_THRESHHOLD"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    #setter for: Lcom/miui/fmradio/FmRxApp;->configurationState:I
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2302(Lcom/miui/fmradio/FmRxApp;I)I

    goto/16 :goto_0

    .line 767
    :sswitch_16
    const-string v32, "EVENT_SET_RF_DEPENDENT_MUTE"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 771
    :sswitch_17
    const-string v32, "EVENT_COMPLETE_SCAN_STOP"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 775
    :sswitch_18
    const-string v32, "EVENT_COMPLETE_SCAN_DONE"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 777
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    move-object/from16 v4, v32

    check-cast v4, [I

    .line 778
    .local v4, channelList:[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 779
    .local v22, noOfChannels:I
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "noOfChannels"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 781
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 782
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "channelList"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget v33, v4, v17

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 781
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 789
    .end local v4           #channelList:[I
    .end local v17           #i:I
    .end local v22           #noOfChannels:I
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 790
    .local v6, gBand:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gBand"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 795
    .end local v6           #gBand:Ljava/lang/Long;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 796
    .local v9, gFreq:Ljava/lang/Integer;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gFreq"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 799
    .end local v9           #gFreq:Ljava/lang/Integer;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Long;

    .line 800
    .local v16, gVol:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gVol"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 803
    .end local v16           #gVol:Ljava/lang/Long;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    .line 804
    .local v10, gMode:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gMode"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 808
    .end local v10           #gMode:Ljava/lang/Long;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 810
    .local v11, gMuteMode:Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, 0x1

    cmp-long v32, v32, v34

    if-nez v32, :cond_c

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2400(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v32

    const v33, 0x7f020019

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 815
    :cond_b
    :goto_3
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gMuteMode"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 812
    :cond_c
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_b

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;
    invoke-static/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->access$2400(Lcom/miui/fmradio/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v32

    const v33, 0x7f02001a

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 819
    .end local v11           #gMuteMode:Ljava/lang/Long;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    .line 820
    .local v14, gRfMuteMode:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gRfMuteMode"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 823
    .end local v14           #gRfMuteMode:Ljava/lang/Long;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    .line 824
    .local v15, gRssi:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gRssi"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 828
    .end local v15           #gRssi:Ljava/lang/Long;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Integer;

    .line 829
    .local v26, rssi:Ljava/lang/Integer;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "rssi"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 832
    .end local v26           #rssi:Ljava/lang/Integer;
    :sswitch_21
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    .line 833
    .local v8, gFilter:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gFilter"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 837
    .end local v8           #gFilter:Ljava/lang/Long;
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    .line 838
    .local v13, gRdsSys:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gRdsSys"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 841
    .end local v13           #gRdsSys:Ljava/lang/Long;
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    .line 842
    .local v12, gRdsMask:Ljava/lang/Long;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "gRdsMask"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 846
    .end local v12           #gRdsMask:Ljava/lang/Long;
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Integer;

    .line 847
    .local v31, vol:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v33

    #setter for: Lcom/miui/fmradio/FmRxApp;->mVolume:I
    invoke-static/range {v32 .. v33}, Lcom/miui/fmradio/FmRxApp;->access$2502(Lcom/miui/fmradio/FmRxApp;I)I

    .line 848
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "mVolume"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 853
    .end local v31           #vol:Ljava/lang/Integer;
    :sswitch_25
    const-string v32, "EVENT_FM_ERROR"

    const/16 v33, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static/range {v34 .. v34}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    .line 857
    .local v18, inflater:Landroid/view/LayoutInflater;
    const v33, 0x7f030008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    const v34, 0x7f090031

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 859
    .local v20, layout:Landroid/view/View;
    const v32, 0x7f090032

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 860
    .local v28, text:Landroid/widget/TextView;
    const v32, 0x7f070071

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 862
    new-instance v29, Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/fmradio/FmRxApp$2;->this$0:Lcom/miui/fmradio/FmRxApp;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/fmradio/FmRxApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 863
    .local v29, toast:Landroid/widget/Toast;
    const/16 v32, 0x50

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 866
    const/16 v32, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 867
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 868
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 433
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_1
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_9
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_a
        0xa -> :sswitch_e
        0xb -> :sswitch_2
        0xc -> :sswitch_f
        0xd -> :sswitch_11
        0xe -> :sswitch_10
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_14
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_24
        0x15 -> :sswitch_c
        0x16 -> :sswitch_18
        0x17 -> :sswitch_17
        0x18 -> :sswitch_d
        0x19 -> :sswitch_b
        0x1b -> :sswitch_19
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_21
        0x22 -> :sswitch_20
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_1a
        0x26 -> :sswitch_8
        0x3e8 -> :sswitch_25
    .end sparse-switch
.end method
