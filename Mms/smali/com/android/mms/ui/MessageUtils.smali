.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$MmsReportRequest;,
        Lcom/android/mms/ui/MessageUtils$MmsReportStatus;,
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    }
.end annotation


# static fields
.field private static final INSERT_SMS_LOCK:Ljava/lang/Object;

.field private static final MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

.field private static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final MX_SMS_STATUS_URI:Landroid/net/Uri;

.field private static final NUMERIC_CHARS_SUGAR:[C

.field private static final SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

.field public static final mmsUri:Landroid/net/Uri;

.field private static numericSugarMap:Ljava/util/HashMap;

.field private static sLocalNumber:Ljava/lang/String;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final smsUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 137
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "address"

    aput-object v2, v1, v0

    const-string v2, "d_rpt"

    aput-object v2, v1, v3

    const-string v2, "rr"

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 143
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "address"

    aput-object v2, v1, v0

    const-string v2, "delivery_status"

    aput-object v2, v1, v3

    const-string v2, "read_status"

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 163
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 173
    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 177
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 179
    const-string v1, "content://sms/mx_status"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->MX_SMS_STATUS_URI:Landroid/net/Uri;

    .line 182
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->INSERT_SMS_LOCK:Ljava/lang/Object;

    .line 187
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 188
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    .line 1450
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->smsUri:Landroid/net/Uri;

    .line 1451
    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->mmsUri:Landroid/net/Uri;

    return-void

    .line 173
    nop

    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static appendIntToCharArray([CII)I
    .locals 6
    .parameter "result"
    .parameter "cursor"
    .parameter "num"

    .prologue
    .line 1504
    const/4 v0, 0x0

    .line 1506
    .local v0, count:I
    :cond_0
    add-int v4, p1, v0

    rem-int/lit8 v5, p2, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p0, v4

    .line 1507
    div-int/lit8 p2, p2, 0xa

    .line 1508
    add-int/lit8 v0, v0, 0x1

    .line 1509
    if-gtz p2, :cond_0

    .line 1510
    move v1, p1

    .local v1, i:I
    add-int v4, p1, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, j:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1511
    aget-char v3, p0, v1

    .line 1512
    .local v3, x:C
    aget-char v4, p0, v2

    aput-char v4, p0, v1

    .line 1513
    aput-char v3, p0, v2

    .line 1510
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1515
    .end local v3           #x:C
    :cond_1
    add-int v4, p1, v0

    return v4
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1016
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1017
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1018
    const v1, 0x7f0a00e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1019
    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1020
    const v1, 0x7f0a0077

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1021
    const v1, 0x7f0a0078

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1022
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1023
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1024
    return-void
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1041
    if-eqz p1, :cond_0

    .line 1042
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1044
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 1028
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1031
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1032
    const-string v1, ""

    .line 1036
    .end local v1           #rawBytes:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1033
    .restart local v1       #rawBytes:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 1036
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static forceSync(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 1669
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1670
    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1671
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1672
    const-string v0, "force"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1673
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1674
    aget-object v3, v1, v0

    const-string v4, "sms"

    invoke-static {v3, v4, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1676
    :cond_0
    return-void
.end method

.method public static forwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1410
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1412
    const-string v1, "forwarded_message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    const-string v1, "sms_body"

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1440
    :goto_0
    return-void

    .line 1418
    :cond_0
    const/4 v1, 0x0

    const v2, 0x7f0a01af

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 1420
    new-instance v2, Lcom/android/mms/ui/MessageUtils$8;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Landroid/content/Intent;Landroid/app/ProgressDialog;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageUtils$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getConversationGroupByTime(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1377
    const-string v0, "pref_key_time_style_auto_group"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1379
    sget-object v1, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1380
    return v0
.end method

.method public static getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1363
    .line 1364
    const-string v0, "pref_key_messaging_style_list"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1373
    :goto_0
    return-object v0

    .line 1367
    :cond_0
    const-string v0, "pref_key_messaging_style_bubble"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1371
    :cond_1
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDateType(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1384
    const-string v0, "pref_key_date_type"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverReportMode(Landroid/content/SharedPreferences;Z)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1347
    const-string v1, "pref_key_delivery_reports"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1349
    const-string v2, "pref_key_mms_read_reports"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1352
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1354
    const/4 v0, 0x3

    .line 1356
    :cond_0
    if-eqz v2, :cond_1

    .line 1357
    or-int/lit8 v0, v0, 0x4

    .line 1359
    :cond_1
    return v0
.end method

.method public static getExpiredMxSms(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1591
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(mx_status=16 or mx_status=1 or mx_status=196609) and (out_time>0 and out_time<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mx_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "out_time"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFileNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fullpath"
    .parameter "fallback"

    .prologue
    .line 1767
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1768
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 1769
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1770
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1774
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    move-object p1, p0

    goto :goto_0
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 904
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 906
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "msgItem"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    .line 203
    :cond_0
    const-string v1, "mms"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 205
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    const-string v1, "Mms"

    const-string v2, "No details could be retrieved."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v1, ""

    goto :goto_0

    .line 207
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 216
    .end local v0           #type:I
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMessageStats(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1273
    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMessageStats(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 1259
    invoke-static {p0}, Lcom/android/mms/theos0o/GsmEncoding;->seqToGSM(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    .line 1266
    .local v1, params:[I
    aget v0, v1, v3

    .line 1267
    .local v0, msgCount:I
    const/4 v3, 0x2

    aget v2, v1, v3

    .line 1269
    .local v2, remainingInCurrentMessage:I
    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getMessageStats(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getMmsReportItems(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "msgItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getMmsReportRequests(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/List;

    move-result-object v3

    .line 409
    .local v3, reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageUtils$MmsReportRequest;>;"
    if-nez v3, :cond_1

    .line 425
    :cond_0
    return-object v1

    .line 413
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 417
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getMmsReportStatus(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/Map;

    move-result-object v4

    .line 418
    .local v4, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageUtils$MmsReportRequest;

    .line 420
    .local v2, reportReq:Lcom/android/mms/ui/MessageUtils$MmsReportRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a00cd

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0, v2, v4}, Lcom/android/mms/ui/MessageUtils;->getMmsReportStatusText(Landroid/content/Context;Lcom/android/mms/ui/MessageUtils$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, statusText:Ljava/lang/String;
    new-instance v6, Lcom/android/mms/ui/DeliveryReportItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0a00cc

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageUtils$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getMmsReportRequests(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "msgItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageUtils$MmsReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 430
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 432
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 435
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 453
    :goto_0
    return-object v4

    .line 440
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 453
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 444
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v8, reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageUtils$MmsReportRequest;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    new-instance v0, Lcom/android/mms/ui/MessageUtils$MmsReportRequest;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/MessageUtils$MmsReportRequest;-><init>(Ljava/lang/String;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 453
    .end local v8           #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageUtils$MmsReportRequest;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageUtils$MmsReportRequest;>;"
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    goto :goto_0
.end method

.method static getMmsReportStatus(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/Map;
    .locals 11
    .parameter "context"
    .parameter "msgItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/MessageUtils$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 458
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 460
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 463
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 483
    :goto_0
    return-object v4

    .line 468
    :cond_0
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v10, statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, recipient:Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 476
    :goto_2
    new-instance v9, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v9, v0, v1}, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;-><init>(II)V

    .line 479
    .local v9, status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 483
    .end local v8           #recipient:Ljava/lang/String;
    .end local v9           #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    .end local v10           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 473
    .restart local v8       #recipient:Ljava/lang/String;
    .restart local v10       #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    :cond_1
    :try_start_1
    invoke-static {v8}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 483
    .end local v8           #recipient:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v10

    goto :goto_0
.end method

.method private static getMmsReportStatusText(Landroid/content/Context;Lcom/android/mms/ui/MessageUtils$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageUtils$MmsReportRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/MessageUtils$MmsReportStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    const v3, 0x7f0a00c6

    .line 491
    if-nez p2, :cond_0

    .line 493
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 525
    :goto_0
    return-object v2

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageUtils$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, recipient:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_1
    invoke-static {p2, v0}, Lcom/android/mms/ui/MessageUtils;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/MessageUtils$MmsReportStatus;

    move-result-object v1

    .line 500
    .local v1, status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    if-nez v1, :cond_2

    .line 502
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 497
    .end local v1           #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    :cond_1
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 505
    .restart local v1       #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageUtils$MmsReportRequest;->isReadReportRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    iget v2, v1, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->readStatus:I

    if-eqz v2, :cond_3

    .line 507
    iget v2, v1, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->readStatus:I

    packed-switch v2, :pswitch_data_0

    .line 516
    :cond_3
    iget v2, v1, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->deliveryStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 525
    const v2, 0x7f0a00c9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 509
    :pswitch_0
    const v2, 0x7f0a00c7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 511
    :pswitch_1
    const v2, 0x7f0a00ca

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 518
    :sswitch_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 521
    :sswitch_1
    const v2, 0x7f0a00c8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 523
    :sswitch_2
    const v2, 0x7f0a00cb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 26
    .parameter "context"
    .parameter "cursor"
    .parameter "msgItem"

    .prologue
    .line 279
    const/16 v22, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 280
    .local v19, type:I
    const/16 v22, 0x82

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 281
    invoke-static/range {p0 .. p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v22

    .line 403
    :goto_0
    return-object v22

    .line 284
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v3, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 287
    .local v13, res:Landroid/content/res/Resources;
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 288
    .local v7, id:J
    sget-object v22, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 292
    .local v20, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .local v11, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v22, 0x7f0a00ab

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const v22, 0x7f0a00ad

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    instance-of v0, v11, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v22, v11

    .line 305
    check-cast v22, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, from:Ljava/lang/String;
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    const v22, 0x7f0a00af

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    .end local v5           #from:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_1
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 314
    .local v18, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_7

    .line 315
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    const v22, 0x7f0a00b0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :goto_2
    instance-of v0, v11, Lcom/google/android/mms/pdu/SendReq;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v22, v11

    .line 326
    check-cast v22, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    .line 327
    .local v21, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v21, :cond_2

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_2

    .line 328
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    const v22, 0x7f0a00b1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .end local v21           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const/16 v22, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 337
    .local v12, msgBox:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->getDateSent()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_3

    .line 338
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x7f0a00b2

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->getDateSent()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_3
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v12, v0, :cond_8

    .line 345
    const v22, 0x7f0a00b4

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :goto_3
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    const v22, 0x7f0a00b5

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const/4 v15, 0x0

    .line 360
    .local v15, size:I
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 361
    .local v17, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_4

    .line 362
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v16

    .line 364
    .local v16, subStr:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v22

    add-int v15, v15, v22

    .line 365
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .end local v16           #subStr:Ljava/lang/String;
    :cond_4
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    const v22, 0x7f0a00b7

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v14

    .line 375
    .local v14, simplePduDoc:Lcom/android/mms/ui/SimplePduDoc;
    if-nez v14, :cond_a

    .line 376
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v22

    add-int v15, v15, v22

    .line 381
    :goto_4
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    const v22, 0x7f0a00b6

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    const-string v22, " KB"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    instance-of v0, v11, Lcom/google/android/mms/pdu/SendReq;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 388
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v22

    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->isReadReport()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 390
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getMmsReportItems(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/List;

    move-result-object v10

    .line 391
    .local v10, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_b

    .line 392
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    const v22, 0x7f0a00fb

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/DeliveryReportItem;

    .line 395
    .local v9, item:Lcom/android/mms/ui/DeliveryReportItem;
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    iget-object v0, v9, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v22, ", "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v0, v9, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 294
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #item:Lcom/android/mms/ui/DeliveryReportItem;
    .end local v10           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .end local v11           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v12           #msgBox:I
    .end local v14           #simplePduDoc:Lcom/android/mms/ui/SimplePduDoc;
    .end local v15           #size:I
    .end local v17           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v4

    .line 295
    .local v4, e:Lcom/google/android/mms/MmsException;
    const-string v22, "Mms"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to load the message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a00a9

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 308
    .end local v4           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #from:Ljava/lang/String;
    .restart local v11       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_6
    const v22, 0x7f0a0076

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 320
    .end local v5           #from:Ljava/lang/String;
    .restart local v18       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_7
    const-string v22, "Mms"

    const-string v23, "recipient list is empty!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 346
    .restart local v12       #msgBox:I
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_9

    .line 347
    const v22, 0x7f0a00b3

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 349
    :cond_9
    const v22, 0x7f0a00b2

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 378
    .restart local v14       #simplePduDoc:Lcom/android/mms/ui/SimplePduDoc;
    .restart local v15       #size:I
    .restart local v17       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    invoke-virtual {v14}, Lcom/android/mms/ui/SimplePduDoc;->getCompleteSize()I

    move-result v22

    add-int v15, v15, v22

    goto/16 :goto_4

    .line 403
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v1, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 224
    .local v7, res:Landroid/content/res/Resources;
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 225
    .local v4, id:J
    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 229
    .local v9, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .local v6, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v10, 0x7f0a00ab

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const v10, 0x7f0a00ae

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, from:Ljava/lang/String;
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    const v10, 0x7f0a00af

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .end local v3           #from:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    const v10, 0x7f0a001f

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    const v10, 0x7f0a00b5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 259
    .local v8, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v8, :cond_0

    .line 260
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    const v10, 0x7f0a00bb

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    const v10, 0x7f0a00b6

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v10

    const-wide/16 v12, 0x3ff

    add-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const v10, 0x7f0a0020

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v6           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v8           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    return-object v10

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v10, "Mms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to load the message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00a9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 244
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .restart local v3       #from:Ljava/lang/String;
    .restart local v6       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1
    const v10, 0x7f0a0076

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 696
    const v0, 0x20015

    invoke-static {p0, p1, p2, v0}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefNotificationBodyEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_key_enable_notification_body"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPrefNotificationBodyEnabledWithSecure(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1293
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationBodyEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAccessControlledOrPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPrefNotificationEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_key_enable_notification"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPrefWakeupScreenEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_key_enable_wake_up_screen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 649
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 656
    :pswitch_0
    const v1, 0x7f0a00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 651
    :pswitch_1
    const v1, 0x7f0a00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 653
    :pswitch_2
    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRelativeTimeStamp(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "when"

    .prologue
    .line 702
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 703
    .local v0, buffer:Ljava/nio/CharBuffer;
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lmiui/util/MiuiDateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZLjava/nio/CharBuffer;)V

    .line 704
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "cursor"
    .parameter "msgItem"

    .prologue
    .line 583
    const-string v10, "Mms"

    const-string v11, "getTextMessageDetails"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v4, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 589
    .local v8, res:Landroid/content/res/Resources;
    const v10, 0x7f0a00ab

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const v10, 0x7f0a00ac

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    const/16 v10, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 595
    .local v9, smsType:I
    invoke-static {v9}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 596
    const v10, 0x7f0a00b0

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :goto_0
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 604
    const/4 v10, 0x6

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 605
    .local v2, date_sent:J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_0

    .line 606
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    const v10, 0x7f0a00b2

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .end local v2           #date_sent:J
    :cond_0
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 615
    const v10, 0x7f0a00b4

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :goto_1
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 623
    .local v0, date:J
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 626
    const/4 v10, 0x6

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 628
    .local v6, rcvDate:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    .line 629
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    const v10, 0x7f0a00b3

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .end local v6           #rcvDate:J
    :cond_1
    const/16 v10, 0xb

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 638
    .local v5, errorCode:I
    if-eqz v5, :cond_2

    .line 639
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0a00bc

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 598
    .end local v0           #date:J
    .end local v5           #errorCode:I
    :cond_3
    const v10, 0x7f0a00af

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 616
    :cond_4
    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 617
    const v10, 0x7f0a00b3

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 619
    :cond_5
    const v10, 0x7f0a00b2

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getUncompletedMxSms(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1607
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(mx_status=16 or mx_status=1) and (out_time>0) and (mx_id>0)"

    const-string v5, "out_time"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1758
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1760
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1761
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1763
    :cond_0
    return-object v1
.end method

.method private static getVideoCaptureDurationLimit()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 747
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 748
    .local v0, camcorder:Landroid/media/CamcorderProfile;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/media/CamcorderProfile;->duration:I

    goto :goto_0
.end method

.method public static handleMxSmsFailed(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "mxMsgId"

    .prologue
    .line 1541
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->MX_SMS_STATUS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1542
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->handleMxSmsFailed(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1543
    return-void
.end method

.method public static handleMxSmsFailed(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1546
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1548
    const-string v1, "pref_key_mx_auto_resend_sms"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1550
    if-eqz v0, :cond_2

    .line 1551
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1552
    const-string v1, "mx_status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->requireDeliveryStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1557
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "(mx_status!=17 AND mx_status!=0)"

    invoke-virtual {v1, p1, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1562
    invoke-static {p0}, Lcom/android/mms/transaction/SmsMessageSender;->sendQueuedMessage(Landroid/content/Context;)V

    .line 1579
    :cond_1
    :goto_0
    return-void

    .line 1564
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1565
    const-string v1, "mx_status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1566
    const-string v1, "type"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1567
    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1568
    const-string v1, "error_code"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "(mx_status!=17 AND mx_status!=0)"

    invoke-virtual {v1, p1, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1576
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 940
    const-string v4, "m_type = 132 AND read = 0 AND rr = 128"

    .line 944
    if-eqz p1, :cond_0

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND thread_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 948
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "m_id"

    aput-object v0, v3, v7

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 952
    if-nez v1, :cond_1

    .line 1011
    :goto_0
    return-void

    .line 956
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 958
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 959
    if-eqz p3, :cond_2

    .line 960
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 965
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 966
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 967
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 970
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 973
    new-instance v1, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v1, v0, p0, p2, p3}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 988
    new-instance v0, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v0, p3}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Ljava/lang/Runnable;)V

    .line 998
    new-instance v2, Lcom/android/mms/ui/MessageUtils$6;

    invoke-direct {v2, p3}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Ljava/lang/Runnable;)V

    .line 1008
    invoke-static {p0, v1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public static insertUniqueMessage(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 1789
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1790
    const-string v1, "address"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1791
    const-string v1, "body"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1792
    const-string v1, "date"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1793
    const/4 v1, 0x0

    .line 1795
    const-string v2, "mx_status"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1796
    if-eqz v2, :cond_3

    .line 1797
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v6, v1

    .line 1799
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1800
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    invoke-static {v1}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    .line 1803
    sget-object v11, Lcom/android/mms/ui/MessageUtils;->INSERT_SMS_LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 1804
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 1809
    const/4 v4, 0x0

    .line 1810
    const-wide/16 v2, 0x0

    .line 1811
    const/4 v1, -0x1

    .line 1812
    if-eqz v5, :cond_1

    .line 1814
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1815
    const-string v1, "body"

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1816
    const-string v2, "date"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1817
    const-string v3, "mx_status"

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1819
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1820
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1821
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1824
    :cond_0
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1828
    :cond_1
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v1, v6, :cond_2

    sub-long v1, v9, v2

    const-wide/32 v3, 0x2932e00

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1830
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicated message received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v7, v2}, Lmiui/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/4 v0, 0x0

    monitor-exit v11

    .line 1837
    :goto_1
    return-object v0

    .line 1824
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1841
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1837
    :cond_2
    :try_start_3
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, p1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_3
    move v6, v1

    goto/16 :goto_0
.end method

.method public static isAccessControlled(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1306
    invoke-static {}, Lcom/android/mms/MmsApp;->getChooseLockSettingsHelper()Lmiui/security/ChooseLockSettingsHelper;

    move-result-object v1

    .line 1307
    if-nez v1, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.mms"

    invoke-static {p0, v1}, Lmiui/net/FirewallManager;->isAccessControlProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAccessControlledOrPrivacyModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1298
    invoke-static {}, Lcom/android/mms/MmsApp;->getChooseLockSettingsHelper()Lmiui/security/ChooseLockSettingsHelper;

    move-result-object v0

    .line 1299
    .local v0, securityHelper:Lmiui/security/ChooseLockSettingsHelper;
    if-nez v0, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAccessControlled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    .line 1155
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v3

    .line 1159
    :cond_1
    if-nez p0, :cond_3

    move v2, v3

    .line 1161
    .local v2, len:I
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 1165
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1168
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1169
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1170
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_0

    .line 1168
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1159
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 1175
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1533
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lt v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1519
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 1522
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1523
    const-string v2, "0123456789+. -#*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1526
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPrivacyModeEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1315
    invoke-static {}, Lcom/android/mms/MmsApp;->getChooseLockSettingsHelper()Lmiui/security/ChooseLockSettingsHelper;

    move-result-object v0

    .line 1316
    .local v0, securityHelper:Lmiui/security/ChooseLockSettingsHelper;
    if-nez v0, :cond_0

    .line 1317
    const/4 v1, 0x0

    .line 1319
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1212
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, retVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isZhCnLanguage()Z
    .locals 2

    .prologue
    .line 1537
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadFontSizeConfiguration(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1344
    return-void
.end method

.method public static makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 1443
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1444
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1445
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1447
    :cond_0
    return-object v0
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 1224
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    .end local p0
    .local v0, retVal:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1229
    .end local v0           #retVal:Ljava/lang/String;
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .restart local v0       #retVal:Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object p0, v0

    .line 1231
    goto :goto_0

    .line 1235
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1240
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1185
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1187
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1188
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1191
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1187
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1196
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1201
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1202
    const/4 v4, 0x0

    .line 1205
    .end local v1           #c:C
    :goto_2
    return-object v4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private static queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    .locals 4
    .parameter
    .parameter "recipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/MessageUtils$MmsReportStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mms/ui/MessageUtils$MmsReportStatus;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 532
    .local v2, recipientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 533
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    .local v1, r:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;

    .line 544
    .end local v1           #r:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 540
    .restart local v1       #r:Ljava/lang/String;
    :cond_1
    invoke-static {v1, p1}, Lmiui/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;

    goto :goto_0

    .line 544
    .end local v1           #r:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static recordSound(Landroid/content/Context;IJ)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"
    .parameter "limitSize"

    .prologue
    .line 720
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 726
    const-string v1, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 729
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 731
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static recordVideo(Landroid/content/Context;IJ)V
    .locals 4
    .parameter "context"
    .parameter "requestCode"
    .parameter "sizeLimit"

    .prologue
    .line 734
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 735
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getVideoCaptureDurationLimit()I

    move-result v0

    .line 736
    .local v0, durationLimit:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.videoQuality"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    const-string v2, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 739
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const-string v2, "output"

    sget-object v3, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 742
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 744
    .end local v0           #durationLimit:I
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static requireDeliveryStatus(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1582
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1583
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 1584
    const-string v3, "pref_key_delivery_reports"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1587
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resendMms(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1619
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1620
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mms/utils/MxMessagePduHelper;->markMmsSendAsMx(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 1623
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1624
    const-string v0, "err_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1626
    const-string v0, "err_code"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1627
    const-string v0, "retry_index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1628
    const-string v0, "last_try"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1630
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg_id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1637
    if-eqz p2, :cond_0

    .line 1638
    invoke-static {p0, p1}, Lcom/xiaomi/mms/transaction/MxMmsTransactionService;->startSendMms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1647
    :goto_0
    return-void

    .line 1641
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1642
    const-string v1, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1643
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1645
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
    .locals 8
    .parameter "context"
    .parameter "imageUri"
    .parameter "handler"
    .parameter "cb"
    .parameter "append"

    .prologue
    .line 846
    new-instance v4, Lcom/android/mms/ui/MessageUtils$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageUtils$2;-><init>(Landroid/content/Context;)V

    .line 853
    .local v4, showProgress:Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 855
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 889
    return-void
.end method

.method public static saveMmsPartToDisk(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x0

    .line 1679
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 1685
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1686
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_7

    .line 1687
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 1689
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 1690
    if-nez v3, :cond_0

    .line 1691
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    .line 1693
    :cond_0
    if-nez v3, :cond_1

    .line 1694
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    .line 1698
    :cond_1
    if-nez v3, :cond_3

    move-object v3, p2

    .line 1705
    :goto_0
    invoke-static {v3, p2}, Lcom/android/mms/ui/MessageUtils;->getFileNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1712
    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 1713
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    .line 1714
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1720
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/mms/ui/MessageUtils;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1723
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1724
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1725
    const-string v1, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " failed!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1742
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1743
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1754
    :cond_2
    :goto_2
    return-object v4

    .line 1702
    :cond_3
    :try_start_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 1703
    const-string v3, "[?|*]"

    const-string v6, "_"

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1716
    :cond_4
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1717
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1729
    :cond_5
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1731
    const/16 v6, 0x2000

    :try_start_3
    new-array v6, v6, [B

    .line 1733
    :goto_3
    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-eq v7, v9, :cond_6

    .line 1734
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1737
    :catch_0
    move-exception v1

    .line 1739
    :goto_4
    :try_start_4
    const-string v3, "Mms"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v3, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1742
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1743
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_6
    move-object v1, v3

    move-object v3, v5

    .line 1742
    :goto_5
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1743
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1746
    if-eqz v1, :cond_2

    .line 1752
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1754
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1742
    :catchall_0
    move-exception v1

    move-object v2, v4

    :goto_6
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1743
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1

    .line 1742
    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v5

    goto :goto_6

    .line 1737
    :catch_1
    move-exception v1

    move-object v5, v4

    move-object v2, v4

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v5, v4

    goto :goto_4

    :cond_7
    move-object v1, v4

    move-object v3, v4

    goto :goto_5
.end method

.method public static selectAudio(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    const/4 v2, 0x0

    .line 708
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 712
    const-string v1, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 713
    const-string v1, "android.intent.extra.ringtone.TITLE"

    const v2, 0x7f0a00f1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 717
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 756
    const-string v0, "image/*"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 757
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "requestCode"
    .parameter "contentType"
    .parameter "localFilesOnly"

    .prologue
    .line 761
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v0, innerIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    if-eqz p3, :cond_0

    .line 767
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 770
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 772
    .local v1, wrapperIntent:Landroid/content/Intent;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 774
    .end local v0           #innerIntent:Landroid/content/Intent;
    .end local v1           #wrapperIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 752
    const-string v0, "video/*"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 753
    return-void
.end method

.method public static setAttachmentImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1391
    if-nez p1, :cond_1

    .line 1392
    const v0, 0x7f0200c1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    if-eqz p2, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/MessageUtils$7;

    invoke-direct {v1, p1, p0}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public static setListViewTouchPadding(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 1497
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1500
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setTouchPadding(II)V

    .line 1501
    return-void
.end method

.method public static setMessageSendTime(Landroid/content/Context;JJJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1455
    cmp-long v0, p3, p5

    if-nez v0, :cond_0

    .line 1470
    :goto_0
    return-void

    .line 1460
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1461
    const-string v0, "date"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->smsUri:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timed > 0 AND thread_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND date = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1466
    const-string v0, "date_full"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mmsUri:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timed > 0 AND thread_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND date*1000+date_ms_part = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMmsSendTime(Landroid/content/Context;Landroid/net/Uri;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1485
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1486
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 1487
    const-string v0, "timed"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1488
    const-string v0, "date_full"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1492
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1494
    return-void

    .line 1490
    :cond_0
    const-string v0, "timed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static setSmsSendTime(Landroid/content/Context;Landroid/net/Uri;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1473
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1474
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 1475
    const-string v0, "timed"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1476
    const-string v0, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1480
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1482
    return-void

    .line 1478
    :cond_0
    const-string v0, "timed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 893
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 900
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 805
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 807
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 808
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 809
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 810
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 819
    return-void
.end method

.method public static updateSmsStatus(Landroid/content/Context;JI)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1650
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1651
    const-string v1, "mx_status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1652
    const/16 v1, 0x10

    if-ne p3, v1, :cond_1

    .line 1653
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1658
    :cond_0
    :goto_0
    const-string v1, "content://sms/mx_status"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1659
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1660
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mx_status!=0 AND mx_status!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1654
    :cond_1
    const/16 v1, 0x11

    if-ne p3, v1, :cond_0

    .line 1655
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1656
    const-string v1, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter "context"
    .parameter "msgUri"
    .parameter "slideshow"

    .prologue
    .line 1062
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;I)V

    .line 1063
    return-void
.end method

.method private static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1067
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1068
    :goto_0
    if-eqz v0, :cond_1

    .line 1070
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1093
    :goto_1
    return-void

    .line 1067
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1073
    :cond_1
    if-eqz p2, :cond_2

    .line 1074
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1076
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1077
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1078
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1086
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1087
    if-lez p3, :cond_3

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 1088
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    const-string v0, "Mms"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1090
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/SimplePduDoc;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1096
    if-eqz p1, :cond_0

    .line 1097
    invoke-virtual {p1}, Lcom/android/mms/ui/SimplePduDoc;->isSlideShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1099
    invoke-virtual {p1}, Lcom/android/mms/ui/SimplePduDoc;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearancePart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v0

    .line 1104
    if-eqz v0, :cond_0

    .line 1106
    :try_start_0
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPart;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1111
    const v0, 0x7f0a0192

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 6
    .parameter "context"
    .parameter "slideshow"

    .prologue
    const/4 v5, 0x1

    .line 777
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v4

    if-nez v4, :cond_0

    .line 778
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 781
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 782
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .line 783
    .local v2, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 784
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 789
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 791
    const-string v4, "SingleItemOnly"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 794
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 795
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, contentType:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 801
    return-void

    .line 785
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 786
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_0

    .line 797
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_1
.end method

.method public static writeHprofDataToFile()V
    .locals 4

    .prologue
    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mms_oom_hprof_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    :try_start_0
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 1145
    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### written hprof data to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHprofDataToFile: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
