.class public Lcom/moblynx/cameraics/ui/OtherSettingsPopup;
.super Lcom/moblynx/cameraics/ui/AbstractSettingPopup;
.source "OtherSettingsPopup.java"

# interfaces
.implements Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;,
        Lcom/moblynx/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/moblynx/cameraics/ui/AbstractSettingPopup;",
        "Lcom/moblynx/cameraics/ui/InLineSettingItem$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OtherSettingsPopup"


# instance fields
.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/moblynx/cameraics/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/moblynx/cameraics/ui/OtherSettingsPopup;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/moblynx/cameraics/PreferenceGroup;[Ljava/lang/String;)V
    .locals 5
    .parameter "group"
    .parameter "keys"

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/moblynx/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;

    invoke-direct {v1, p0}, Lcom/moblynx/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;-><init>(Lcom/moblynx/cameraics/ui/OtherSettingsPopup;)V

    .line 114
    .local v1, mListItemAdapter:Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v3, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v3, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 117
    return-void

    .line 106
    .end local v1           #mListItemAdapter:Landroid/widget/ArrayAdapter;
    :cond_0
    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/moblynx/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/moblynx/cameraics/ListPreference;

    move-result-object v2

    .line 107
    .local v2, pref:Lcom/moblynx/cameraics/ListPreference;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 146
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;->onRestorePreferencesClicked()V

    .line 149
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;->onSettingChanged()V

    .line 124
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 128
    iget-object v7, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 129
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, p1

    if-lt v1, v7, :cond_0

    .line 141
    return-void

    .line 130
    :cond_0
    aget-object v3, p1, v1

    .line 131
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    aget-object v6, p1, v7

    .line 132
    .local v6, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 129
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 133
    :cond_1
    iget-object v7, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moblynx/cameraics/ListPreference;

    .line 134
    .local v4, pref:Lcom/moblynx/cameraics/ListPreference;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/moblynx/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 136
    iget-object v7, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/moblynx/cameraics/ui/InLineSettingItem;

    .line 137
    .local v5, settingItem:Lcom/moblynx/cameraics/ui/InLineSettingItem;
    invoke-virtual {v5, v6}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->overrideSettings(Ljava/lang/String;)V

    .line 132
    .end local v5           #settingItem:Lcom/moblynx/cameraics/ui/InLineSettingItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 153
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 154
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 162
    return-void

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/moblynx/cameraics/ListPreference;

    .line 156
    .local v2, pref:Lcom/moblynx/cameraics/ListPreference;
    if-eqz v2, :cond_1

    .line 158
    iget-object v4, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/moblynx/cameraics/ui/InLineSettingItem;

    .line 159
    .local v3, settingItem:Lcom/moblynx/cameraics/ui/InLineSettingItem;
    invoke-virtual {v3}, Lcom/moblynx/cameraics/ui/InLineSettingItem;->reloadPreference()V

    .line 154
    .end local v3           #settingItem:Lcom/moblynx/cameraics/ui/InLineSettingItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;

    .line 97
    return-void
.end method
