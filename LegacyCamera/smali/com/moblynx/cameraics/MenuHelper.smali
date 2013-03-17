.class public Lcom/moblynx/cameraics/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field private static final CAMERA_CLASS:Ljava/lang/String; = "com.moblynx.cameraics.Camera"

.field private static final INCLUDE_IMAGES:I = 0x1

.field private static final INCLUDE_VIDEOS:I = 0x4

.field private static final NO_ANIMATION:I = 0x0

.field private static final PANORAMA_CLASS:Ljava/lang/String; = "com.moblynx.cameraics.panorama.PanoramaActivity"

.field private static final TAG:Ljava/lang/String; = "MenuHelper"

.field private static final VIDEO_CAMERA_CLASS:Ljava/lang/String; = "com.moblynx.cameraics.VideoCamera"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V
    .locals 5
    .parameter "menu"
    .parameter "mode"
    .parameter "r"

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 57
    :pswitch_0
    const v2, 0x7f0800c4

    .line 58
    .local v2, labelId:I
    const v0, 0x7f020051

    .line 72
    .local v0, iconId:I
    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 73
    new-instance v4, Lcom/moblynx/cameraics/MenuHelper$1;

    invoke-direct {v4, p2}, Lcom/moblynx/cameraics/MenuHelper$1;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 79
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 61
    .end local v0           #iconId:I
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v2           #labelId:I
    :pswitch_1
    const v2, 0x7f0800c3

    .line 62
    .restart local v2       #labelId:I
    const v0, 0x1080037

    .line 63
    .restart local v0       #iconId:I
    goto :goto_1

    .line 65
    .end local v0           #iconId:I
    .end local v2           #labelId:I
    :pswitch_2
    const v2, 0x7f0800c5

    .line 66
    .restart local v2       #labelId:I
    const v0, 0x7f02001b

    .line 67
    .restart local v0       #iconId:I
    goto :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static gotoCameraImageGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 143
    const v0, 0x7f08006f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/moblynx/cameraics/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 144
    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.moblynx.cameraics.Camera"

    invoke-static {p0, v0, v1}, Lcom/moblynx/cameraics/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 139
    const-string v0, "com.moblynx.cameraics.Camera"

    invoke-static {p0, p1, v0}, Lcom/moblynx/cameraics/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static gotoCameraVideoGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 147
    const v0, 0x7f080070

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/moblynx/cameraics/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 148
    return-void
.end method

.method private static gotoGallery(Landroid/app/Activity;II)V
    .locals 6
    .parameter "activity"
    .parameter "windowTitleId"
    .parameter "mediaTypes"

    .prologue
    .line 152
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 153
    const-string v4, "bucketId"

    sget-object v5, Lcom/moblynx/cameraics/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 154
    .local v2, target:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const-string v3, "windowTitle"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v3, "mediaTypes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MenuHelper"

    const-string v4, "Could not start gallery activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static gotoMode(ILandroid/app/Activity;)V
    .locals 5
    .parameter "mode"
    .parameter "activity"

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_0

    .line 117
    const-string v2, "MenuHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown camera mode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const-string v0, "com.moblynx.cameraics.panorama.PanoramaActivity"

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.moblynx.cameraics.panorama.PanoramaActivity"

    .line 120
    .local v1, className:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v1}, Lcom/moblynx/cameraics/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 110
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.moblynx.cameraics.VideoCamera"

    .line 111
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 113
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 114
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.moblynx.cameraics.Camera"

    .line 115
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gotoVideoMode(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 135
    const-string v0, "com.moblynx.cameraics.VideoCamera"

    invoke-static {p0, p1, v0}, Lcom/moblynx/cameraics/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static gotoVideoMode(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "resetEffect"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "reset_effect"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v1, "com.moblynx.cameraics.VideoCamera"

    invoke-static {p0, v0, v1}, Lcom/moblynx/cameraics/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 84
    const/high16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lcom/moblynx/cameraics/CameraHolder;->instance()Lcom/moblynx/cameraics/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moblynx/cameraics/CameraHolder;->keep()V

    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
