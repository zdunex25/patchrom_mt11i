.class Lcom/moblynx/cameraics/EffectsRecorder$3;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/EffectsRecorder$3;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingDone()V
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/moblynx/cameraics/EffectsRecorder$3;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v0}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/EffectsRecorder$3;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/moblynx/cameraics/EffectsRecorder;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$7(Lcom/moblynx/cameraics/EffectsRecorder;II)V

    .line 696
    return-void
.end method
