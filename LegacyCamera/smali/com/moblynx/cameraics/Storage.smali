.class public Lcom/moblynx/cameraics/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final BASE:Ljava/lang/String; = null

.field public static BUCKET_ID:Ljava/lang/String; = null

.field private static final BUFSIZE:I = 0x1000

.field public static final DCIM:Ljava/lang/String; = null

.field public static final LOW_STORAGE_THRESHOLD:J = 0x2faf080L

.field public static final PICTURE_SIZE:J = 0x16e360L

.field public static final PREPARING:J = -0x2L

.field private static final TAG:Ljava/lang/String; = "CameraStorage"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/moblynx/cameraics/Storage;->DCIM:Ljava/lang/String;

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    sput-object v0, Lcom/moblynx/cameraics/Storage;->BASE:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/moblynx/cameraics/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BIILcom/moblynx/cameraics/ComboPreferences;)Landroid/net/Uri;
    .locals 11
    .parameter "resolver"
    .parameter "title"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"
    .parameter "jpeg"
    .parameter "width"
    .parameter "height"
    .parameter "pref"

    .prologue
    .line 65
    move-object/from16 v0, p9

    invoke-static {p1, v0}, Lcom/moblynx/cameraics/Storage;->generateFilepath(Ljava/lang/String;Lcom/moblynx/cameraics/ComboPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, path:Ljava/lang/String;
    const-string v8, "CameraStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "addImage: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 76
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 82
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 83
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "title"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v8, "_display_name"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v8, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v8, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v8, "orientation"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v8, "_data"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v8, "_size"

    move-object/from16 v0, p6

    array-length v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    if-eqz p4, :cond_0

    .line 98
    const-string v8, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 99
    const-string v8, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 102
    :cond_0
    const/4 v6, 0x0

    .line 104
    .local v6, uri:Landroid/net/Uri;
    :try_start_3
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    :goto_1
    move-object v2, v3

    .line 113
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_2
    return-object v6

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v8, "CameraStorage"

    const-string v9, "Failed to write image"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 73
    :goto_4
    const/4 v6, 0x0

    goto :goto_2

    .line 74
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 76
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 79
    :goto_6
    throw v8

    .line 105
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    .line 111
    .local v5, th:Ljava/lang/Throwable;
    const-string v8, "CameraStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to write MediaStore"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v5           #th:Ljava/lang/Throwable;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_6

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 74
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 71
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/moblynx/cameraics/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    return-void
.end method

.method public static generateFilepath(Ljava/lang/String;Lcom/moblynx/cameraics/ComboPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "title"
    .parameter "pref"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/moblynx/cameraics/Storage;->getSelectedDirectory(Lcom/moblynx/cameraics/ComboPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableSpace(Lcom/moblynx/cameraics/ComboPreferences;)J
    .locals 9
    .parameter "pref"

    .prologue
    const-wide/16 v4, -0x1

    .line 121
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, state:Ljava/lang/String;
    const-string v6, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "External storage state="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v6, "checking"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    const-wide/16 v4, -0x2

    .line 142
    :cond_0
    :goto_0
    return-wide v4

    .line 126
    :cond_1
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/moblynx/cameraics/Storage;->getSelectedDirectory(Lcom/moblynx/cameraics/ComboPreferences;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {p0}, Lcom/moblynx/cameraics/Storage;->getSelectedDirectory(Lcom/moblynx/cameraics/ComboPreferences;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    goto :goto_0

    .line 139
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CameraStorage"

    const-string v5, "Fail to access external storage"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const-wide/16 v4, -0x3

    goto :goto_0
.end method

.method public static getSelectedDirectory(Lcom/moblynx/cameraics/ComboPreferences;)Ljava/lang/String;
    .locals 6
    .parameter "pref"

    .prologue
    .line 162
    const-string v0, ""

    .line 165
    .local v0, addDCIM:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/moblynx/cameraics/Storage;->DCIM:Ljava/lang/String;

    sget-object v4, Lcom/moblynx/cameraics/Storage;->BASE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lcom/moblynx/cameraics/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 172
    :goto_0
    const-string v3, "pref_camera_storagesource_key"

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Lcom/moblynx/cameraics/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 176
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/moblynx/cameraics/Storage;->DCIM:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/moblynx/cameraics/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/moblynx/cameraics/Storage;->DCIM:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    :goto_1
    return-object v3

    .line 167
    .end local v2           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/Exception;
    const-string v0, "/DCIM"

    goto :goto_0

    .line 181
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/custom/NewFeatures;->getExtraStorageSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/moblynx/cameraics/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/custom/NewFeatures;->getExtraStorageSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
