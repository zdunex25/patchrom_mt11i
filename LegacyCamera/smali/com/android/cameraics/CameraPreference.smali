.class public abstract Lcom/android/cameraics/CameraPreference;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraics/CameraPreference$OnPreferenceChangedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/cameraics/CameraPreference;->mContext:Landroid/content/Context;

    .line 45
    sget-object v1, Lcom/android/camera/R$styleable;->CameraPreference:[I

    .line 44
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/cameraics/CameraPreference;->mTitle:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/cameraics/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/cameraics/CameraPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/cameraics/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/cameraics/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cameraics/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/cameraics/CameraPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract reloadValue()V
.end method
