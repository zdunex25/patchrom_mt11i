.class public Lcom/miui/fmradio/database/PreSetsDB;
.super Ljava/lang/Object;
.source "PreSetsDB.java"


# instance fields
.field private allColumns:[Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/miui/fmradio/database/PreSetsDBHelper;

.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "frequency"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/fmradio/database/PreSetsDB;->allColumns:[Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/miui/fmradio/database/PreSetsDB;->mCtx:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private cursorToPreSetRadio(Landroid/database/Cursor;)Lcom/miui/fmradio/logic/PreSetRadio;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 104
    new-instance v0, Lcom/miui/fmradio/logic/PreSetRadio;

    invoke-direct {v0}, Lcom/miui/fmradio/logic/PreSetRadio;-><init>()V

    .line 105
    .local v0, preSetRadio:Lcom/miui/fmradio/logic/PreSetRadio;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/logic/PreSetRadio;->setUid(J)V

    .line 106
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/logic/PreSetRadio;->setStationName(Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/logic/PreSetRadio;->setStationFrequency(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/database/PreSetsDB;->dbHelper:Lcom/miui/fmradio/database/PreSetsDBHelper;

    invoke-virtual {v1}, Lcom/miui/fmradio/database/PreSetsDBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Could not close Radio PreSets DB"

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createPreSetItem(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "name"
    .parameter "frequency"

    .prologue
    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "frequency"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/miui/fmradio/database/PreSetsDB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "preset_stations"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public deletePreSetItem(Lcom/miui/fmradio/logic/PreSetRadio;)V
    .locals 6
    .parameter "preSetRadio"

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/miui/fmradio/logic/PreSetRadio;->getUid()J

    move-result-wide v0

    .line 67
    .local v0, id:J
    iget-object v2, p0, Lcom/miui/fmradio/database/PreSetsDB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "preset_stations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public getAllPreSetRadios()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/fmradio/logic/PreSetRadio;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v10, Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/fmradio/logic/PreSetRadio;>;"
    iget-object v0, p0, Lcom/miui/fmradio/database/PreSetsDB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preset_stations"

    iget-object v2, p0, Lcom/miui/fmradio/database/PreSetsDB;->allColumns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 74
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, v8}, Lcom/miui/fmradio/database/PreSetsDB;->cursorToPreSetRadio(Landroid/database/Cursor;)Lcom/miui/fmradio/logic/PreSetRadio;

    move-result-object v9

    .line 77
    .local v9, preSetRadio:Lcom/miui/fmradio/logic/PreSetRadio;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 81
    .end local v9           #preSetRadio:Lcom/miui/fmradio/logic/PreSetRadio;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 82
    return-object v10
.end method

.method public open()Lcom/miui/fmradio/database/PreSetsDB;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/miui/fmradio/database/PreSetsDBHelper;

    iget-object v1, p0, Lcom/miui/fmradio/database/PreSetsDB;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/fmradio/database/PreSetsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/database/PreSetsDB;->dbHelper:Lcom/miui/fmradio/database/PreSetsDBHelper;

    .line 45
    iget-object v0, p0, Lcom/miui/fmradio/database/PreSetsDB;->dbHelper:Lcom/miui/fmradio/database/PreSetsDBHelper;

    invoke-virtual {v0}, Lcom/miui/fmradio/database/PreSetsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/database/PreSetsDB;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-object p0
.end method

.method public updateRadioPreSet(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "uid"
    .parameter "name"
    .parameter "frequency"
    .parameter "shouldPrint"

    .prologue
    .line 96
    const-string v1, "Will update preset state."

    const/4 v2, 0x2

    invoke-static {v1, v2, p5}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE preset_stations SET name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE _uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, updatePreset:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/fmradio/database/PreSetsDB;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE preset_stations SET frequency = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE _uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/miui/fmradio/database/PreSetsDB;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method
