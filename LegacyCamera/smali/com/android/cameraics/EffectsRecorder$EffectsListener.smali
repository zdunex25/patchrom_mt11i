.class public interface abstract Lcom/android/cameraics/EffectsRecorder$EffectsListener;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EffectsListener"
.end annotation


# virtual methods
.method public abstract onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
.end method

.method public abstract onEffectsUpdate(II)V
.end method
