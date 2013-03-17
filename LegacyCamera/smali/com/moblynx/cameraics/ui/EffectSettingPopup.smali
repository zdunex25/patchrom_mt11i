.class public Lcom/moblynx/cameraics/ui/EffectSettingPopup;
.super Lcom/moblynx/cameraics/ui/AbstractSettingPopup;
.source "EffectSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/moblynx/cameraics/ui/AbstractSettingPopup;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectSettingPopup"


# instance fields
.field private mBackgroundGrid:Landroid/widget/GridView;

.field mBackgroundItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClearEffects:Landroid/view/View;

.field private mFxGrid:Landroid/widget/GridView;

.field mFxItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;

.field private mNoEffect:Ljava/lang/String;

.field private mPreference:Lcom/moblynx/cameraics/IconListPreference;

.field private mSillyFacesGrid:Landroid/widget/GridView;

.field mSillyFacesItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxItem:Ljava/util/ArrayList;

    .line 69
    const v0, 0x7f0800d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public initialize(Lcom/moblynx/cameraics/IconListPreference;)V
    .locals 20
    .parameter "preference"

    .prologue
    .line 84
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 86
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v6}, Lcom/moblynx/cameraics/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 87
    .local v11, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v6}, Lcom/moblynx/cameraics/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 88
    .local v12, entryValues:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v6}, Lcom/moblynx/cameraics/IconListPreference;->getImageIds()[I

    move-result-object v17

    .line 89
    .local v17, iconIds:[I
    if-nez v17, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v6}, Lcom/moblynx/cameraics/IconListPreference;->getLargeIconIds()[I

    move-result-object v17

    .line 94
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v7}, Lcom/moblynx/cameraics/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    array-length v6, v11

    move/from16 v0, v16

    if-lt v0, v6, :cond_7

    .line 114
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    const/4 v15, 0x1

    .line 115
    .local v15, hasSillyFaces:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    const/4 v13, 0x1

    .line 117
    .local v13, hasBackground:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    const/4 v14, 0x1

    .line 120
    .local v14, hasFx:Z
    :goto_3
    if-eqz v15, :cond_1

    .line 121
    const v6, 0x7f0d0010

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const v6, 0x7f0d0011

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setVisibility(I)V

    .line 124
    new-instance v2, Landroid/widget/SimpleAdapter;

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    const v5, 0x7f040005

    .line 126
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "text"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "image"

    aput-object v8, v6, v7

    .line 127
    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    .line 124
    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 128
    .local v2, sillyFacesItemAdapter:Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    invoke-virtual {v6, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    .end local v2           #sillyFacesItemAdapter:Landroid/widget/SimpleAdapter;
    :cond_1
    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    .line 140
    const v6, 0x7f0d0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_2
    if-eqz v14, :cond_3

    .line 144
    const v6, 0x7f0d0014

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 145
    const v6, 0x7f0d0015

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxGrid:Landroid/widget/GridView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setVisibility(I)V

    .line 147
    new-instance v4, Landroid/widget/SimpleAdapter;

    .line 148
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxItem:Ljava/util/ArrayList;

    const v7, 0x7f040005

    .line 149
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "text"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "image"

    aput-object v10, v8, v9

    .line 150
    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    move-object v5, v3

    .line 147
    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 151
    .local v4, fxItemAdapter:Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxGrid:Landroid/widget/GridView;

    invoke-virtual {v6, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    .end local v4           #fxItemAdapter:Landroid/widget/SimpleAdapter;
    :cond_3
    if-nez v15, :cond_4

    if-eqz v14, :cond_5

    :cond_4
    if-eqz v13, :cond_5

    .line 156
    const v6, 0x7f0d0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_5
    if-eqz v13, :cond_6

    .line 161
    const v6, 0x7f0d0018

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const v6, 0x7f0d0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setVisibility(I)V

    .line 164
    new-instance v5, Landroid/widget/SimpleAdapter;

    .line 165
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    const v8, 0x7f040005

    .line 166
    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v10, "text"

    aput-object v10, v9, v6

    const/4 v6, 0x1

    const-string v10, "image"

    aput-object v10, v9, v6

    .line 167
    const/4 v6, 0x2

    new-array v10, v6, [I

    fill-array-data v10, :array_2

    move-object v6, v3

    .line 164
    invoke-direct/range {v5 .. v10}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 168
    .local v5, backgroundItemAdapter:Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    invoke-virtual {v6, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    .end local v5           #backgroundItemAdapter:Landroid/widget/SimpleAdapter;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->reloadPreference()V

    .line 173
    return-void

    .line 97
    .end local v13           #hasBackground:Z
    .end local v14           #hasFx:Z
    .end local v15           #hasSillyFaces:Z
    :cond_7
    aget-object v6, v12, v16

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 98
    .local v19, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 96
    :cond_8
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 99
    :cond_9
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v18, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v6, "text"

    aget-object v7, v11, v16

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    if-eqz v17, :cond_a

    const-string v6, "image"

    aget v7, v17, v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_a
    const-string v6, "goofy_face"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 104
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 105
    :cond_b
    const-string v6, "backdropper"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 106
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 109
    :cond_c
    const-string v6, "fx"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 110
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxItem:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 114
    .end local v18           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19           #value:Ljava/lang/String;
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 115
    .restart local v15       #hasSillyFaces:Z
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 117
    .restart local v13       #hasBackground:Z
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 127
    nop

    :array_0
    .array-data 0x4
        0xet 0x0t 0xdt 0x7ft
        0xdt 0x0t 0xdt 0x7ft
    .end array-data

    .line 150
    :array_1
    .array-data 0x4
        0xet 0x0t 0xdt 0x7ft
        0xdt 0x0t 0xdt 0x7ft
    .end array-data

    .line 167
    :array_2
    .array-data 0x4
        0xet 0x0t 0xdt 0x7ft
        0xdt 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->reloadPreference()V

    .line 263
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mListener:Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mListener:Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;

    invoke-interface {v0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;->onSettingChanged()V

    .line 264
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/moblynx/cameraics/ui/AbstractSettingPopup;->onFinishInflate()V

    .line 75
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    .line 78
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    .line 80
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxGrid:Landroid/widget/GridView;

    .line 81
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 236
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    if-ne p1, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, value:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/moblynx/cameraics/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 254
    :goto_1
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->reloadPreference()V

    .line 255
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mListener:Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mListener:Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;

    invoke-interface {v1}, Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;->onSettingChanged()V

    .line 256
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    if-ne p1, v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v0           #value:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxGrid:Landroid/widget/GridView;

    if-ne p1, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/moblynx/cameraics/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reloadPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 194
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 196
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 198
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 208
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 217
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 224
    const-string v2, "EffectSettingPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid preference value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v2}, Lcom/moblynx/cameraics/IconListPreference;->print()V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    .line 201
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :cond_3
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    .line 208
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mFxGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto/16 :goto_0

    .line 217
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public setSettingChangedListener(Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mListener:Lcom/moblynx/cameraics/ui/EffectSettingPopup$Listener;

    .line 230
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mPreference:Lcom/moblynx/cameraics/IconListPreference;

    invoke-virtual {v1}, Lcom/moblynx/cameraics/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 183
    .local v0, noEffect:Z
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .end local v0           #noEffect:Z
    :cond_0
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/EffectSettingPopup;->reloadPreference()V

    .line 187
    :cond_1
    invoke-super {p0, p1}, Lcom/moblynx/cameraics/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 188
    return-void

    .line 183
    .restart local v0       #noEffect:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
