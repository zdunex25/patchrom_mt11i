.class public Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmRxApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmRxApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRxApp;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/FmRxApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2087
    const-string v2, "Received Notification!"

    iget-object v3, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static {v3}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 2088
    const-string v2, "EXTRA_COMMAND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EXTRA_COMMAND"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->mPrintDebugInfo:Z
    invoke-static {v3}, Lcom/miui/fmradio/FmRxApp;->access$000(Lcom/miui/fmradio/FmRxApp;)Z

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 2090
    const-string v2, "EXTRA_COMMAND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2091
    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/miui/fmradio/FmRxApp;->access$3100(Lcom/miui/fmradio/FmRxApp;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2092
    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmRxApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2093
    .local v1, nMgr:Landroid/app/NotificationManager;
    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2098
    .end local v1           #nMgr:Landroid/app/NotificationManager;
    :goto_0
    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    #setter for: Lcom/miui/fmradio/FmRxApp;->hidNotification:Z
    invoke-static {v2, v4}, Lcom/miui/fmradio/FmRxApp;->access$1402(Lcom/miui/fmradio/FmRxApp;Z)Z

    .line 2113
    :cond_0
    :goto_1
    return-void

    .line 2095
    :cond_1
    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    #getter for: Lcom/miui/fmradio/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/miui/fmradio/FmRxApp;->access$3100(Lcom/miui/fmradio/FmRxApp;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 2099
    :cond_2
    const-string v2, "EXTRA_COMMAND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2100
    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    #calls: Lcom/miui/fmradio/FmRxApp;->seekUp()V
    invoke-static {v2}, Lcom/miui/fmradio/FmRxApp;->access$3200(Lcom/miui/fmradio/FmRxApp;)V

    goto :goto_1

    .line 2101
    :cond_3
    const-string v2, "EXTRA_COMMAND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2102
    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    #calls: Lcom/miui/fmradio/FmRxApp;->seekDown()V
    invoke-static {v2}, Lcom/miui/fmradio/FmRxApp;->access$3300(Lcom/miui/fmradio/FmRxApp;)V

    goto :goto_1

    .line 2105
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2106
    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmRxApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2108
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2109
    iget-object v2, p0, Lcom/miui/fmradio/FmRxApp$NotificationsReceiver;->this$0:Lcom/miui/fmradio/FmRxApp;

    #calls: Lcom/miui/fmradio/FmRxApp;->exitApp()V
    invoke-static {v2}, Lcom/miui/fmradio/FmRxApp;->access$3400(Lcom/miui/fmradio/FmRxApp;)V

    goto :goto_1
.end method
