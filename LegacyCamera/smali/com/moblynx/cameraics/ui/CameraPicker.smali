.class public Lcom/moblynx/cameraics/ui/CameraPicker;
.super Lcom/moblynx/cameraics/ui/RotateImageView;
.source "CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mImageResource:I


# instance fields
.field private mCameraFacing:I

.field private mCameras:[Ljava/lang/CharSequence;

.field private mListener:Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/moblynx/cameraics/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 40
    sget v0, Lcom/moblynx/cameraics/ui/CameraPicker;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/CameraPicker;->setImageResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/CameraPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    const v1, 0x7f0800e9

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/moblynx/cameraics/ui/CameraPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public static setImageResourceId(I)V
    .locals 0
    .parameter "imageResource"

    .prologue
    .line 46
    sput p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mImageResource:I

    .line 47
    return-void
.end method


# virtual methods
.method public initialize(Lcom/moblynx/cameraics/ListPreference;)V
    .locals 4
    .parameter "pref"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mPreference:Lcom/moblynx/cameraics/ListPreference;

    .line 55
    invoke-virtual {p1}, Lcom/moblynx/cameraics/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    .line 56
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, p0}, Lcom/moblynx/cameraics/ui/CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p1}, Lcom/moblynx/cameraics/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, cameraId:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/moblynx/cameraics/ui/CameraPicker;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iput v3, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameraFacing:I

    goto :goto_0

    .line 63
    :cond_1
    iput v2, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameraFacing:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    iget v1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameraFacing:I

    if-nez v1, :cond_1

    .line 71
    const/4 v0, 0x1

    .line 73
    .local v0, newCameraIndex:I
    :goto_1
    iput v0, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameraFacing:I

    .line 74
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mPreference:Lcom/moblynx/cameraics/ListPreference;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mCameraFacing:I

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/moblynx/cameraics/ListPreference;->setValue(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mListener:Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1}, Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0

    .line 72
    .end local v0           #newCameraIndex:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setListener(Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/CameraPicker;->mListener:Lcom/moblynx/cameraics/CameraPreference$OnPreferenceChangedListener;

    .line 51
    return-void
.end method
