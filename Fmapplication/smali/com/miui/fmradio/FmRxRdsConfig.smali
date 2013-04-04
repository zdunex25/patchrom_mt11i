.class public Lcom/miui/fmradio/FmRxRdsConfig;
.super Landroid/app/Activity;
.source "FmRxRdsConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private bandString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private channelSpaceString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chbRdsMode:Landroid/widget/CheckBox;

.field private chbSetRdsAf:Landroid/widget/CheckBox;

.field private deEmpStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptyStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fmConfigPreferences:Landroid/content/SharedPreferences;

.field public gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private modeStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rdsSystemStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spnBand:Landroid/widget/Spinner;

.field private spnChannelSpacing:Landroid/widget/Spinner;

.field private spnDeEmp:Landroid/widget/Spinner;

.field private spnMode:Landroid/widget/Spinner;

.field private spnRdsSystem:Landroid/widget/Spinner;

.field private textRssi:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxRdsConfig;->channelSpaceString:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxRdsConfig;->bandString:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxRdsConfig;->deEmpStrings:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxRdsConfig;->rdsSystemStrings:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxRdsConfig;->emptyStrings:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxRdsConfig;->modeStrings:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/miui/fmradio/FmRxRdsConfig$1;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRxRdsConfig$1;-><init>(Lcom/miui/fmradio/FmRxRdsConfig;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method private initControl()V
    .locals 3

    .prologue
    .line 95
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    .local v0, btnCancel:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 97
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 100
    .local v1, btnOk:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v2, 0x7f090019

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    .line 104
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    .line 105
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnDeEmp:Landroid/widget/Spinner;

    .line 106
    const v2, 0x7f09001e

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    .line 108
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    .line 110
    const v2, 0x7f090024

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    .line 112
    const v2, 0x7f090016

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    .line 113
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    const v2, 0x7f090017

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    .line 116
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    return-void
.end method

.method private rssiValid(I)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 450
    if-lt p1, v0, :cond_0

    const/16 v1, 0x7f

    if-le p1, v1, :cond_1

    .line 455
    :cond_0
    const/4 v0, 0x0

    .line 457
    :cond_1
    return v0
.end method

.method private savePreferences()V
    .locals 11

    .prologue
    const v10, 0x1080027

    const v9, 0x104000a

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 372
    const/4 v1, 0x2

    .line 374
    .local v1, mChannelSpacePos:I
    const-string v5, "fmConfigPreferences"

    invoke-virtual {p0, v5, v6}, Lcom/miui/fmradio/FmRxRdsConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    .line 377
    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    const-string v5, "RDSAF"

    iget-object v6, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v5, "RDS"

    iget-object v6, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v5, "RDSSYSTEM"

    iget-object v6, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 389
    :goto_0
    const-string v5, "BAND"

    iget-object v6, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    const-string v5, "DEEMP"

    iget-object v6, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnDeEmp:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    const-string v5, "MODE"

    iget-object v6, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 395
    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 409
    :goto_1
    const-string v5, "CHANNELSPACE"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 412
    :try_start_0
    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 413
    .local v3, rssiValue:I
    invoke-direct {p0, v3}, Lcom/miui/fmradio/FmRxRdsConfig;->rssiValid(I)Z

    move-result v4

    .line 414
    .local v4, valid:Z
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 415
    :cond_0
    const-string v5, "RSSI_STRING"

    iget-object v6, p0, Lcom/miui/fmradio/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 417
    const-string v5, "RSSI"

    const/4 v6, 0x7

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 421
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->sendRdsIntent()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v3           #rssiValue:I
    .end local v4           #valid:Z
    :goto_3
    return-void

    .line 384
    :cond_1
    const-string v5, "RDSAF"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v5, "RDS"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string v5, "RDSSYSTEM"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 397
    :pswitch_0
    const/4 v1, 0x1

    .line 398
    goto :goto_1

    .line 401
    :pswitch_1
    const/4 v1, 0x2

    .line 402
    goto :goto_1

    .line 405
    :pswitch_2
    const/4 v1, 0x4

    goto :goto_1

    .line 419
    .restart local v3       #rssiValue:I
    .restart local v4       #valid:Z
    :cond_2
    :try_start_1
    const-string v5, "RSSI"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 430
    .end local v3           #rssiValue:I
    .end local v4           #valid:Z
    :catch_0
    move-exception v2

    .line 434
    .local v2, nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Enter valid RSSI value in range 1-127!!"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 438
    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 424
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #rssiValue:I
    .restart local v4       #valid:Z
    :cond_3
    :try_start_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Enter valid RSSI value in range 1-127!!"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 428
    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendRdsIntent()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, rdsIntent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/fmradio/FmRxRdsConfig;->setResult(ILandroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->finish()V

    .line 241
    return-void
.end method

.method private setEmptySpinner()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->emptyStrings:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 197
    .local v0, emptyAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090011

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 199
    iget-object v1, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 200
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 201
    const-string v1, " RDS is Disabled "

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 204
    return-void
.end method

.method private setRdsSystemSpinner()V
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->rdsSystemStrings:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 180
    .local v0, rdsSystemAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 182
    iget-object v1, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 184
    const-string v1, "RDB"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 185
    const-string v1, "RBDS"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 188
    return-void
.end method

.method private setSpinners()V
    .locals 8

    .prologue
    const v7, 0x1090009

    const v6, 0x1090008

    .line 125
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->bandString:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 128
    .local v0, bandAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 130
    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    const v4, 0x7f07001e

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxRdsConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 132
    const v4, 0x7f07001f

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmRxRdsConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 133
    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->channelSpaceString:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 139
    .local v1, channelSpaceAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 141
    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    const-string v4, "50 KHZ"

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 143
    const-string v4, "100 KHZ"

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 144
    const-string v4, "200 KHZ"

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 145
    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 148
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->deEmpStrings:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 151
    .local v2, deEmpAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 153
    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnDeEmp:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 154
    const-string v4, "0 sec"

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 155
    const-string v4, "50 sec"

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 156
    const-string v4, "75 sec"

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 157
    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnDeEmp:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 160
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->modeStrings:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 163
    .local v3, modeAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 165
    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    const-string v4, "STEREO"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 167
    const-string v4, "MONO"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 168
    iget-object v4, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/miui/fmradio/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 170
    return-void
.end method

.method private updateUiFromPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 318
    const-string v2, "fmConfigPreferences"

    invoke-virtual {p0, v2, v6}, Lcom/miui/fmradio/FmRxRdsConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    .line 321
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RDS"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 322
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v3, "RDS"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 324
    .local v1, rdsON:Z
    if-nez v1, :cond_0

    .line 326
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 328
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 330
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->setEmptySpinner()V

    .line 340
    :goto_0
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RSSI_STRING"

    const-string v5, "7"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "BAND"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 344
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnDeEmp:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "DEEMP"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 345
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "MODE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 347
    const/4 v0, 0x1

    .line 348
    .local v0, pos:I
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v3, "CHANNELSPACE"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 363
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 365
    return-void

    .line 334
    .end local v0           #pos:I
    :cond_0
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RDSAF"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    iget-object v2, p0, Lcom/miui/fmradio/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/miui/fmradio/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RDSSYSTEM"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 351
    .restart local v0       #pos:I
    :pswitch_1
    const/4 v0, 0x0

    .line 352
    goto :goto_1

    .line 355
    :pswitch_2
    const/4 v0, 0x1

    .line 356
    goto :goto_1

    .line 359
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "view"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 245
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    :pswitch_0
    return-void

    .line 251
    :pswitch_1
    if-eqz p2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 253
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->setRdsSystemSpinner()V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    iget-object v1, p0, Lcom/miui/fmradio/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 257
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->setEmptySpinner()V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x7f090016
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 219
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->finish()V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->savePreferences()V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmRxRdsConfig;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->initControl()V

    .line 81
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->setSpinners()V

    .line 82
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->setRdsSystemSpinner()V

    .line 84
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x1

    .line 268
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 270
    .local v0, action:I
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 271
    const-string v2, "FmRxRdsConfig"

    const-string v3, "KEYCODE_SOFT_RIGHT "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->finish()V

    .line 306
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 276
    :cond_1
    if-ne p2, v1, :cond_2

    .line 277
    const-string v2, "FmRxRdsConfig"

    const-string v3, "KEYCODE_SOFT_LEFT "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->savePreferences()V

    goto :goto_0

    .line 283
    :cond_2
    const/16 v2, 0x17

    if-eq p2, v2, :cond_3

    const/16 v2, 0x13

    if-eq p2, v2, :cond_3

    const/16 v2, 0x14

    if-eq p2, v2, :cond_3

    const/16 v2, 0x42

    if-eq p2, v2, :cond_3

    .line 287
    const/4 v1, 0x0

    goto :goto_0

    .line 290
    :cond_3
    if-ne v0, v1, :cond_0

    .line 291
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 311
    invoke-direct {p0}, Lcom/miui/fmradio/FmRxRdsConfig;->updateUiFromPreference()V

    .line 312
    return-void
.end method
