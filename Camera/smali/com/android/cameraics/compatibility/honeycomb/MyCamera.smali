.class public Lcom/android/cameraics/compatibility/honeycomb/MyCamera;
.super Ljava/lang/Object;
.source "MyCamera.java"


# static fields
.field private static Camera_Area_rect:Ljava/lang/reflect/Field; = null

.field private static Camera_setFaceDetectionListener:Ljava/lang/reflect/Method; = null

.field private static Camera_startFaceDetection:Ljava/lang/reflect/Method; = null

.field private static Camera_stopFaceDetection:Ljava/lang/reflect/Method; = null

.field private static final TAG:Ljava/lang/String; = "compatibility"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->initCompatibility()V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArea(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 4
    .parameter "myArea"

    .prologue
    .line 113
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_Area_rect:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    const-class v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_Area_rect:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
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

    .line 121
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 6

    .prologue
    .line 34
    :try_start_0
    const-class v2, Landroid/hardware/Camera;

    .line 35
    const-string v3, "startFaceDetection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_startFaceDetection:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 41
    :goto_0
    :try_start_1
    const-class v2, Landroid/hardware/Camera;

    .line 42
    const-string v3, "stopFaceDetection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 41
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_stopFaceDetection:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 48
    :goto_1
    :try_start_2
    const-string v2, "android.hardware.Camera$FaceDetectionListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 49
    .local v1, FaceDetectionListener:Ljava/lang/Class;
    const-class v2, Landroid/hardware/Camera;

    .line 50
    const-string v3, "setFaceDetectionListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 49
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_setFaceDetectionListener:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :goto_2
    :try_start_3
    const-string v2, "android.hardware.Camera$Area"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, Camera_Area:Ljava/lang/Class;
    const-string v2, "rect"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_Area_rect:Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 62
    .end local v0           #Camera_Area:Ljava/lang/Class;
    :goto_3
    const-string v2, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera_startFaceDetection "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_startFaceDetection:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera_stopFaceDetection "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_stopFaceDetection:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v2, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera_setFaceDetectionListener "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_setFaceDetectionListener:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v2, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera_Area_rect "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_Area_rect:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 58
    :catch_0
    move-exception v2

    goto :goto_3

    .line 51
    :catch_1
    move-exception v2

    goto :goto_2

    .line 43
    .end local v1           #FaceDetectionListener:Ljava/lang/Class;
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 36
    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method

.method public static setFaceDetectionListener(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 6
    .parameter "camera"
    .parameter "listener"

    .prologue
    .line 99
    :try_start_0
    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_setFaceDetectionListener:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 100
    const-string v2, "android.hardware.Camera$FaceDetectionListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, FaceDetectionListener:Ljava/lang/Class;
    sget-object v2, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_setFaceDetectionListener:Ljava/lang/reflect/Method;

    .line 102
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0           #FaceDetectionListener:Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "compatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startFaceDetection(Landroid/hardware/Camera;)V
    .locals 4
    .parameter "camera"

    .prologue
    .line 73
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_startFaceDetection:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_startFaceDetection:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
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

.method public static stopFaceDetection(Landroid/hardware/Camera;)V
    .locals 4
    .parameter "camera"

    .prologue
    .line 85
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_stopFaceDetection:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    sget-object v1, Lcom/android/cameraics/compatibility/honeycomb/MyCamera;->Camera_stopFaceDetection:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
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
