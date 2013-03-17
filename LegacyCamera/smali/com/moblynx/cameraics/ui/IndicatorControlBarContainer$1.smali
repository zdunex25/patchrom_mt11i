.class Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer$1;
.super Ljava/lang/Object;
.source "IndicatorControlBarContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer$1;->this$0:Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 95
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer$1;->this$0:Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;

    #getter for: Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->access$0(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer$1;->this$0:Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;

    #getter for: Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->access$1(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/SecondLevelIndicatorControlBar;->setVisibility(I)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer$1;->this$0:Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;

    #getter for: Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->access$2(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer$1;->this$0:Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;

    #getter for: Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/moblynx/cameraics/ui/IndicatorControlBar;
    invoke-static {v0}, Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;->access$3(Lcom/moblynx/cameraics/ui/IndicatorControlBarContainer;)Lcom/moblynx/cameraics/ui/IndicatorControlBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/moblynx/cameraics/ui/IndicatorControlBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 103
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 106
    return-void
.end method
