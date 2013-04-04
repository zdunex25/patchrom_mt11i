.class Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;
.super Ljava/lang/Object;
.source "PreSetsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/adapters/PreSetsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmViewHolder"
.end annotation


# instance fields
.field addNewStation:Landroid/widget/TextView;

.field frequency:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/fmradio/adapters/PreSetsAdapter;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/adapters/PreSetsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->this$0:Lcom/miui/fmradio/adapters/PreSetsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
