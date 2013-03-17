.class Lcom/moblynx/cameraics/EffectsRecorder$5;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/EffectsRecorder;->sendMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/EffectsRecorder;

.field private final synthetic val$effect:I

.field private final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/EffectsRecorder;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/EffectsRecorder$5;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    iput p2, p0, Lcom/moblynx/cameraics/EffectsRecorder$5;->val$effect:I

    iput p3, p0, Lcom/moblynx/cameraics/EffectsRecorder$5;->val$msg:I

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 948
    iget-object v0, p0, Lcom/moblynx/cameraics/EffectsRecorder$5;->this$0:Lcom/moblynx/cameraics/EffectsRecorder;

    #getter for: Lcom/moblynx/cameraics/EffectsRecorder;->mEffectsListener:Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/moblynx/cameraics/EffectsRecorder;->access$13(Lcom/moblynx/cameraics/EffectsRecorder;)Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget v1, p0, Lcom/moblynx/cameraics/EffectsRecorder$5;->val$effect:I

    iget v2, p0, Lcom/moblynx/cameraics/EffectsRecorder$5;->val$msg:I

    invoke-interface {v0, v1, v2}, Lcom/moblynx/cameraics/EffectsRecorder$EffectsListener;->onEffectsUpdate(II)V

    .line 949
    return-void
.end method
