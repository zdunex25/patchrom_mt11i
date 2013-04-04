.class public Lcom/miui/fmradio/FmRxFreqInput;
.super Landroid/app/Activity;
.source "FmRxFreqInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/ti/fm/IFmConstants;


# instance fields
.field private mPrintDebugInfo:Z

.field private mUserText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxFreqInput;->mPrintDebugInfo:Z

    return-void
.end method

.method static BaseFreq()F
    .locals 2

    .prologue
    .line 150
    sget v0, Lcom/miui/fmradio/FmRxApp;->sBand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x4298

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/fmradio/FmRxFreqInput;->FM_FIRST_FREQ_US_EUROPE_KHZ_FLOAT:F

    goto :goto_0
.end method

.method static LastFreq()F
    .locals 2

    .prologue
    .line 155
    sget v0, Lcom/miui/fmradio/FmRxApp;->sBand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x42b4

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/fmradio/FmRxFreqInput;->FM_LAST_FREQ_US_EUROPE_KHZ_FLOAT:F

    goto :goto_0
.end method

.method private initControls()V
    .locals 4

    .prologue
    .line 72
    const v3, 0x7f090003

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FmRxFreqInput;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/miui/fmradio/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    .line 73
    iget-object v3, p0, Lcom/miui/fmradio/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 74
    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FmRxFreqInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    .local v0, btnCancel:Landroid/widget/Button;
    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FmRxFreqInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 76
    .local v1, btnOk:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v3, 0x7f090002

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FmRxFreqInput;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    .local v2, mBandRange:Landroid/widget/TextView;
    sget v3, Lcom/miui/fmradio/FmRxApp;->sBand:I

    if-nez v3, :cond_0

    .line 80
    const v3, 0x7f070020

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FmRxFreqInput;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    const v3, 0x7f070021

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FmRxFreqInput;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private writeFrequency()V
    .locals 11

    .prologue
    const v10, 0x1080027

    const v9, 0x104000a

    const/4 v8, 0x0

    .line 90
    :try_start_0
    iget-object v5, p0, Lcom/miui/fmradio/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 91
    .local v1, iFreq:Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/miui/fmradio/FmRxFreqInput;->UpdateFrequency(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 92
    .local v4, validFreq:Ljava/lang/Float;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, p0, Lcom/miui/fmradio/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "FREQUENCY"

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 98
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v3, result:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/miui/fmradio/FmRxFreqInput;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxFreqInput;->finish()V

    .line 121
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #iFreq:Ljava/lang/Float;
    .end local v3           #result:Landroid/content/Intent;
    .end local v4           #validFreq:Ljava/lang/Float;
    :goto_0
    return-void

    .line 104
    .restart local v1       #iFreq:Ljava/lang/Float;
    .restart local v4       #validFreq:Ljava/lang/Float;
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07007b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 108
    iget-object v5, p0, Lcom/miui/fmradio/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1           #iFreq:Ljava/lang/Float;
    .end local v4           #validFreq:Ljava/lang/Float;
    :catch_0
    move-exception v2

    .line 112
    .local v2, nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    iget-boolean v7, p0, Lcom/miui/fmradio/FmRxFreqInput;->mPrintDebugInfo:Z

    invoke-static {v5, v6, v7}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 114
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070051

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 118
    iget-object v5, p0, Lcom/miui/fmradio/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method UpdateFrequency(F)F
    .locals 3
    .parameter "freq"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FM App: UpdateFrequency %d."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/miui/fmradio/FmRxFreqInput;->mPrintDebugInfo:Z

    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/utils/Utils;->debugFunc(Ljava/lang/String;IZ)V

    .line 164
    invoke-static {}, Lcom/miui/fmradio/FmRxFreqInput;->BaseFreq()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/miui/fmradio/FmRxFreqInput;->LastFreq()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 165
    :cond_0
    const/4 p1, 0x0

    .line 167
    :cond_1
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 138
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxFreqInput;->writeFrequency()V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxFreqInput;->finish()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxFreqInput;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lcom/miui/fmradio/Preferences;->getPrintDebugInfo(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmRxFreqInput;->mPrintDebugInfo:Z

    .line 68
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxFreqInput;->initControls()V

    .line 69
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 125
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    sparse-switch p2, :sswitch_data_0

    .line 133
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 129
    :sswitch_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxFreqInput;->writeFrequency()V

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
