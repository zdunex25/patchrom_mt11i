.class Lcom/miui/fmradio/FmRxApp$1;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRxApp;->onCreate(Landroid/os/Bundle;)V
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
    .line 303
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp$1;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/fmradio/FmRxApp$1;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRxApp;->finish()V

    .line 307
    return-void
.end method
