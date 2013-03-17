.class Lcom/moblynx/cameraics/ui/IndicatorControlWheel$1;
.super Ljava/lang/Object;
.source "IndicatorControlWheel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/ui/IndicatorControlWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/ui/IndicatorControlWheel;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/ui/IndicatorControlWheel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel$1;->this$0:Lcom/moblynx/cameraics/ui/IndicatorControlWheel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlWheel$1;->this$0:Lcom/moblynx/cameraics/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlWheel;->requestLayout()V

    .line 106
    return-void
.end method
