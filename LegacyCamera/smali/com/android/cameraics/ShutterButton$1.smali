.class Lcom/android/cameraics/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/ShutterButton;

.field private final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/android/cameraics/ShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/ShutterButton$1;->this$0:Lcom/android/cameraics/ShutterButton;

    iput-boolean p2, p0, Lcom/android/cameraics/ShutterButton$1;->val$pressed:Z

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/cameraics/ShutterButton$1;->this$0:Lcom/android/cameraics/ShutterButton;

    iget-boolean v1, p0, Lcom/android/cameraics/ShutterButton$1;->val$pressed:Z

    #calls: Lcom/android/cameraics/ShutterButton;->callShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/android/cameraics/ShutterButton;->access$0(Lcom/android/cameraics/ShutterButton;Z)V

    .line 89
    return-void
.end method
