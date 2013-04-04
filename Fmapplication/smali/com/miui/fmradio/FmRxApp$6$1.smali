.class Lcom/miui/fmradio/FmRxApp$6$1;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRxApp$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmRxApp$6;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRxApp$6;)V
    .locals 0
    .parameter

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp$6$1;->this$1:Lcom/miui/fmradio/FmRxApp$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 2053
    new-instance v0, Lcom/miui/fmradio/database/PreSetsDB;

    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$6$1;->this$1:Lcom/miui/fmradio/FmRxApp$6;

    iget-object v1, v1, Lcom/miui/fmradio/FmRxApp$6;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-direct {v0, v1}, Lcom/miui/fmradio/database/PreSetsDB;-><init>(Landroid/content/Context;)V

    .line 2054
    .local v0, preSetsDB:Lcom/miui/fmradio/database/PreSetsDB;
    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDB;->open()Lcom/miui/fmradio/database/PreSetsDB;

    .line 2055
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$6$1;->this$1:Lcom/miui/fmradio/FmRxApp$6;

    iget-object v1, v1, Lcom/miui/fmradio/FmRxApp$6;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/miui/fmradio/FmRxApp;->access$2800(Lcom/miui/fmradio/FmRxApp;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$6$1;->this$1:Lcom/miui/fmradio/FmRxApp$6;

    iget v2, v2, Lcom/miui/fmradio/FmRxApp$6;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/database/PreSetsDB;->deletePreSetItem(Lcom/miui/fmradio/logic/PreSetRadio;)V

    .line 2056
    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDB;->close()V

    .line 2057
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$6$1;->this$1:Lcom/miui/fmradio/FmRxApp$6;

    iget-object v1, v1, Lcom/miui/fmradio/FmRxApp$6;->this$0:Lcom/miui/fmradio/FmRxApp;

    #calls: Lcom/miui/fmradio/FmRxApp;->readPreSetsDatabase()V
    invoke-static {v1}, Lcom/miui/fmradio/FmRxApp;->access$2900(Lcom/miui/fmradio/FmRxApp;)V

    .line 2058
    return-void
.end method
