.class public Lcom/miui/fmradio/logic/PreSetRadio;
.super Ljava/lang/Object;
.source "PreSetRadio.java"


# instance fields
.field private stationFrequency:Ljava/lang/String;

.field private stationName:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationFrequency:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationName:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationFrequency:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getStationFrequency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationFrequency:Ljava/lang/String;

    return-object v0
.end method

.method public getStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/miui/fmradio/logic/PreSetRadio;->uid:J

    return-wide v0
.end method

.method public isStationSet()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    iget-object v1, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationFrequency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStationFrequency(Ljava/lang/String;)V
    .locals 0
    .parameter "stationFrequency"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationFrequency:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStationName(Ljava/lang/String;)V
    .locals 0
    .parameter "stationName"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/fmradio/logic/PreSetRadio;->stationName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/miui/fmradio/logic/PreSetRadio;->uid:J

    .line 62
    return-void
.end method
