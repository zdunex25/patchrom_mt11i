.class public Lcom/moblynx/cameraics/RecordLocationPreference;
.super Lcom/moblynx/cameraics/IconListPreference;
.source "RecordLocationPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "pref_camera_recordlocation_key"

.field public static final VALUE_NONE:Ljava/lang/String; = "none"

.field public static final VALUE_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/moblynx/cameraics/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/moblynx/cameraics/RecordLocationPreference;->mResolver:Landroid/content/ContentResolver;

    .line 41
    return-void
.end method

.method public static get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "pref"
    .parameter "resolver"

    .prologue
    .line 50
    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "none"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, value:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/moblynx/cameraics/RecordLocationPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/moblynx/cameraics/RecordLocationPreference;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/moblynx/cameraics/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method
