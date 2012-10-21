.class public Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;
.super Landroid/preference/PreferenceActivity;
.source "Lt18iSpecialSettings.java"


# instance fields
.field private mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

.field private mXLoudEnabled:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 43
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 47
    :cond_0
    const/high16 v1, 0x7f02

    invoke-virtual {p0, v1}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->addPreferencesFromResource(I)V

    .line 49
    const-string v1, "xloud"

    invoke-virtual {p0, v1}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mXLoudEnabled:Landroid/preference/CheckBoxPreference;

    .line 50
    const-string v1, "ro.semc.xloud.supported"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mXLoudEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 52
    iput-object v4, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mXLoudEnabled:Landroid/preference/CheckBoxPreference;

    .line 55
    :cond_1
    const-string v1, "swiqi_strings_swiqi_txt"

    invoke-virtual {p0, v1}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    .line 56
    const-string v1, "ro.service.swiqi.supported"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 58
    iput-object v4, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    .line 60
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->finish()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mXLoudEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mXLoudEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.audioeffectservice.intent.action.XLOUD_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mXLoudEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 83
    .local v0, checked:Z
    const-string v3, "com.sonyericsson.audioeffectservice.intent.extra.XLOUD_STATUS"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    .end local v0           #checked:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 90
    const-string v3, "persist.service.swiqi.enable"

    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    :goto_1
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 83
    .restart local v0       #checked:Z
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    .end local v0           #checked:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const-string v2, "0"

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 65
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mXLoudEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "com.sonyericsson.xloud_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, xLoudSupported:I
    iget-object v5, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mXLoudEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 70
    .end local v1           #xLoudSupported:I
    :cond_0
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 72
    const-string v2, "persist.service.swiqi.enable"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, swIqiEnabled:I
    iget-object v2, p0, Lcom/android/lt18ispecialsettings/Lt18iSpecialSettings;->mSwIqiEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    .end local v0           #swIqiEnabled:I
    :cond_1
    return-void

    .restart local v1       #xLoudSupported:I
    :cond_2
    move v2, v4

    .line 67
    goto :goto_0

    .end local v1           #xLoudSupported:I
    .restart local v0       #swIqiEnabled:I
    :cond_3
    move v3, v4

    .line 73
    goto :goto_1
.end method
