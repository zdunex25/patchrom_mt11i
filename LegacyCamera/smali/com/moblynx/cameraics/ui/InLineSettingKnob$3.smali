.class Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;
.super Ljava/lang/Object;
.source "InLineSettingKnob.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 80
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    iget-object v2, v2, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mOverrideValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 91
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #getter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mPrevious:Z
    invoke-static {v2}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$2(Lcom/moblynx/cameraics/ui/InLineSettingKnob;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    iget-object v3, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    iget v3, v3, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->changeIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #setter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mPrevious:Z
    invoke-static {v2, v0}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$5(Lcom/moblynx/cameraics/ui/InLineSettingKnob;Z)V

    .line 85
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #getter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$1(Lcom/moblynx/cameraics/ui/InLineSettingKnob;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #getter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$4(Lcom/moblynx/cameraics/ui/InLineSettingKnob;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    move v0, v1

    .line 91
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/InLineSettingKnob$3;->this$0:Lcom/moblynx/cameraics/ui/InLineSettingKnob;

    #setter for: Lcom/moblynx/cameraics/ui/InLineSettingKnob;->mPrevious:Z
    invoke-static {v0, v1}, Lcom/moblynx/cameraics/ui/InLineSettingKnob;->access$5(Lcom/moblynx/cameraics/ui/InLineSettingKnob;Z)V

    goto :goto_1
.end method
