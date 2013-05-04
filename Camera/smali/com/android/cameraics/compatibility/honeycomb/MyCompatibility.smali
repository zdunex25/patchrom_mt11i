.class public Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;
.super Ljava/lang/Object;
.source "MyCompatibility.java"


# static fields
.field private static Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field; = null

.field private static DevicePolicyManager_getCameraDisabled:Ljava/lang/reflect/Method; = null

.field private static MediaRecorder_setLocation:Ljava/lang/reflect/Method; = null

.field private static SurfaceTexture_release:Ljava/lang/reflect/Method; = null

.field private static Switch_setChecked:Ljava/lang/reflect/Method; = null

.field private static Switch_setOnCheckedChangeListener:Ljava/lang/reflect/Method; = null

.field private static final TAG:Ljava/lang/String; = "compatibility"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->initCompatibility()V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraDisabled(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "dpm"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 151
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->DevicePolicyManager_getCameraDisabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->DevicePolicyManager_getCameraDisabled:Ljava/lang/reflect/Method;

    .line 154
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
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

    .line 159
    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 6

    .prologue
    .line 49
    :try_start_0
    const-class v1, Landroid/media/MediaRecorder;

    .line 50
    const-string v2, "setLocation"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->MediaRecorder_setLocation:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 58
    :goto_0
    :try_start_1
    const-string v1, "android.widget.Switch"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, Switch:Ljava/lang/Class;
    const-string v1, "setOnCheckedChangeListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    aput-object v4, v2, v3

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Switch_setOnCheckedChangeListener:Ljava/lang/reflect/Method;

    .line 64
    const-string v1, "setChecked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Switch_setChecked:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 72
    :goto_1
    :try_start_2
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 73
    const-string v2, "getCameraDisabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ComponentName;

    aput-object v5, v3, v4

    .line 72
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->DevicePolicyManager_getCameraDisabled:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    :goto_2
    :try_start_3
    const-string v1, "android.graphics.SurfaceTexture"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    const-string v2, "release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 82
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->SurfaceTexture_release:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 90
    :goto_3
    :try_start_4
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "smallestScreenWidthDp"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_0

    .line 97
    :goto_4
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaRecorder_setLocation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->MediaRecorder_setLocation:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Switch_setOnCheckedChangeListener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Switch_setOnCheckedChangeListener:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Switch_setChecked "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Switch_setChecked:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DevicePolicyManager_getCameraDisabled "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->DevicePolicyManager_getCameraDisabled:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SurfaceTexture_release "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->SurfaceTexture_release:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "compatibility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Configuration_smallestScreenWidthDp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 91
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 85
    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 74
    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 66
    :catch_3
    move-exception v1

    goto/16 :goto_1

    .line 51
    .end local v0           #Switch:Ljava/lang/Class;
    :catch_4
    move-exception v1

    goto/16 :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    sget-object v3, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2

    .line 181
    :try_start_0
    sget-object v3, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x258

    if-lt v3, v4, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 181
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "compatibility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 194
    goto :goto_0
.end method

.method public static release(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .parameter "surfaceTexture"

    .prologue
    .line 166
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->SurfaceTexture_release:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 168
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->SurfaceTexture_release:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
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

.method public static setChecked(Ljava/lang/Object;Z)V
    .locals 5
    .parameter "mSwitch"
    .parameter "selected"

    .prologue
    .line 138
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Switch_setChecked:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Switch_setChecked:Ljava/lang/reflect/Method;

    .line 141
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
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

.method public static setLocation(Landroid/media/MediaRecorder;FF)V
    .locals 5
    .parameter "mediaRecorder"
    .parameter "lat"
    .parameter "lon"

    .prologue
    .line 112
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->MediaRecorder_setLocation:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->MediaRecorder_setLocation:Ljava/lang/reflect/Method;

    .line 115
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
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

.method public static setOnCheckedChangeListener(Ljava/lang/Object;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 4
    .parameter "mSwitch"
    .parameter "listener"

    .prologue
    .line 125
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Switch_setOnCheckedChangeListener:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCompatibility;->Switch_setOnCheckedChangeListener:Ljava/lang/reflect/Method;

    .line 128
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
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
