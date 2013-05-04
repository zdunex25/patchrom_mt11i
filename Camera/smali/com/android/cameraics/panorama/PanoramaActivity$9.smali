.class Lcom/android/cameraics/panorama/PanoramaActivity$9;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/cameraics/panorama/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/panorama/PanoramaActivity;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/cameraics/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/panorama/PanoramaActivity$9;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$9;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #getter for: Lcom/android/cameraics/panorama/PanoramaActivity;->mCaptureState:I
    invoke-static {v0}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$27(Lcom/android/cameraics/panorama/PanoramaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/cameraics/panorama/PanoramaActivity$9;->this$0:Lcom/android/cameraics/panorama/PanoramaActivity;

    #calls: Lcom/android/cameraics/panorama/PanoramaActivity;->showDirectionIndicators(I)V
    invoke-static {v0, p1}, Lcom/android/cameraics/panorama/PanoramaActivity;->access$28(Lcom/android/cameraics/panorama/PanoramaActivity;I)V

    .line 773
    :cond_0
    return-void
.end method
