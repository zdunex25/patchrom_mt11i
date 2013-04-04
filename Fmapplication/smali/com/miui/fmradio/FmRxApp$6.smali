.class Lcom/miui/fmradio/FmRxApp$6;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRxApp;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRxApp;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRxApp;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp$6;->this$0:Lcom/miui/fmradio/FmRxApp;

    iput p2, p0, Lcom/miui/fmradio/FmRxApp$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 2043
    if-nez p2, :cond_1

    .line 2044
    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$6;->this$0:Lcom/miui/fmradio/FmRxApp;

    iget v2, p0, Lcom/miui/fmradio/FmRxApp$6;->val$position:I

    #calls: Lcom/miui/fmradio/FmRxApp;->updateStation(IZ)V
    invoke-static {v1, v2, v3}, Lcom/miui/fmradio/FmRxApp;->access$3000(Lcom/miui/fmradio/FmRxApp;IZ)V

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    if-ne p2, v3, :cond_0

    .line 2046
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$6;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2047
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2048
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$6;->this$0:Lcom/miui/fmradio/FmRxApp;

    const v3, 0x7f070079

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmRxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/fmradio/FmRxApp$6;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->preSetRadios:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/miui/fmradio/FmRxApp;->access$2800(Lcom/miui/fmradio/FmRxApp;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/miui/fmradio/FmRxApp$6;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v1}, Lcom/miui/fmradio/logic/PreSetRadio;->getStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2050
    const v1, 0x104000a

    new-instance v2, Lcom/miui/fmradio/FmRxApp$6$1;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FmRxApp$6$1;-><init>(Lcom/miui/fmradio/FmRxApp$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2061
    const/high16 v1, 0x104

    new-instance v2, Lcom/miui/fmradio/FmRxApp$6$2;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FmRxApp$6$2;-><init>(Lcom/miui/fmradio/FmRxApp$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2067
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
