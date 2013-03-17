.class Lcom/moblynx/cameraics/EffectsRecorder$6;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/EffectsRecorder;

.field private final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/EffectsRecorder;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/EffectsRecorder$6;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    iput-object p2, p0, Lcom/moblynx/cameraics/EffectsRecorder$6;->val$exception:Ljava/lang/Exception;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 958
    iget-object v0, p0, Lcom/moblynx/cameraics/EffectsRecorder$6;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;
    invoke-static {v0}, Lcom/moblynx/cameraics/EffectsRecorder;->access$14(Lcom/moblynx/cameraics/EffectsRecorder;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/moblynx/cameraics/EffectsRecorder$6;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mEffectsListener:Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/moblynx/cameraics/EffectsRecorder;->access$13(Lcom/moblynx/cameraics/EffectsRecorder;)Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$6;->val$exception:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 963
    :goto_0
    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/EffectsRecorder$6;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mEffectsListener:Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/moblynx/cameraics/EffectsRecorder;->access$13(Lcom/moblynx/cameraics/EffectsRecorder;)Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$6;->val$exception:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$6;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mOutputFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/moblynx/cameraics/EffectsRecorder;->access$15(Lcom/moblynx/cameraics/EffectsRecorder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
