.class public Lcom/android/cameraics/PreferenceGroup;
.super Lcom/android/cameraics/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cameraics/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cameraics/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/cameraics/CameraPreference;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/cameraics/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/android/cameraics/ListPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/android/cameraics/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 67
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cameraics/CameraPreference;

    .line 68
    .local v1, pref:Lcom/android/cameraics/CameraPreference;
    instance-of v3, v1, Lcom/android/cameraics/ListPreference;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 69
    check-cast v0, Lcom/android/cameraics/ListPreference;

    .line 70
    .local v0, listPref:Lcom/android/cameraics/ListPreference;
    invoke-virtual {v0}, Lcom/android/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 71
    .end local v0           #listPref:Lcom/android/cameraics/ListPreference;
    :cond_2
    instance-of v3, v1, Lcom/android/cameraics/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 73
    check-cast v1, Lcom/android/cameraics/PreferenceGroup;

    .end local v1           #pref:Lcom/android/cameraics/CameraPreference;
    invoke-virtual {v1, p1}, Lcom/android/cameraics/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/cameraics/ListPreference;

    move-result-object v0

    .line 74
    .restart local v0       #listPref:Lcom/android/cameraics/ListPreference;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public get(I)Lcom/android/cameraics/CameraPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/cameraics/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/CameraPreference;

    return-object v0
.end method

.method public reloadValue()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/cameraics/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    return-void

    .line 54
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/CameraPreference;

    .line 55
    .local v0, pref:Lcom/android/cameraics/CameraPreference;
    invoke-virtual {v0}, Lcom/android/cameraics/CameraPreference;->reloadValue()V

    goto :goto_0
.end method

.method public removePreference(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/cameraics/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/cameraics/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
