.class Lcom/android/cameraics/ModePicker$1;
.super Ljava/lang/Object;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/ModePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/ModePicker;


# direct methods
.method constructor <init>(Lcom/android/cameraics/ModePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/ModePicker$1;->this$0:Lcom/android/cameraics/ModePicker;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/cameraics/ModePicker$1;->this$0:Lcom/android/cameraics/ModePicker;

    #calls: Lcom/android/cameraics/ModePicker;->changeToSelectedMode()V
    invoke-static {v0}, Lcom/android/cameraics/ModePicker;->access$0(Lcom/android/cameraics/ModePicker;)V

    .line 127
    iget-object v0, p0, Lcom/android/cameraics/ModePicker$1;->this$0:Lcom/android/cameraics/ModePicker;

    #getter for: Lcom/android/cameraics/ModePicker;->mCurrentModeFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/android/cameraics/ModePicker;->access$1(Lcom/android/cameraics/ModePicker;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/cameraics/ModePicker$1;->this$0:Lcom/android/cameraics/ModePicker;

    #getter for: Lcom/android/cameraics/ModePicker;->mModeSelectionFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/android/cameraics/ModePicker;->access$2(Lcom/android/cameraics/ModePicker;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 135
    return-void
.end method
