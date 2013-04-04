.class Lcom/miui/fmradio/FmRxApp$5;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRxApp;->updateStation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRxApp;

.field final synthetic val$isEditing:Z

.field final synthetic val$position:I

.field final synthetic val$simpleDialog:Landroid/app/Dialog;

.field final synthetic val$stationName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRxApp;Landroid/widget/EditText;Landroid/app/Dialog;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp$5;->this$0:Lcom/miui/fmradio/FmRxApp;

    iput-object p2, p0, Lcom/miui/fmradio/FmRxApp$5;->val$stationName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/miui/fmradio/FmRxApp$5;->val$simpleDialog:Landroid/app/Dialog;

    iput p4, p0, Lcom/miui/fmradio/FmRxApp$5;->val$position:I

    iput-boolean p5, p0, Lcom/miui/fmradio/FmRxApp$5;->val$isEditing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 2004
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$5;->val$stationName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2005
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$5;->val$simpleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2025
    :goto_0
    return-void

    .line 2007
    :cond_0
    new-instance v0, Lcom/miui/fmradio/database/PreSetsDB;

    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$5;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-direct {v0, v1}, Lcom/miui/fmradio/database/PreSetsDB;-><init>(Landroid/content/Context;)V

    .line 2008
    .local v0, preSetsDB:Lcom/miui/fmradio/database/PreSetsDB;
    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDB;->open()Lcom/miui/fmradio/database/PreSetsDB;

    .line 2009
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$5;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/miui/fmradio/FmRxApp;->access$2800(Lcom/miui/fmradio/FmRxApp;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FmRxApp$5;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v1}, Lcom/miui/fmradio/logic/PreSetRadio;->getUid()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/fmradio/FmRxApp$5;->val$stationName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/fmradio/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/fmradio/FmRxApp$5;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static {v5}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/fmradio/database/PreSetsDB;->updateRadioPreSet(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 2014
    iget-boolean v1, p0, Lcom/miui/fmradio/FmRxApp$5;->val$isEditing:Z

    if-nez v1, :cond_1

    .line 2015
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$5;->this$0:Lcom/miui/fmradio/FmRxApp;

    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/database/PreSetsDB;->createPreSetItem(Ljava/lang/String;Ljava/lang/String;)J

    .line 2018
    :cond_1
    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDB;->close()V

    .line 2021
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$5;->this$0:Lcom/miui/fmradio/FmRxApp;

    #calls: Lcom/miui/fmradio/FmRxApp;->readPreSetsDatabase()V
    invoke-static {v1}, Lcom/miui/fmradio/FmRxApp;->access$2900(Lcom/miui/fmradio/FmRxApp;)V

    .line 2023
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$5;->val$simpleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
