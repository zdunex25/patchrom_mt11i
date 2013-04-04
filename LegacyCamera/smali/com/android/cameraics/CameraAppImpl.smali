.class public Lcom/android/cameraics/CameraAppImpl;
.super Landroid/app/Application;
.source "CameraAppImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    invoke-static {p0}, Lcom/android/cameraics/Util;->initialize(Landroid/content/Context;)V

    .line 27
    return-void
.end method
