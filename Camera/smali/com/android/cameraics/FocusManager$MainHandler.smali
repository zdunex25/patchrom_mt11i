.class Lcom/android/cameraics/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/FocusManager;


# direct methods
.method private constructor <init>(Lcom/android/cameraics/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/cameraics/FocusManager$MainHandler;->this$0:Lcom/android/cameraics/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/FocusManager;Lcom/android/cameraics/FocusManager$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/cameraics/FocusManager$MainHandler;-><init>(Lcom/android/cameraics/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/cameraics/FocusManager$MainHandler;->this$0:Lcom/android/cameraics/FocusManager;

    #calls: Lcom/android/cameraics/FocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/android/cameraics/FocusManager;->access$0(Lcom/android/cameraics/FocusManager;)V

    .line 105
    iget-object v0, p0, Lcom/android/cameraics/FocusManager$MainHandler;->this$0:Lcom/android/cameraics/FocusManager;

    iget-object v0, v0, Lcom/android/cameraics/FocusManager;->mListener:Lcom/android/cameraics/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/cameraics/FocusManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/android/cameraics/FocusManager$MainHandler;->this$0:Lcom/android/cameraics/FocusManager;

    #calls: Lcom/android/cameraics/FocusManager;->capture()V
    invoke-static {v0}, Lcom/android/cameraics/FocusManager;->access$1(Lcom/android/cameraics/FocusManager;)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
