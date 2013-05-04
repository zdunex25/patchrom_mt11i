.class Lcom/android/cameraics/OnScreenHint$2;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/android/cameraics/OnScreenHint;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/OnScreenHint$2;->this$0:Lcom/android/cameraics/OnScreenHint;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/cameraics/OnScreenHint$2;->this$0:Lcom/android/cameraics/OnScreenHint;

    #calls: Lcom/android/cameraics/OnScreenHint;->handleHide()V
    invoke-static {v0}, Lcom/android/cameraics/OnScreenHint;->access$1(Lcom/android/cameraics/OnScreenHint;)V

    .line 186
    return-void
.end method
