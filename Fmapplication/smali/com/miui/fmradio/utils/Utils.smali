.class public Lcom/miui/fmradio/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugFunc(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "message"
    .parameter "type"
    .parameter "shouldPrint"

    .prologue
    .line 21
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 22
    const-string v0, "FmRxApp"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    if-eqz p2, :cond_0

    .line 24
    packed-switch p1, :pswitch_data_0

    .line 38
    const-string v0, "FmRxApp"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 26
    :pswitch_0
    const-string v0, "FmRxApp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :pswitch_1
    const-string v0, "FmRxApp"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :pswitch_2
    const-string v0, "FmRxApp"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :pswitch_3
    const-string v0, "FmRxApp"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
