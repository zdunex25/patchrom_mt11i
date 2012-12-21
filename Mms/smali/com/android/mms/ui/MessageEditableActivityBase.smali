.class public abstract Lcom/android/mms/ui/MessageEditableActivityBase;
.super Landroid/app/Activity;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
.implements Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;
.implements Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;,
        Lcom/android/mms/ui/MessageEditableActivityBase$QueryMxStatusHandler;,
        Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;
    }
.end annotation


# static fields
.field private static final PRESENCE:Ljava/lang/Object;


# instance fields
.field protected mActionBarGroup:Landroid/view/ViewGroup;

.field private mActionBarVisible:Z

.field protected mAllowAnimation:Z

.field private final mAnalytics:Lmiui/analytics/XiaomiAnalytics;

.field protected mAttachmentPanel:Landroid/view/View;

.field protected mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

.field protected mAttachmentView:Lcom/android/mms/ui/AttachmentView;

.field protected mBottomPanel:Landroid/view/View;

.field protected mContactPanel:Landroid/view/View;

.field protected mContentGrandpa:Landroid/view/View;

.field protected mContentParent:Landroid/view/View;

.field protected mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

.field protected mConversation:Lcom/android/mms/data/Conversation;

.field protected mEditorContainer:Landroid/view/View;

.field private mExitOnSent:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mHistoryView:Landroid/view/View;

.field protected mHomeButton:Landroid/widget/Button;

.field protected mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mIsLandscape:Z

.field protected mIsSoftInputEnabled:Z

.field private mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

.field protected mMessageContentPanel:Landroid/view/View;

.field protected mMessageContentPanelMinHeight:I

.field private mMidCacheStatusReceiver:Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;

.field private mMxEnabled:Z

.field private final mMxMmsRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMxSmsRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryStatusHandler:Landroid/os/Handler;

.field private mQueryStatusWorkThread:Landroid/os/HandlerThread;

.field private mRequestedShowSoftKeyboard:Z

.field protected mSendButton:Landroid/widget/Button;

.field private mSendingMessage:Z

.field protected mSharedPrefs:Landroid/content/SharedPreferences;

.field protected mShowAttachmentPanelButton:Landroid/widget/Button;

.field protected mSignature:Ljava/lang/String;

.field protected mSoftKeyboardMinHeight:I

.field protected mSubjectDivider:Landroid/view/View;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field protected mSubjectTextEditor:Landroid/widget/EditText;

.field protected mTextCounter:Landroid/widget/TextView;

.field protected mTextEditor:Landroid/widget/EditText;

.field protected final mTextEditorWatcher:Landroid/text/TextWatcher;

.field protected mTimedMsgIndicator:Landroid/widget/Button;

.field protected mToastForDraftSave:Z

.field private mUpdateContactTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mWaitingForSubActivity:Z

.field protected mWorkingMessage:Lcom/android/mms/data/WorkingMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MessageEditableActivityBase;->PRESENCE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 151
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    .line 155
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    .line 163
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarVisible:Z

    .line 181
    invoke-static {}, Lmiui/analytics/XiaomiAnalytics;->getInstance()Lmiui/analytics/XiaomiAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAnalytics:Lmiui/analytics/XiaomiAnalytics;

    .line 186
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mPendingRecipients:Ljava/util/Map;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxMmsRecipients:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxSmsRecipients:Ljava/util/Map;

    .line 199
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Lcom/android/mms/ui/MessageEditableActivityBase$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMidCacheStatusReceiver:Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;

    .line 645
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$9;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 873
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    .line 1174
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$17;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 1191
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$18;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 1776
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$20;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    .line 1860
    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageEditableActivityBase;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->resetMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageEditableActivityBase;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageEditableActivityBase;->addOrRemoveRecipient(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageEditableActivityBase;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mPendingRecipients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageEditableActivityBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->removeChenghu()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageEditableActivityBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mExitOnSent:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/MessageEditableActivityBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    return p1
.end method

.method private addOrRemoveRecipient(IILjava/lang/String;)V
    .locals 3
    .parameter "allowMms"
    .parameter "allowSms"
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    .line 1760
    if-ne p1, v2, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxMmsRecipients:Ljava/util/Map;

    sget-object v1, Lcom/android/mms/ui/MessageEditableActivityBase;->PRESENCE:Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    :goto_0
    if-ne p2, v2, :cond_1

    .line 1766
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxSmsRecipients:Ljava/util/Map;

    sget-object v1, Lcom/android/mms/ui/MessageEditableActivityBase;->PRESENCE:Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    :goto_1
    return-void

    .line 1763
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxMmsRecipients:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxSmsRecipients:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private allowAnimation()Z
    .locals 7

    .prologue
    const/high16 v6, 0x3f00

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1696
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 1697
    const/4 v0, 0x0

    .line 1700
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 1703
    :goto_0
    if-eqz v3, :cond_3

    .line 1704
    array-length v0, v3

    if-lt v0, v2, :cond_2

    .line 1705
    aget v0, v3, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0xa

    .line 1707
    :goto_1
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 1708
    aget v3, v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    and-int/lit8 v3, v3, 0x7

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 1711
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1701
    :catch_0
    move-exception v3

    move-object v3, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private appendSignature()V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_edit_signature"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 672
    return-void
.end method

.method private cancelUpdateContactNames()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    .line 325
    :cond_0
    return-void
.end method

.method private getActionBarHeight(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1496
    const/4 v1, 0x0

    .line 1497
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    .line 1498
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1500
    instance-of v5, v0, Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_3

    .line 1501
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .line 1498
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 1504
    :cond_0
    if-nez v1, :cond_2

    .line 1505
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "getActionBarHeight: cann\'t find ActionBarView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1513
    :cond_1
    :goto_2
    return v0

    .line 1508
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    .line 1509
    if-gtz v0, :cond_1

    .line 1512
    const/high16 v0, -0x8000

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/ActionBarView;->measure(II)V

    .line 1513
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private getBody(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 471
    if-nez p1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-object v6

    .line 474
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, urlStr:Ljava/lang/String;
    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 478
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 479
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, params:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 481
    .local v3, p:Ljava/lang/String;
    const-string v7, "body="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 483
    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 484
    :catch_0
    move-exception v7

    .line 480
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 19
    .parameter "intent"

    .prologue
    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 519
    .local v11, extras:Landroid/os/Bundle;
    if-nez v11, :cond_0

    .line 520
    const/4 v2, 0x0

    .line 604
    :goto_0
    return v2

    .line 523
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 524
    .local v6, mimeType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 525
    .local v9, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 529
    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/mms/model/ContactParser;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v14

    .line 530
    .local v14, message:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v14}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 532
    const/4 v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v12, 0x0

    .line 536
    .local v12, flag:Z
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 538
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v6, v0, v3}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 539
    const/4 v12, 0x1

    .line 541
    .end local v16           #uri:Landroid/net/Uri;
    :cond_2
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 543
    const/4 v12, 0x1

    .line 545
    :cond_3
    if-eqz v12, :cond_9

    .line 546
    const/4 v2, 0x1

    goto :goto_0

    .line 548
    .end local v12           #flag:Z
    .end local v14           #message:Ljava/lang/String;
    :cond_4
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v15

    .line 551
    .local v15, slideShow:Lcom/android/mms/model/SlideshowModel;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 552
    .local v5, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    .line 553
    .local v10, currentSlideCount:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 554
    .local v13, importCount:I
    add-int v2, v13, v10

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    .line 555
    rsub-int/lit8 v2, v10, 0xa

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 557
    const v2, 0x7f0a0064

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v17

    const/16 v17, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 568
    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0065

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0066

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 573
    .local v8, dialog:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/mms/ui/MessageEditableActivityBase$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Lcom/android/mms/ui/MessageEditableActivityBase$7;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/app/AlertDialog;)V

    .line 579
    .local v7, showProgress:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v17, 0x3e8

    move-wide/from16 v0, v17

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 581
    move v4, v13

    .line 582
    .local v4, numberToImport:I
    new-instance v17, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$8;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageEditableActivityBase$8;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;Landroid/app/AlertDialog;)V

    const-string v3, "addAttachment"

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 593
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 552
    .end local v4           #numberToImport:I
    .end local v7           #showProgress:Ljava/lang/Runnable;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v10           #currentSlideCount:I
    .end local v13           #importCount:I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 595
    .end local v5           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v15           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_7
    const-string v2, "android.intent.action.SEND_MSG"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 597
    .restart local v16       #uri:Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/data/Conversation;->checkContentScheme(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 598
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 600
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v6, v0, v3}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 601
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 604
    .end local v16           #uri:Landroid/net/Uri;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private handleSendToIntent(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 492
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 493
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v5

    .line 497
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, flag:Z
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 502
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 503
    .local v4, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 504
    const/4 v2, 0x1

    .line 506
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 507
    iget-object v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 508
    const/4 v2, 0x1

    .line 510
    :cond_3
    if-eqz v2, :cond_0

    .line 511
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private hasRecipientsToRevise()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1312
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "nickname_revised_numbers"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    .line 1316
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    move v1, v2

    .line 1317
    :goto_0
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1318
    invoke-virtual {v5, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1319
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1320
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1321
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1322
    invoke-virtual {v0, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v6

    .line 1323
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 1324
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 1329
    :cond_0
    return v2

    .line 1317
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isSignatureRequired()Z
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_append_signature"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private removeChenghu()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1294
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    move v1, v0

    .line 1296
    :goto_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1297
    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 1298
    const v4, 0xffff

    if-ne v3, v4, :cond_0

    .line 1299
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1300
    const/4 v1, 0x1

    .line 1296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    :cond_1
    if-eqz v1, :cond_2

    .line 1304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1305
    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1306
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1307
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1309
    :cond_2
    return-void
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1650
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1651
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "resetMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    .line 1656
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1659
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1662
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1668
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1671
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 1673
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1674
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1676
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 1679
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 1681
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentProcessor;->updateAttachmentTypeStates()V

    .line 1684
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1686
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 1687
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hideSoftKeyboard()V

    .line 1690
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSignatureRequired()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSignature(Z)V

    .line 1692
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    .line 1693
    return-void
.end method

.method private sendMessage(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 767
    if-eqz p1, :cond_1

    .line 769
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 778
    const-string v1, "MessageEditableActivityBase"

    const-string v2, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Ljava/lang/String;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    .line 786
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    goto :goto_0
.end method

.method private switchMsgType()V
    .locals 7

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    .line 1737
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1738
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getMyFullMid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isPushAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxMmsRecipients:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxSmsRecipients:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1745
    :goto_0
    if-eqz v0, :cond_4

    .line 1746
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mEditorContainer:Landroid/view/View;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1747
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorDrawableRes(I)V

    .line 1748
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const v0, 0x7f0a01c6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1757
    :goto_2
    return-void

    .line 1738
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1748
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 1751
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mEditorContainer:Landroid/view/View;

    const v3, 0x7f020019

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1752
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const v3, 0x7f020150

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorDrawableRes(I)V

    .line 1753
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_6

    if-eqz v1, :cond_5

    const v0, 0x7f0a01c5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const v0, 0x7f0a01c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v0, ""

    goto :goto_3
.end method

.method private toastConvertInfo(Z)V
    .locals 2
    .parameter

    .prologue
    .line 829
    if-eqz p1, :cond_0

    const v0, 0x7f0a005d

    .line 831
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 832
    return-void

    .line 829
    :cond_0
    const v0, 0x7f0a005e

    goto :goto_0
.end method

.method private updateContactNames()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$1;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    return-void
.end method

.method private updateCounter()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter(Z)V

    .line 744
    return-void
.end method

.method private updateCounter(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 747
    if-eqz p1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 756
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/theos0o/GsmEncoding;->seqToGSM(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 751
    aget v1, v0, v1

    .line 752
    const/4 v2, 0x2

    aget v0, v0, v2

    .line 754
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->getMessageStats(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNicknameRevisedNumbers()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1333
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "nickname_revised_numbers"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1335
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 1337
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    move v1, v2

    .line 1338
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1339
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1340
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1341
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1342
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1343
    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v5

    .line 1344
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 1345
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1348
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v3}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1349
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1350
    const-string v2, "nickname_revised_numbers"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1351
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1352
    return-void
.end method


# virtual methods
.method public cancelTiming()V
    .locals 3

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1731
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setTimeToSend(J)V

    .line 1732
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    .line 1733
    return-void
.end method

.method protected checkAndSendMessage(Z)V
    .locals 3
    .parameter

    .prologue
    .line 791
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    const v0, 0x7f0a019c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 810
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 796
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a017f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0077

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$10;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$10;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 808
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    goto :goto_0
.end method

.method protected disableAttachmentPanel()V
    .locals 2

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    return-void
.end method

.method protected drawBottomPanel()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1052
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1057
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1083
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    .line 1084
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    .line 1085
    return-void

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1060
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1065
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_4

    .line 1068
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1079
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public drawTopPanel()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1049
    return-void
.end method

.method protected enableAttachmentPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1529
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getEditMessageFocus()Landroid/widget/EditText;

    .line 1530
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->gotoAttachmentPanel(Z)V

    .line 1531
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    return-void
.end method

.method protected exit()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    .line 1010
    :goto_0
    return-void

    .line 1003
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->willDiscardDraft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Lcom/android/mms/ui/MessageEditableActivityBase$1;)V

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1008
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mToastForDraftSave:Z

    .line 1009
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    goto :goto_0
.end method

.method public getAttachmentView()Lcom/android/mms/ui/AttachmentView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    return-object v0
.end method

.method protected abstract getContentViewResId()I
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getEditMessageFocus()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 1541
    :goto_0
    return-object v0

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    goto :goto_0

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1541
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHostedActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 901
    return-object p0
.end method

.method protected abstract getRecipients()Lcom/android/mms/data/ContactList;
.end method

.method public getTextEditor()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method public getWorkingMessage()Lcom/android/mms/data/WorkingMessage;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method protected handleForwardedMessage()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1248
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1252
    const-string v0, "forwarded_message"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1269
    :goto_0
    return v0

    .line 1256
    :cond_0
    const-string v0, "msg_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1258
    const-string v4, "Mms:app"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1259
    const-string v4, "MessageEditableActivityBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle forwarded message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_1
    if-eqz v0, :cond_2

    .line 1263
    invoke-static {p0, v0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1264
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v4, "subject"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :goto_1
    move v0, v2

    .line 1269
    goto :goto_0

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "sms_body"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected handleIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 434
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 436
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSignatureRequired()Z

    move-result v1

    .line 437
    .local v1, needSignature:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleForwardedMessage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->loadDraft()V

    .line 439
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 445
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBody(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, body:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 447
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 452
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :cond_2
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, subject:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 457
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v2, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 459
    :cond_3
    const-string v3, "exit_on_sent"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mExitOnSent:Z

    .line 462
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 464
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendIntent(Landroid/content/Intent;)Z

    .line 465
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendToIntent(Landroid/content/Intent;)Z

    .line 467
    return v1
.end method

.method protected handleSignature(Z)V
    .locals 0
    .parameter "needSignature"

    .prologue
    .line 611
    if-eqz p1, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->appendSignature()V

    .line 617
    :cond_0
    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 1578
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1579
    .local v0, focus:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1583
    return-void
.end method

.method protected initResourceRefs()V
    .locals 3

    .prologue
    .line 358
    const v1, 0x7f100095

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    .line 359
    const v1, 0x7f100080

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    .line 360
    const v1, 0x7f100057

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    .line 361
    const v1, 0x7f10004c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    .line 363
    const v1, 0x7f100059

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mEditorContainer:Landroid/view/View;

    .line 364
    const v1, 0x7f100062

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 365
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 366
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$2;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 382
    const v1, 0x7f100064

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    .line 383
    const v1, 0x7f100063

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    .line 384
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    const v1, 0x7f10005e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AttachmentView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    .line 386
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$3;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentView;->setHandler(Landroid/os/Handler;)V

    .line 392
    const v1, 0x7f100058

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    .line 393
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v1, 0x7f10005c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$4;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    const v1, 0x7f100061

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 402
    .local v0, focuser:Landroid/view/View;
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$5;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v1, 0x7f10005b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    .line 412
    const v1, 0x7f100097

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    .line 413
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$6;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentParent:Landroid/view/View;

    .line 424
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentGrandpa:Landroid/view/View;

    .line 425
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentGrandpa:Landroid/view/View;

    const v2, 0x60b0004

    invoke-static {p0, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarGroup:Landroid/view/ViewGroup;

    .line 427
    return-void
.end method

.method protected initialize()V
    .locals 4

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 621
    .local v1, needSignature:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 622
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawTopPanel()V

    .line 623
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 624
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 625
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSignature(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 628
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    .line 629
    return-void

    .line 628
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method insertChenghu()V
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1275
    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1276
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1291
    :goto_0
    return-void

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1284
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1285
    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1286
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startNicknamePicker(Z)V

    .line 1290
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    goto :goto_0
.end method

.method protected isAttachmentPanelEnabled()Z
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public abstract isPreparedForSending()Z
.end method

.method protected isSubjectEditorVisible()Z
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 1521
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDraft()V
    .locals 2

    .prologue
    .line 675
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 680
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    .line 681
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarVisible:Z

    .line 273
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarVisible:Z

    .line 265
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 694
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 696
    const-string v0, "MessageEditableActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    .line 701
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 707
    :cond_0
    if-ne p1, v4, :cond_2

    .line 708
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 709
    if-eqz v0, :cond_1

    .line 710
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    .line 738
    :cond_1
    :goto_0
    return-void

    .line 712
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    .line 713
    const-string v0, "numbers"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 714
    const-string v0, "names"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 716
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    array-length v0, v2

    array-length v4, v3

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 718
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 719
    aget-object v4, v2, v0

    .line 720
    aget-object v5, v3, v0

    .line 721
    invoke-static {v4, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    .line 722
    invoke-virtual {v4, v5}, Lcom/android/mms/data/Contact;->setNickname(Ljava/lang/String;)V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 725
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 726
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 727
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 728
    sget-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {p3, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 729
    cmp-long v0, v2, v5

    if-eqz v0, :cond_4

    .line 730
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setTimeToSend(J)V

    .line 733
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    goto :goto_0

    .line 736
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 838
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$12;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 846
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 891
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$16;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$16;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;I)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 897
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 984
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentProcessor;->isOnAttachmentPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->gotoAttachmentPanel(Z)V

    goto :goto_0

    .line 988
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    goto :goto_0

    .line 991
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->exit()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 907
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage()V

    goto :goto_0

    .line 912
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 913
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->enableAttachmentPanel()V

    .line 914
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hideSoftKeyboard()V

    goto :goto_0

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    goto :goto_0

    .line 905
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100058 -> :sswitch_1
        0x7f100063 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 633
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 635
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 636
    .local v0, isLandscape:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eq v1, v0, :cond_0

    .line 637
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    .line 641
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 643
    :cond_0
    return-void

    .line 635
    .end local v0           #isLandscape:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onContactAdded(Lcom/android/mms/data/Contact;)V
    .locals 3
    .parameter "orig"

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getMxPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mPendingRecipients:Ljava/util/Map;

    sget-object v2, Lcom/android/mms/ui/MessageEditableActivityBase;->PRESENCE:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 339
    :cond_0
    return-void
.end method

.method protected onContactRemoved(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "orig"

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getMxPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mPendingRecipients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxMmsRecipients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxSmsRecipients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    .line 347
    return-void
.end method

.method protected onContactStatusUpdate(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 350
    return-void
.end method

.method protected onContactsUpdated(Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter "contactList"

    .prologue
    .line 328
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "showUI"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 222
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->loadFontSizeConfiguration(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSoftKeyboardMinHeight:I

    .line 225
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanelMinHeight:I

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getContentViewResId()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SizeAwareLinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    .line 230
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setOnMeasureListener(Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;)V

    .line 231
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->setContentView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 234
    new-instance v1, Lcom/android/mms/ui/AttachmentProcessor;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AttachmentProcessor;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    .line 235
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 238
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V

    .line 240
    invoke-static {p0}, Lcom/xiaomi/mms/data/MxIdCache;->addStatusListener(Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;)V

    .line 244
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    .line 246
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MX status query thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusWorkThread:Landroid/os/HandlerThread;

    .line 248
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 249
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$QueryMxStatusHandler;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/android/mms/ui/MessageEditableActivityBase$QueryMxStatusHandler;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/os/Looper;Lcom/android/mms/ui/MessageEditableActivityBase$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusHandler:Landroid/os/Handler;

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.xiaomi.mms.PUSH_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMidCacheStatusReceiver:Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAnalytics:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v1, p0}, Lmiui/analytics/XiaomiAnalytics;->startSession(Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1090
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMidCacheStatusReceiver:Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    invoke-static {p0}, Lcom/xiaomi/mms/data/MxIdCache;->removeStatusListener(Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAnalytics:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v0}, Lmiui/analytics/XiaomiAnalytics;->endSession()V

    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 290
    return-void
.end method

.method public onMaxPendingMessagesReached()V
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft(Z)V

    .line 877
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$15;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 887
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 862
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$14;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMxIdOffline(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    if-nez v0, :cond_0

    .line 1032
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "mx id offline, but mx disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onMxIdOnline(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    if-nez v0, :cond_0

    .line 1021
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "mx id online, but mx disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1026
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MessageEditableActivityBase;->onContactStatusUpdate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1135
    :goto_0
    :pswitch_0
    return v2

    .line 1114
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1117
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1119
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1121
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1125
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1126
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    goto :goto_0

    .line 1129
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1130
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 1112
    :pswitch_data_0
    .packed-switch 0x7f1000df
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1400
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1401
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1402
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, p2, v4}, Landroid/view/View;->measure(II)V

    .line 1403
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    if-gt v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1409
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanelMinHeight:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1410
    if-lez v0, :cond_1

    .line 1411
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1416
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_6

    move v0, v3

    .line 1417
    :goto_0
    if-eqz v0, :cond_7

    .line 1418
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1419
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1420
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1426
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSoftKeyboardMinHeight:I

    if-lt v0, v2, :cond_8

    move v2, v3

    .line 1427
    :goto_2
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    if-eq v2, v5, :cond_2

    .line 1428
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->onSoftInputStateChange(Z)V

    .line 1430
    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1431
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    .line 1433
    :cond_3
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 1434
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v5}, Lcom/android/mms/ui/AttachmentView;->dismissPopup()V

    .line 1437
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f0200d2

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1439
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    .line 1441
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1442
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1443
    sub-int v1, v2, v1

    .line 1445
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1446
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->arrangeAttachmentPanel(I)V

    .line 1447
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0, p2, v4}, Landroid/view/View;->measure(II)V

    .line 1448
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v1, v0

    .line 1457
    :goto_4
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarVisible:Z

    if-eqz v1, :cond_b

    .line 1458
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageEditableActivityBase;->getActionBarHeight(I)I

    move-result v2

    .line 1460
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_e

    move v1, v2

    .line 1464
    :goto_5
    invoke-virtual {p1, v4, v2, v4, v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setPadding(IIII)V

    .line 1465
    invoke-virtual {p1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1470
    :goto_6
    new-array v2, v7, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    aput-object v1, v2, v3

    move v1, v0

    move v0, v4

    .line 1471
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_d

    .line 1472
    aget-object v3, v2, v0

    .line 1473
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1474
    const/high16 v6, -0x8000

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, p2, v6}, Landroid/view/View;->measure(II)V

    .line 1475
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v1, v6, :cond_c

    .line 1476
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v4

    .line 1471
    :cond_5
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    move v0, v4

    .line 1416
    goto/16 :goto_0

    .line 1422
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentGrandpa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1423
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentGrandpa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto/16 :goto_1

    :cond_8
    move v2, v4

    .line 1426
    goto/16 :goto_2

    .line 1437
    :cond_9
    const v5, 0x7f0200d1

    goto/16 :goto_3

    .line 1450
    :cond_a
    sub-int v0, v1, v0

    goto :goto_4

    .line 1467
    :cond_b
    invoke-virtual {p1, v4, v4, v4, v4}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setPadding(IIII)V

    goto :goto_6

    .line 1481
    :cond_c
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_8

    .line 1489
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    return-void

    :cond_e
    move v1, v4

    goto :goto_5
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 850
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$13;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 855
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f1000df

    const/4 v2, 0x1

    .line 1095
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    move-result-object v0

    .line 1097
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1098
    const v1, 0x7f0a003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1106
    :goto_0
    const v0, 0x7f1000e2

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 1107
    return v2

    .line 1100
    :cond_0
    const v1, 0x7f0a0189

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1103
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProtocolChanged(Z)V
    .locals 1
    .parameter "mms"

    .prologue
    .line 818
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$11;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$11;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method protected onPushStatusChanged()V
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1774
    return-void
.end method

.method protected onResetMessageAnimationEnd()V
    .locals 0

    .prologue
    .line 1589
    return-void
.end method

.method protected onResetMessageAnimationStart()V
    .locals 0

    .prologue
    .line 1586
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 927
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 929
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 938
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 940
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    .line 941
    return-void
.end method

.method protected onSoftInputStateChange(Z)V
    .locals 0
    .parameter "isSoftInputEnabled"

    .prologue
    .line 1518
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 278
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->allowAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 280
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateContactNames()V

    .line 281
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 945
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft(Z)V

    .line 946
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->cancelUpdateContactNames()V

    .line 947
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 948
    return-void
.end method

.method public performShowSoftKeyboardRequest()V
    .locals 1

    .prologue
    .line 1554
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    .line 1556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 1558
    :cond_0
    return-void
.end method

.method protected postExit()V
    .locals 0

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->finish()V

    .line 1014
    return-void
.end method

.method public requestShowSoftKeyboard()V
    .locals 1

    .prologue
    .line 1550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 1551
    return-void
.end method

.method public resetMessageWithAnimation()V
    .locals 3

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onResetMessageAnimationStart()V

    .line 1593
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1595
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-nez v1, :cond_0

    .line 1596
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1598
    :cond_0
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$19;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1646
    const v1, 0x7f10005b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1647
    return-void
.end method

.method protected saveDraft(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 954
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 959
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "saveDraft: not worth saving, discard WorkingMessage and bail"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 966
    :cond_3
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 967
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 972
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mToastForDraftSave:Z

    if-eqz v0, :cond_0

    .line 973
    const v0, 0x7f0a0062

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public abstract sendMessage()V
.end method

.method public setTiming()V
    .locals 4

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    .line 1716
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 1719
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1721
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1722
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1723
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1724
    sget-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    const v1, 0x7f0a01a4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1726
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1727
    return-void
.end method

.method public setWorkingMessage(Lcom/android/mms/data/WorkingMessage;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-void
.end method

.method protected showSoftKeyboard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1562
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v2}, Lcom/android/mms/ui/SizeAwareLinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1563
    .local v0, focus:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1564
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1565
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1566
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 1569
    :cond_0
    if-nez v0, :cond_1

    .line 1573
    :goto_0
    return v1

    .line 1572
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1573
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected showSubjectEditor(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1144
    const-string v0, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    const-string v0, "MessageEditableActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSubjectEditor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 1151
    if-nez p1, :cond_1

    .line 1172
    :goto_0
    return-void

    .line 1154
    :cond_1
    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 1155
    const v0, 0x7f10005d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectDivider:Landroid/view/View;

    .line 1158
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1160
    if-eqz p1, :cond_4

    .line 1161
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1166
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectDivider:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentProcessor;->updateAttachmentTypeStates()V

    .line 1171
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1158
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1163
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1167
    goto :goto_3

    :cond_6
    move v1, v2

    .line 1168
    goto :goto_4
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 686
    if-ltz p2, :cond_0

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    .line 689
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 690
    return-void
.end method

.method public startNicknamePicker(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0a0122

    .line 1355
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 1356
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hasRecipientsToRevise()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1358
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1359
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 1360
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1361
    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1362
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1360
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1365
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1367
    const-string v1, "numbers"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1369
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1370
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateNicknameRevisedNumbers()V

    .line 1384
    :cond_2
    :goto_1
    return-void

    .line 1372
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1373
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1374
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1375
    if-eqz p1, :cond_4

    .line 1376
    const v1, 0x7f0a0123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1380
    :goto_2
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1381
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1378
    :cond_4
    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAnalytics:Lmiui/analytics/XiaomiAnalytics;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 1870
    return-void
.end method

.method public updateSendButtonState()V
    .locals 2

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v0

    .line 760
    .local v0, preparedForSending:Z
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 761
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 762
    return-void
.end method

.method protected abstract willDiscardDraft()Z
.end method
