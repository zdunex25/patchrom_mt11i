.class Lcom/moblynx/cameraics/ui/AbstractIndicatorButton$MainHandler;
.super Landroid/os/Handler;
.source "AbstractIndicatorButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;


# direct methods
.method private constructor <init>(Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/AbstractIndicatorButton$MainHandler;->this$0:Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;Lcom/moblynx/cameraics/ui/AbstractIndicatorButton$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/ui/AbstractIndicatorButton$MainHandler;-><init>(Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/AbstractIndicatorButton$MainHandler;->this$0:Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;->dismissPopup()Z

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
