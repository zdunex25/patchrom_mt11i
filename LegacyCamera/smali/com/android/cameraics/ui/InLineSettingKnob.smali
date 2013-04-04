.class public Lcom/android/cameraics/ui/InLineSettingKnob;
.super Lcom/android/cameraics/ui/InLineSettingItem;
.source "InLineSettingKnob.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEntry:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mNext:Z

.field private mNextButton:Landroid/widget/Button;

.field mNextTouchListener:Landroid/view/View$OnTouchListener;

.field private mPrevButton:Landroid/widget/Button;

.field private mPrevious:Z

.field mPreviousTouchListener:Landroid/view/View$OnTouchListener;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/cameraics/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "InLineSettingKnob"

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/android/cameraics/ui/InLineSettingKnob$1;

    invoke-direct {v0, p0}, Lcom/android/cameraics/ui/InLineSettingKnob$1;-><init>(Lcom/android/cameraics/ui/InLineSettingKnob;)V

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mRunnable:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Lcom/android/cameraics/ui/InLineSettingKnob$2;

    invoke-direct {v0, p0}, Lcom/android/cameraics/ui/InLineSettingKnob$2;-><init>(Lcom/android/cameraics/ui/InLineSettingKnob;)V

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNextTouchListener:Landroid/view/View$OnTouchListener;

    .line 78
    new-instance v0, Lcom/android/cameraics/ui/InLineSettingKnob$3;

    invoke-direct {v0, p0}, Lcom/android/cameraics/ui/InLineSettingKnob$3;-><init>(Lcom/android/cameraics/ui/InLineSettingKnob;)V

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreviousTouchListener:Landroid/view/View$OnTouchListener;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/android/cameraics/ui/InLineSettingKnob;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNext:Z

    return v0
.end method

.method static synthetic access$1(Lcom/android/cameraics/ui/InLineSettingKnob;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/cameraics/ui/InLineSettingKnob;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPrevious:Z

    return v0
.end method

.method static synthetic access$3(Lcom/android/cameraics/ui/InLineSettingKnob;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNext:Z

    return-void
.end method

.method static synthetic access$4(Lcom/android/cameraics/ui/InLineSettingKnob;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/cameraics/ui/InLineSettingKnob;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPrevious:Z

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/cameraics/ui/InLineSettingKnob;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/cameraics/ListPreference;)V
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/android/cameraics/ui/InLineSettingItem;->initialize(Lcom/android/cameraics/ListPreference;)V

    .line 109
    iget-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/cameraics/ui/InLineSettingKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    const v2, 0x7f0800ef

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v4}, Lcom/android/cameraics/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/cameraics/ui/InLineSettingKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    const v2, 0x7f0800ee

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v4}, Lcom/android/cameraics/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/cameraics/ui/InLineSettingItem;->onFinishInflate()V

    .line 98
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/InLineSettingKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/InLineSettingKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreviousTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/android/cameraics/ui/InLineSettingKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mEntry:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v2}, Lcom/android/cameraics/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v2}, Lcom/android/cameraics/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method protected updateView()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 116
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mOverrideValue:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v4}, Lcom/android/cameraics/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v4, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    iget v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mIndex:I

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    iget v4, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mIndex:I

    iget-object v5, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v5}, Lcom/android/cameraics/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 118
    goto :goto_0

    :cond_1
    move v2, v3

    .line 120
    goto :goto_1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    iget-object v3, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/cameraics/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v3}, Lcom/android/cameraics/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_3
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 127
    :cond_3
    const-string v1, "InLineSettingKnob"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to find override value="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/cameraics/ui/InLineSettingKnob;->mPreference:Lcom/android/cameraics/ListPreference;

    invoke-virtual {v1}, Lcom/android/cameraics/ListPreference;->print()V

    goto :goto_3
.end method
