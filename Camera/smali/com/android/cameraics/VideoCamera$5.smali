.class Lcom/android/cameraics/VideoCamera$5;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/VideoCamera$5;->this$0:Lcom/android/cameraics/VideoCamera;

    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$5;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mPreferences:Lcom/android/cameraics/ComboPreferences;
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$37(Lcom/android/cameraics/VideoCamera;)Lcom/android/cameraics/ComboPreferences;

    move-result-object v1

    .line 2108
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$5;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mCameraId:I
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$31(Lcom/android/cameraics/VideoCamera;)I

    move-result v0

    iget-object v2, p0, Lcom/android/cameraics/VideoCamera$5;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mFrontCameraId:I
    invoke-static {v2}, Lcom/android/cameraics/VideoCamera;->access$38(Lcom/android/cameraics/VideoCamera;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$5;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mBackCameraId:I
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$39(Lcom/android/cameraics/VideoCamera;)I

    move-result v0

    .line 2107
    :goto_0
    invoke-static {v1, v0}, Lcom/android/cameraics/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2110
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$5;->this$0:Lcom/android/cameraics/VideoCamera;

    invoke-virtual {v0}, Lcom/android/cameraics/VideoCamera;->onSharedPreferenceChanged()V

    .line 2111
    const/4 v0, 0x1

    return v0

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/VideoCamera$5;->this$0:Lcom/android/cameraics/VideoCamera;

    #getter for: Lcom/android/cameraics/VideoCamera;->mFrontCameraId:I
    invoke-static {v0}, Lcom/android/cameraics/VideoCamera;->access$38(Lcom/android/cameraics/VideoCamera;)I

    move-result v0

    goto :goto_0
.end method