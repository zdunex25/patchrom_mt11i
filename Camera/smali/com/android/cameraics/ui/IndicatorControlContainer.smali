.class public abstract Lcom/android/cameraics/ui/IndicatorControlContainer;
.super Lcom/android/cameraics/ui/IndicatorControl;
.source "IndicatorControlContainer.java"

# interfaces
.implements Lcom/android/cameraics/ui/OnIndicatorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public abstract dismissSecondLevelIndicator()V
.end method

.method public abstract enableZoom(Z)V
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/android/cameraics/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V
.end method
