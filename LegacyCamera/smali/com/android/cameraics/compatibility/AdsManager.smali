.class public Lcom/android/cameraics/compatibility/AdsManager;
.super Ljava/lang/Object;
.source "AdsManager.java"


# static fields
.field public static MY_AD_UNIT_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "a14f08de48674e0"

    sput-object v0, Lcom/android/cameraics/compatibility/AdsManager;->MY_AD_UNIT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAdMob(Landroid/app/Activity;Lcom/android/cameraics/ui/RotateLayout;Z)V
    .locals 7
    .parameter "activity"
    .parameter "adMobRotable"
    .parameter "isPanorama"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 102
    const v4, 0x7f0d004d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 105
    .local v1, fL:Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/android/cameraics/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    if-eqz p2, :cond_1

    .line 115
    const/16 v4, 0x31

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/cameraics/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 150
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 154
    const v4, 0x7f0d0001

    invoke-virtual {p1, v4}, Lcom/android/cameraics/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    .line 155
    .local v0, adView:Lcom/google/ads/AdView;
    const/4 v4, 0x0

    invoke-virtual {v0, v6, v4}, Lcom/google/ads/AdView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 156
    new-instance v3, Lcom/google/ads/AdRequest;

    invoke-direct {v3}, Lcom/google/ads/AdRequest;-><init>()V

    .line 160
    .local v3, request:Lcom/google/ads/AdRequest;
    const-string v4, "2E037F4A0B7D1E792BB4E22F5F3B15F2"

    invoke-virtual {v3, v4}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)V

    .line 163
    const-string v4, "9236A56A95ED80E02F490EE4C309E183"

    invoke-virtual {v3, v4}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 172
    check-cast p0, Lcom/google/ads/AdListener;

    .end local p0
    invoke-virtual {v0, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 174
    return-void

    .line 120
    .end local v0           #adView:Lcom/google/ads/AdView;
    .end local v3           #request:Lcom/google/ads/AdRequest;
    .restart local p0
    :cond_1
    const/16 v4, 0x55

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 129
    :cond_2
    if-eqz p2, :cond_3

    .line 131
    const/16 v4, 0x15

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 135
    const/16 v4, 0x10e

    invoke-virtual {p1, v4}, Lcom/android/cameraics/ui/RotateLayout;->setOrientation(I)V

    goto :goto_0

    .line 141
    :cond_3
    const/16 v4, 0x33

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method
