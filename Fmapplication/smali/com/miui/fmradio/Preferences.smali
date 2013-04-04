.class public Lcom/miui/fmradio/Preferences;
.super Landroid/preference/PreferenceActivity;
.source "Preferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getNotificationsUseRDSinsteadPreset(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "rds_instead_preset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPrintDebugInfo(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 77
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "print_debug_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getUseNotifications(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "use_notification_bar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/Preferences;->addPreferencesFromResource(I)V

    .line 30
    return-void
.end method
