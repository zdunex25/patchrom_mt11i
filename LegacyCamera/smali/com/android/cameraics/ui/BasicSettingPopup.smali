.class public Lcom/android/cameraics/ui/BasicSettingPopup;
.super Lcom/android/cameraics/ui/AbstractSettingPopup;
.source "BasicSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/ui/BasicSettingPopup$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cameraics/ui/AbstractSettingPopup;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/android/cameraics/ui/BasicSettingPopup$Listener;

.field private mPreference:Lcom/android/cameraics/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const-string v0, "BasicSettingPopup"

    iput-object v0, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/cameraics/IconListPreference;)V
    .locals 12
    .parameter "preference"

    .prologue
    const/4 v11, 0x2

    .line 51
    iput-object p1, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    .line 52
    invoke-virtual {p0}, Lcom/android/cameraics/ui/BasicSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    invoke-virtual {v3}, Lcom/android/cameraics/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 54
    .local v6, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    invoke-virtual {v3}, Lcom/android/cameraics/IconListPreference;->getImageIds()[I

    move-result-object v8

    .line 55
    .local v8, iconIds:[I
    if-nez v8, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    invoke-virtual {v3}, Lcom/android/cameraics/IconListPreference;->getLargeIconIds()[I

    move-result-object v8

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    invoke-virtual {v4}, Lcom/android/cameraics/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v3, v6

    if-lt v7, v3, :cond_1

    .line 71
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 72
    const v3, 0x7f04001b

    .line 73
    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "text"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "image"

    aput-object v10, v4, v5

    .line 74
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    .line 71
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 75
    .local v0, listItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v3, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v3, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/cameraics/ui/BasicSettingPopup;->reloadPreference()V

    .line 78
    return-void

    .line 66
    .end local v0           #listItemAdapter:Landroid/widget/SimpleAdapter;
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    aget-object v4, v6, v7

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-eqz v8, :cond_2

    const-string v3, "image"

    aget v4, v8, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 74
    nop

    :array_0
    .array-data 0x4
        0xet 0x0t 0xdt 0x7ft
        0xdt 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "index"
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
    .line 99
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    invoke-virtual {v0, p3}, Lcom/android/cameraics/IconListPreference;->setValueIndex(I)V

    .line 100
    iget-object v0, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mListener:Lcom/android/cameraics/ui/BasicSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mListener:Lcom/android/cameraics/ui/BasicSettingPopup$Listener;

    invoke-interface {v0}, Lcom/android/cameraics/ui/BasicSettingPopup$Listener;->onSettingChanged()V

    .line 101
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    iget-object v2, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    invoke-virtual {v2}, Lcom/android/cameraics/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cameraics/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v1, "BasicSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mPreference:Lcom/android/cameraics/IconListPreference;

    invoke-virtual {v1}, Lcom/android/cameraics/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/android/cameraics/ui/BasicSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/cameraics/ui/BasicSettingPopup;->mListener:Lcom/android/cameraics/ui/BasicSettingPopup$Listener;

    .line 94
    return-void
.end method
