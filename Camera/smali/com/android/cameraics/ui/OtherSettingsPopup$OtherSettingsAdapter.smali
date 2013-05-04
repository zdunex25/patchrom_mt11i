.class Lcom/android/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OtherSettingsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/ui/OtherSettingsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherSettingsAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/cameraics/ui/OtherSettingsPopup;


# direct methods
.method constructor <init>(Lcom/android/cameraics/ui/OtherSettingsPopup;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/cameraics/ui/OtherSettingsPopup;

    .line 55
    invoke-virtual {p1}, Lcom/android/cameraics/ui/OtherSettingsPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    #getter for: Lcom/android/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/cameraics/ui/OtherSettingsPopup;->access$0(Lcom/android/cameraics/ui/OtherSettingsPopup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method private getSettingLayoutId(Lcom/android/cameraics/ListPreference;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 62
    if-nez p1, :cond_0

    const v0, 0x7f04000a

    .line 75
    :goto_0
    return v0

    .line 66
    :cond_0
    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p1}, Lcom/android/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, "pref_camera_silentmode_key"

    invoke-virtual {p1}, Lcom/android/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "pref_camera_guidelines_key"

    invoke-virtual {p1}, Lcom/android/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "pref_camera_videostab_key"

    invoke-virtual {p1}, Lcom/android/cameraics/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    :cond_1
    const v0, 0x7f04000b

    goto :goto_0

    .line 75
    :cond_2
    const v0, 0x7f040009

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    iget-object v3, p0, Lcom/android/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/cameraics/ui/OtherSettingsPopup;

    #getter for: Lcom/android/cameraics/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/cameraics/ui/OtherSettingsPopup;->access$0(Lcom/android/cameraics/ui/OtherSettingsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cameraics/ListPreference;

    .line 85
    .local v0, pref:Lcom/android/cameraics/ListPreference;
    invoke-direct {p0, v0}, Lcom/android/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;->getSettingLayoutId(Lcom/android/cameraics/ListPreference;)I

    move-result v2

    .line 87
    .local v2, viewLayoutId:I
    iget-object v3, p0, Lcom/android/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    check-cast v1, Lcom/android/cameraics/ui/InLineSettingItem;

    .line 89
    .local v1, view:Lcom/android/cameraics/ui/InLineSettingItem;
    invoke-virtual {v1, v0}, Lcom/android/cameraics/ui/InLineSettingItem;->initialize(Lcom/android/cameraics/ListPreference;)V

    .line 90
    iget-object v3, p0, Lcom/android/cameraics/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/cameraics/ui/OtherSettingsPopup;

    invoke-virtual {v1, v3}, Lcom/android/cameraics/ui/InLineSettingItem;->setSettingChangedListener(Lcom/android/cameraics/ui/InLineSettingItem$Listener;)V

    .line 91
    return-object v1
.end method
