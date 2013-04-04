.class Lcom/android/cameraics/EffectsRecorder$2;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/cameraics/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/EffectsRecorder$2;->this$0:Lcom/android/cameraics/EffectsRecorder;

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V
    .locals 3
    .parameter "filter"

    .prologue
    const/4 v2, 0x1

    .line 681
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder$2;->this$0:Lcom/android/cameraics/EffectsRecorder;

    #getter for: Lcom/android/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v0}, Lcom/android/cameraics/EffectsRecorder;->access$0(Lcom/android/cameraics/EffectsRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "effectsrecorder"

    const-string v1, "Learning done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder$2;->this$0:Lcom/android/cameraics/EffectsRecorder;

    const/4 v1, 0x2

    #calls: Lcom/android/cameraics/EffectsRecorder;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/android/cameraics/EffectsRecorder;->access$7(Lcom/android/cameraics/EffectsRecorder;II)V

    .line 685
    iget-object v0, p0, Lcom/android/cameraics/EffectsRecorder$2;->this$0:Lcom/android/cameraics/EffectsRecorder;

    invoke-virtual {v0, v2}, Lcom/android/cameraics/EffectsRecorder;->enable3ALocks(Z)V

    .line 686
    return-void
.end method
