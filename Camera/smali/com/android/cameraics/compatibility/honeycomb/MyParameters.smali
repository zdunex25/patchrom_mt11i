.class public Lcom/android/cameraics/compatibility/honeycomb/MyParameters;
.super Ljava/lang/Object;
.source "MyParameters.java"


# static fields
.field private static Parameters_getMaxNumDetectedFaces:Ljava/lang/reflect/Method; = null

.field private static Parameters_getMaxNumFocusAreas:Ljava/lang/reflect/Method; = null

.field private static Parameters_getMaxNumMeteringAreas:Ljava/lang/reflect/Method; = null

.field private static Parameters_isAutoExposureLockSupported:Ljava/lang/reflect/Method; = null

.field private static Parameters_isAutoWhiteBalanceLockSupported:Ljava/lang/reflect/Method; = null

.field private static Parameters_isVideoSnapshotSupported:Ljava/lang/reflect/Method; = null

.field private static Parameters_isVideoStabilizationSupported:Ljava/lang/reflect/Method; = null

.field private static Parameters_setAutoExposureLock:Ljava/lang/reflect/Method; = null

.field private static Parameters_setAutoWhiteBalanceLock:Ljava/lang/reflect/Method; = null

.field private static Parameters_setFocusAreas:Ljava/lang/reflect/Method; = null

.field private static Parameters_setMeteringAreas:Ljava/lang/reflect/Method; = null

.field private static Parameters_setRecordingHint:Ljava/lang/reflect/Method; = null

.field private static Parameters_setVideoStabilization:Ljava/lang/reflect/Method; = null

.field private static final TAG:Ljava/lang/String; = "compatibility"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->initCompatibility()V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxNumDetectedFaces(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 234
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumDetectedFaces:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 236
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumDetectedFaces:Ljava/lang/reflect/Method;

    .line 237
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 236
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :goto_0
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 242
    goto :goto_0
.end method

.method public static getMaxNumFocusAreas(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 220
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumFocusAreas:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 222
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumFocusAreas:Ljava/lang/reflect/Method;

    .line 223
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 222
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 228
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 228
    goto :goto_0
.end method

.method public static getMaxNumMeteringAreas(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 248
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumMeteringAreas:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 250
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumMeteringAreas:Ljava/lang/reflect/Method;

    .line 251
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 250
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 256
    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 256
    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 5

    .prologue
    .line 39
    :try_start_0
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 40
    const-string v1, "isAutoExposureLockSupported"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isAutoExposureLockSupported:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_c

    .line 46
    :goto_0
    :try_start_1
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 47
    const-string v1, "isAutoWhiteBalanceLockSupported"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isAutoWhiteBalanceLockSupported:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_b

    .line 53
    :goto_1
    :try_start_2
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 54
    const-string v1, "isVideoSnapshotSupported"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isVideoSnapshotSupported:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_a

    .line 60
    :goto_2
    :try_start_3
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 61
    const-string v1, "isVideoStabilizationSupported"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isVideoStabilizationSupported:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_9

    .line 71
    :goto_3
    :try_start_4
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 72
    const-string v1, "getMaxNumFocusAreas"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumFocusAreas:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8

    .line 78
    :goto_4
    :try_start_5
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 79
    const-string v1, "getMaxNumDetectedFaces"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumDetectedFaces:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_7

    .line 85
    :goto_5
    :try_start_6
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 86
    const-string v1, "getMaxNumMeteringAreas"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumMeteringAreas:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6

    .line 94
    :goto_6
    :try_start_7
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 95
    const-string v1, "setFocusAreas"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setFocusAreas:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_5

    .line 101
    :goto_7
    :try_start_8
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 102
    const-string v1, "setMeteringAreas"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setMeteringAreas:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_4

    .line 108
    :goto_8
    :try_start_9
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 109
    const-string v1, "setAutoExposureLock"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setAutoExposureLock:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_3

    .line 115
    :goto_9
    :try_start_a
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 116
    const-string v1, "setAutoWhiteBalanceLock"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setAutoWhiteBalanceLock:Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_2

    .line 122
    :goto_a
    :try_start_b
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 123
    const-string v1, "setRecordingHint"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setRecordingHint:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_1

    .line 129
    :goto_b
    :try_start_c
    const-class v0, Landroid/hardware/Camera$Parameters;

    .line 130
    const-string v1, "setVideoStabilization"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setVideoStabilization:Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_0

    .line 136
    :goto_c
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_isAutoExposureLockSupported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isAutoExposureLockSupported:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_isAutoWhiteBalanceLockSupported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isAutoWhiteBalanceLockSupported:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_isVideoSnapshotSupported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isVideoSnapshotSupported:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_isVideoStabilizationSupported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isVideoStabilizationSupported:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_getMaxNumFocusAreas "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumFocusAreas:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_getMaxNumDetectedFaces "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumDetectedFaces:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_getMaxNumMeteringAreas "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_getMaxNumMeteringAreas:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_setFocusAreas "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setFocusAreas:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_setMeteringAreas "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setMeteringAreas:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_setAutoExposureLock "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setAutoExposureLock:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_setAutoWhiteBalanceLock "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setAutoWhiteBalanceLock:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_setRecordingHint "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setRecordingHint:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "compatibility"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters_setVideoStabilization "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setVideoStabilization:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 124
    :catch_1
    move-exception v0

    goto/16 :goto_b

    .line 117
    :catch_2
    move-exception v0

    goto/16 :goto_a

    .line 110
    :catch_3
    move-exception v0

    goto/16 :goto_9

    .line 103
    :catch_4
    move-exception v0

    goto/16 :goto_8

    .line 96
    :catch_5
    move-exception v0

    goto/16 :goto_7

    .line 87
    :catch_6
    move-exception v0

    goto/16 :goto_6

    .line 80
    :catch_7
    move-exception v0

    goto/16 :goto_5

    .line 73
    :catch_8
    move-exception v0

    goto/16 :goto_4

    .line 62
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 55
    :catch_a
    move-exception v0

    goto/16 :goto_2

    .line 48
    :catch_b
    move-exception v0

    goto/16 :goto_1

    .line 41
    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method

.method public static isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 156
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isAutoExposureLockSupported:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isAutoExposureLockSupported:Ljava/lang/reflect/Method;

    .line 159
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 164
    goto :goto_0
.end method

.method public static isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 170
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isAutoWhiteBalanceLockSupported:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isAutoWhiteBalanceLockSupported:Ljava/lang/reflect/Method;

    .line 173
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 178
    goto :goto_0
.end method

.method public static isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 184
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isVideoSnapshotSupported:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 186
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isVideoSnapshotSupported:Ljava/lang/reflect/Method;

    .line 187
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 186
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 192
    goto :goto_0
.end method

.method public static isVideoStabilizationSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 6
    .parameter "param"

    .prologue
    const/4 v3, 0x0

    .line 197
    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isVideoStabilizationSupported:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 199
    :try_start_0
    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_isVideoStabilizationSupported:Ljava/lang/reflect/Method;

    .line 200
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 199
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 213
    :goto_0
    return v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "compatibility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "video-stabilization-supported"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 213
    goto :goto_0
.end method

.method public static setAutoExposureLock(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5
    .parameter "param"
    .parameter "toggle"

    .prologue
    .line 287
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setAutoExposureLock:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 289
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setAutoExposureLock:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setAutoWhiteBalanceLock(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5
    .parameter "param"
    .parameter "toggle"

    .prologue
    .line 299
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setAutoWhiteBalanceLock:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 301
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setAutoWhiteBalanceLock:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 4
    .parameter "param"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setFocusAreas:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setFocusAreas:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 4
    .parameter "param"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setMeteringAreas:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setMeteringAreas:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setRecordingHint(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5
    .parameter "param"
    .parameter "hint"

    .prologue
    .line 311
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setRecordingHint:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setRecordingHint:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setVideoStabilization(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5
    .parameter "param"
    .parameter "stab"

    .prologue
    .line 322
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setVideoStabilization:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 324
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyParameters;->Parameters_setVideoStabilization:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "video-stabilization"

    if-eqz p1, :cond_1

    const-string v1, "true"

    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "false"

    goto :goto_1
.end method
