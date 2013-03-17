.class Lcom/moblynx/cameraics/EffectsRecorder$4;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;


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
    iput-object p1, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunnerDone(I)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x3

    .line 879
    iget-object v3, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    monitor-enter v3

    .line 880
    :try_start_0
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    const-string v2, "effectsrecorder"

    .line 882
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Graph runner done ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 883
    const-string v5, ", mRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/moblynx/cameraics/EffectsRecorder;->access$8(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 884
    const-string v5, ", mOldRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/moblynx/cameraics/EffectsRecorder;->access$9(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 882
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 881
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 888
    const-string v2, "effectsrecorder"

    const-string v4, "Error running filter graph!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$8(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 891
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$8(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 895
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #calls: Lcom/moblynx/cameraics/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
    invoke-static {v2, v0}, Lcom/moblynx/cameraics/EffectsRecorder;->access$10(Lcom/moblynx/cameraics/EffectsRecorder;Ljava/lang/Exception;)V

    .line 897
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$9(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 899
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "effectsrecorder"

    const-string v4, "Tearing down old graph."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_3
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$11(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 901
    .local v1, glEnv:Landroid/filterfw/core/GLEnvironment;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 902
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 904
    :cond_4
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$9(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iget-object v4, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v4}, Lcom/moblynx/cameraics/EffectsRecorder;->access$11(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 905
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 906
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 908
    :cond_5
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    const/4 v4, 0x0

    #setter for: Lcom/moblynx/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->access$12(Lcom/moblynx/cameraics/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)V

    .line 910
    .end local v1           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :cond_6
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$2(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v2

    if-eq v2, v6, :cond_7

    .line 911
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$2(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    .line 913
    :cond_7
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "effectsrecorder"

    const-string v4, "Previous effect halted, starting new effect."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_8
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 915
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$8(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->run()V

    .line 879
    :cond_9
    :goto_1
    monitor-exit v3

    .line 925
    return-void

    .line 892
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_a
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$9(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 893
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$9(Lcom/moblynx/cameraics/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    goto/16 :goto_0

    .line 916
    .end local v0           #e:Ljava/lang/Exception;
    :cond_b
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$2(Lcom/moblynx/cameraics/EffectsRecorder;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_9

    .line 918
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$0(Lcom/moblynx/cameraics/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "effectsrecorder"

    const-string v4, "Runner halted, restoring direct preview"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_c
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/moblynx/cameraics/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 920
    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$4;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    const/4 v4, 0x0

    const/4 v5, 0x3

    #calls: Lcom/moblynx/cameraics/EffectsRecorder;->sendMessage(II)V
    invoke-static {v2, v4, v5}, Lcom/moblynx/cameraics/EffectsRecorder;->access$7(Lcom/moblynx/cameraics/EffectsRecorder;II)V

    goto :goto_1

    .line 879
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
