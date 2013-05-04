.class Lcom/android/cameraics/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/Camera;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/Camera;


# direct methods
.method constructor <init>(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/Camera$8;->this$0:Lcom/android/cameraics/Camera;

    .line 2864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/android/cameraics/Camera$8;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mPreferences:Lcom/android/cameraics/ComboPreferences;
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$56(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/ComboPreferences;

    move-result-object v1

    .line 2867
    iget-object v0, p0, Lcom/android/cameraics/Camera$8;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mCameraId:I
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$3(Lcom/android/cameraics/Camera;)I

    move-result v0

    iget-object v2, p0, Lcom/android/cameraics/Camera$8;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mFrontCameraId:I
    invoke-static {v2}, Lcom/android/cameraics/Camera;->access$63(Lcom/android/cameraics/Camera;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2868
    iget-object v0, p0, Lcom/android/cameraics/Camera$8;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mBackCameraId:I
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$64(Lcom/android/cameraics/Camera;)I

    move-result v0

    .line 2866
    :goto_0
    invoke-static {v1, v0}, Lcom/android/cameraics/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2869
    iget-object v0, p0, Lcom/android/cameraics/Camera$8;->this$0:Lcom/android/cameraics/Camera;

    invoke-virtual {v0}, Lcom/android/cameraics/Camera;->onSharedPreferenceChanged()V

    .line 2870
    const/4 v0, 0x1

    return v0

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/Camera$8;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mFrontCameraId:I
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$63(Lcom/android/cameraics/Camera;)I

    move-result v0

    goto :goto_0
.end method
