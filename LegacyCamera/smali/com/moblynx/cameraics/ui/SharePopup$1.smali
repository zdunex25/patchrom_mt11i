.class Lcom/moblynx/cameraics/ui/SharePopup$1;
.super Ljava/lang/Object;
.source "SharePopup.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moblynx/cameraics/ui/SharePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/ui/SharePopup;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/ui/SharePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/SharePopup$1;->this$0:Lcom/moblynx/cameraics/ui/SharePopup;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "data"
    .parameter "text"

    .prologue
    .line 117
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .restart local p1
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
