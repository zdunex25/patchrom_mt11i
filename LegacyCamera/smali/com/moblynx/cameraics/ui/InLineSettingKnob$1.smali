.class Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;
.super Ljava/lang/Object;
.source "InLineSettingKnob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/ui/InLineSettingKnob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/ui/InLineSettingKnob;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 44
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #getter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mNext:Z
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$0(Lcom/moblynx/cameraics/ui/InLineSettingKnob;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    iget v1, v1, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->changeIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #getter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$1(Lcom/moblynx/cameraics/ui/InLineSettingKnob;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #getter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mPrevious:Z
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$2(Lcom/moblynx/cameraics/ui/InLineSettingKnob;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    iget-object v1, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    iget v1, v1, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->changeIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$1;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #getter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$1(Lcom/moblynx/cameraics/ui/InLineSettingKnob;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
