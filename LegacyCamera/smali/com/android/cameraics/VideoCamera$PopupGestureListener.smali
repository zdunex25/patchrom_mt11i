.class Lcom/android/cameraics/VideoCamera$PopupGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2995
    iput-object p1, p0, Lcom/android/cameraics/VideoCamera$PopupGestureListener;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/VideoCamera;Lcom/android/cameraics/VideoCamera$PopupGestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2995
    invoke-direct {p0, p1}, Lcom/android/cameraics/VideoCamera$PopupGestureListener;-><init>(Lcom/android/cameraics/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 3000
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$PopupGestureListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$19(Lcom/android/cameraics/VideoCamera;)Lcom/android/cameraics/ui/IndicatorControlContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cameraics/ui/IndicatorControlContainer;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 3001
    .local v0, popup:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3011
    :cond_0
    :goto_0
    return v4

    .line 3006
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/cameraics/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3007
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/cameraics/VideoCamera$PopupGestureListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;
    invoke-static {v3}, Lcom/android/cameraics/VideoCamera;->access$19(Lcom/android/cameraics/VideoCamera;)Lcom/android/cameraics/ui/IndicatorControlContainer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/cameraics/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3008
    iget-object v1, p0, Lcom/android/cameraics/VideoCamera$PopupGestureListener;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mIndicatorControlContainer:Lcom/android/cameraics/ui/IndicatorControlContainer;
    invoke-static {v1}, Lcom/android/cameraics/VideoCamera;->access$19(Lcom/android/cameraics/VideoCamera;)Lcom/android/cameraics/ui/IndicatorControlContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cameraics/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    goto :goto_0
.end method
