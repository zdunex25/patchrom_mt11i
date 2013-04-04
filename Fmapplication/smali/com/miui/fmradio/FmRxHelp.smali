.class public Lcom/miui/fmradio/FmRxHelp;
.super Landroid/app/Activity;
.source "FmRxHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/miui/fmradio/FmRxHelp;->setContentView(I)V

    .line 53
    const v5, 0x7f090007

    invoke-virtual {p0, v5}, Lcom/miui/fmradio/FmRxHelp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 54
    .local v4, tv1:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxHelp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 56
    .local v2, manager:Landroid/content/pm/PackageManager;
    const-string v3, ""

    .line 58
    .local v3, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxHelp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 59
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FmTxHelp"

    const-string v6, "Failed to get app version!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
