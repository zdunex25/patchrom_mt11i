.class public Lcom/miui/fmradio/adapters/PreSetsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreSetsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/fmradio/logic/PreSetRadio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, preSetRadios:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/fmradio/logic/PreSetRadio;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter;->preSetRadios:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter;->preSetRadios:Ljava/util/ArrayList;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v1, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    new-instance v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;-><init>(Lcom/miui/fmradio/adapters/PreSetsAdapter;)V

    .line 43
    .local v0, holder:Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;
    const v1, 0x7f090027

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->name:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f09002c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->frequency:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f09002d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->addNewStation:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v1}, Lcom/miui/fmradio/logic/PreSetRadio;->isStationSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v2, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v1}, Lcom/miui/fmradio/logic/PreSetRadio;->getStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v2, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->frequency:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/fmradio/adapters/PreSetsAdapter;->preSetRadios:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-virtual {v1}, Lcom/miui/fmradio/logic/PreSetRadio;->getStationFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->frequency:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->addNewStation:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :goto_1
    return-object p2

    .line 48
    .end local v0           #holder:Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;

    .restart local v0       #holder:Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;
    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->addNewStation:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v1, v0, Lcom/miui/fmradio/adapters/PreSetsAdapter$AlarmViewHolder;->frequency:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
