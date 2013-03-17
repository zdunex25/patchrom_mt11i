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

    .line 647
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$9;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 875
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    .line 1180
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$17;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 1197
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$18;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 1782
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$20;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    .line 1866
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

    .line 1766
    if-ne p1, v2, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxMmsRecipients:Ljava/util/Map;

    sget-object v1, Lcom/android/mms/ui/MessageEditableActivityBase;->PRESENCE:Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    :goto_0
    if-ne p2, v2, :cond_1

    .line 1772
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxSmsRecipients:Ljava/util/Map;

    sget-object v1, Lcom/android/mms/ui/MessageEditableActivityBase;->PRESENCE:Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    :goto_1
    return-void

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxMmsRecipients:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1774
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

    .line 1702
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 1703
    const/4 v0, 0x0

    .line 1706
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 1709
    :goto_0
    if-eqz v3, :cond_3

    .line 1710
    array-length v0, v3

    if-lt v0, v2, :cond_2

    .line 1711
    aget v0, v3, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0xa

    .line 1713
    :goto_1
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 1714
    aget v3, v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    and-int/lit8 v3, v3, 0x7

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 1717
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1707
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
    .line 669
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_edit_signature"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 674
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

    .line 1502
    const/4 v1, 0x0

    .line 1503
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    .line 1504
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1506
    instance-of v5, v0, Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_3

    .line 1507
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .line 1504
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 1510
    :cond_0
    if-nez v1, :cond_2

    .line 1511
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "getActionBarHeight: cann\'t find ActionBarView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1519
    :cond_1
    :goto_2
    return v0

    .line 1514
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    .line 1515
    if-gtz v0, :cond_1

    .line 1518
    const/high16 v0, -0x8000

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/ActionBarView;->measure(II)V

    .line 1519
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

    .line 473
    if-nez p1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-object v6

    .line 476
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, urlStr:Ljava/lang/String;
    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 480
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 481
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 482
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

    .line 483
    .local v3, p:Ljava/lang/String;
    const-string v7, "body="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 485
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

    .line 486
    :catch_0
    move-exception v7

    .line 482
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 19
    .parameter "intent"

    .prologue
    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 521
    .local v11, extras:Landroid/os/Bundle;
    if-nez v11, :cond_0

    .line 522
    const/4 v2, 0x0

    .line 606
    :goto_0
    return v2

    .line 525
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, mimeType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 527
    .local v9, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 531
    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/mms/model/ContactParser;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v14

    .line 532
    .local v14, message:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v14}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 534
    const/4 v2, 0x1

    goto :goto_0

    .line 537
    :cond_1
    const/4 v12, 0x0

    .line 538
    .local v12, flag:Z
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 540
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v6, v0, v3}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 541
    const/4 v12, 0x1

    .line 543
    .end local v16           #uri:Landroid/net/Uri;
    :cond_2
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 545
    const/4 v12, 0x1

    .line 547
    :cond_3
    if-eqz v12, :cond_9

    .line 548
    const/4 v2, 0x1

    goto :goto_0

    .line 550
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

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v15

    .line 553
    .local v15, slideShow:Lcom/android/mms/model/SlideshowModel;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 554
    .local v5, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    .line 555
    .local v10, currentSlideCount:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 556
    .local v13, importCount:I
    add-int v2, v13, v10

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    .line 557
    rsub-int/lit8 v2, v10, 0xa

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 559
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

    .line 570
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

    .line 575
    .local v8, dialog:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/mms/ui/MessageEditableActivityBase$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Lcom/android/mms/ui/MessageEditableActivityBase$7;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/app/AlertDialog;)V

    .line 581
    .local v7, showProgress:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v17, 0x3e8

    move-wide/from16 v0, v17

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    move v4, v13

    .line 584
    .local v4, numberToImport:I
    new-instance v17, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$8;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageEditableActivityBase$8;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;Landroid/app/AlertDialog;)V

    const-string v3, "addAttachment"

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 595
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 554
    .end local v4           #numberToImport:I
    .end local v7           #showProgress:Ljava/lang/Runnable;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v10           #currentSlideCount:I
    .end local v13           #importCount:I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 597
    .end local v5           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v15           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_7
    const-string v2, "android.intent.action.SEND_MSG"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 599
    .restart local v16       #uri:Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/data/Conversation;->checkContentScheme(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 600
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 602
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v6, v0, v3}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 603
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 606
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

    .line 494
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 495
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v5

    .line 499
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 502
    const/4 v2, 0x0

    .line 503
    .local v2, flag:Z
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 504
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 505
    .local v4, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 506
    const/4 v2, 0x1

    .line 508
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 509
    iget-object v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 510
    const/4 v2, 0x1

    .line 512
    :cond_3
    if-eqz v2, :cond_0

    .line 513
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private hasRecipientsToRevise()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1318
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "nickname_revised_numbers"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1320
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    .line 1322
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    move v1, v2

    .line 1323
    :goto_0
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1324
    invoke-virtual {v5, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1325
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1326
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1327
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1328
    invoke-virtual {v0, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v6

    .line 1329
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 1330
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 1335
    :cond_0
    return v2

    .line 1323
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isSignatureRequired()Z
    .locals 3

    .prologue
    .line 664
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

    .line 1300
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    move v1, v0

    .line 1302
    :goto_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1303
    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 1304
    const v4, 0xffff

    if-ne v3, v4, :cond_0

    .line 1305
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1306
    const/4 v1, 0x1

    .line 1302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1309
    :cond_1
    if-eqz v1, :cond_2

    .line 1310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1311
    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1312
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1315
    :cond_2
    return-void
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1656
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "resetMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1665
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1668
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1674
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1677
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 1679
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1680
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1682
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 1685
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 1687
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentProcessor;->updateAttachmentTypeStates()V

    .line 1690
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1692
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 1693
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hideSoftKeyboard()V

    .line 1696
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSignatureRequired()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSignature(Z)V

    .line 1698
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    .line 1699
    return-void
.end method

.method private sendMessage(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 769
    if-eqz p1, :cond_1

    .line 771
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 780
    const-string v1, "MessageEditableActivityBase"

    const-string v2, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Ljava/lang/String;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    .line 788
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    goto :goto_0
.end method

.method private switchMsgType()V
    .locals 7

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    .line 1743
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1744
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

    .line 1751
    :goto_0
    if-eqz v0, :cond_4

    .line 1752
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mEditorContainer:Landroid/view/View;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1753
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorDrawableRes(I)V

    .line 1754
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const v0, 0x7f0a01c6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1763
    :goto_2
    return-void

    .line 1744
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1754
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 1757
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mEditorContainer:Landroid/view/View;

    const v2, 0x7f020019

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1758
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const v2, 0x7f020158

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorDrawableRes(I)V

    .line 1759
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    const v0, 0x7f0a01c5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const v0, 0x7f0a01c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private toastConvertInfo(Z)V
    .locals 2
    .parameter

    .prologue
    .line 831
    if-eqz p1, :cond_0

    const v0, 0x7f0a005d

    .line 833
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 834
    return-void

    .line 831
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
    .line 745
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter(Z)V

    .line 746
    return-void
.end method

.method private updateCounter(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 749
    if-eqz p1, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 758
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/theos0o/GsmEncoding;->seqToGSM(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 753
    aget v1, v0, v1

    .line 754
    const/4 v2, 0x2

    aget v0, v0, v2

    .line 756
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

    .line 1339
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "nickname_revised_numbers"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1341
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 1343
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    move v1, v2

    .line 1344
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1345
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1346
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1347
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1348
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1349
    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v5

    .line 1350
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 1351
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1344
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1354
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v3}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1356
    const-string v2, "nickname_revised_numbers"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1357
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1358
    return-void
.end method


# virtual methods
.method public cancelTiming()V
    .locals 3

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1737
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setTimeToSend(J)V

    .line 1738
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    .line 1739
    return-void
.end method

.method protected checkAndSendMessage(Z)V
    .locals 3
    .parameter

    .prologue
    .line 793
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const v0, 0x7f0a019c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 812
    :goto_0
    return-void

    .line 797
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

    .line 798
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

    .line 810
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    goto :goto_0
.end method

.method protected disableAttachmentPanel()V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    return-void
.end method

.method protected drawBottomPanel()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1054
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1059
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1085
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    .line 1086
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    .line 1087
    return-void

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1067
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1069
    if-eqz v0, :cond_4

    .line 1070
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1081
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public drawTopPanel()V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1051
    return-void
.end method

.method protected enableAttachmentPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1535
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getEditMessageFocus()Landroid/widget/EditText;

    .line 1536
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->gotoAttachmentPanel(Z)V

    .line 1537
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    return-void
.end method

.method protected exit()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    .line 1012
    :goto_0
    return-void

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->willDiscardDraft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Lcom/android/mms/ui/MessageEditableActivityBase$1;)V

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1010
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mToastForDraftSave:Z

    .line 1011
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
    .line 1541
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 1547
    :goto_0
    return-object v0

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    goto :goto_0

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1547
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
    .line 903
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

    .line 1254
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1258
    const-string v0, "forwarded_message"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1275
    :goto_0
    return v0

    .line 1262
    :cond_0
    const-string v0, "msg_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1264
    const-string v4, "Mms:app"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1265
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

    .line 1268
    :cond_1
    if-eqz v0, :cond_2

    .line 1269
    invoke-static {p0, v0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1270
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v4, "subject"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :goto_1
    move v0, v2

    .line 1275
    goto :goto_0

    .line 1272
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

    .line 436
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 438
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSignatureRequired()Z

    move-result v1

    .line 439
    .local v1, needSignature:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleForwardedMessage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->loadDraft()V

    .line 441
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    const/4 v1, 0x0

    .line 447
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBody(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, body:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 454
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_2
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, subject:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 459
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v2, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 461
    :cond_3
    const-string v3, "exit_on_sent"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mExitOnSent:Z

    .line 464
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendIntent(Landroid/content/Intent;)Z

    .line 467
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendToIntent(Landroid/content/Intent;)Z

    .line 469
    return v1
.end method

.method protected handleSignature(Z)V
    .locals 0
    .parameter "needSignature"

    .prologue
    .line 613
    if-eqz p1, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->appendSignature()V

    .line 619
    :cond_0
    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 1584
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1585
    .local v0, focus:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 1588
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1589
    return-void
.end method

.method protected initResourceRefs()V
    .locals 3

    .prologue
    .line 360
    const v1, 0x7f100097

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    .line 361
    const v1, 0x7f100082

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    .line 362
    const v1, 0x7f100059

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    .line 363
    const v1, 0x7f10004e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    .line 365
    const v1, 0x7f10005b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mEditorContainer:Landroid/view/View;

    .line 366
    const v1, 0x7f100064

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 367
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$2;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 384
    const v1, 0x7f100066

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    .line 385
    const v1, 0x7f100065

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    .line 386
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v1, 0x7f100060

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AttachmentView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    .line 388
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$3;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentView;->setHandler(Landroid/os/Handler;)V

    .line 394
    const v1, 0x7f10005a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    const v1, 0x7f10005e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    .line 397
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$4;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const v1, 0x7f100063

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, focuser:Landroid/view/View;
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$5;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const v1, 0x7f10005d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    .line 414
    const v1, 0x7f100099

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    .line 415
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$6;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentParent:Landroid/view/View;

    .line 426
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentGrandpa:Landroid/view/View;

    .line 427
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentGrandpa:Landroid/view/View;

    const v2, 0x60b0004

    invoke-static {p0, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarGroup:Landroid/view/ViewGroup;

    .line 429
    return-void
.end method

.method protected initialize()V
    .locals 4

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 623
    .local v1, needSignature:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 624
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawTopPanel()V

    .line 625
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 626
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 627
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSignature(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 630
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    .line 631
    return-void

    .line 630
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method insertChenghu()V
    .locals 3

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1281
    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1282
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1297
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1290
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1291
    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1292
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startNicknamePicker(Z)V

    .line 1296
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    goto :goto_0
.end method

.method protected isAttachmentPanelEnabled()Z
    .locals 1

    .prologue
    .line 1531
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
    .line 1145
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
    .line 1527
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
    .line 677
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 682
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    .line 683
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

    const/4 v0, 0x0

    .line 696
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 698
    const-string v1, "MessageEditableActivityBase"

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    .line 703
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 709
    :cond_0
    if-ne p1, v4, :cond_2

    .line 710
    const-string v1, "exit_ecm_result"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 711
    if-eqz v1, :cond_1

    .line 712
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    .line 740
    :cond_1
    :goto_0
    return-void

    .line 714
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    if-eqz p3, :cond_3

    .line 715
    const-string v1, "numbers"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 716
    const-string v2, "names"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 718
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_1

    .line 720
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 721
    aget-object v3, v1, v0

    .line 722
    aget-object v4, v2, v0

    .line 723
    invoke-static {v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 724
    invoke-virtual {v3, v4}, Lcom/android/mms/data/Contact;->setNickname(Ljava/lang/String;)V

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 727
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 728
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 729
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 730
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {p3, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 731
    cmp-long v3, v1, v5

    if-eqz v3, :cond_4

    .line 732
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setTimeToSend(J)V

    .line 735
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    goto :goto_0

    .line 738
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 840
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$12;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 848
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 893
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$16;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$16;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;I)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 899
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    :goto_0
    return-void

    .line 986
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentProcessor;->isOnAttachmentPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->gotoAttachmentPanel(Z)V

    goto :goto_0

    .line 990
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    goto :goto_0

    .line 993
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->exit()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 907
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 909
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage()V

    goto :goto_0

    .line 914
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 915
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->enableAttachmentPanel()V

    .line 916
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hideSoftKeyboard()V

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    goto :goto_0

    .line 907
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10005a -> :sswitch_1
        0x7f100065 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 637
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 638
    .local v0, isLandscape:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eq v1, v0, :cond_0

    .line 639
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    .line 643
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 645
    :cond_0
    return-void

    .line 637
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

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    goto :goto_0
.end method

.method protected onContactRemoved(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "orig"

    .prologue
    .line 344
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getMxPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mPendingRecipients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxMmsRecipients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxSmsRecipients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V

    .line 349
    return-void
.end method

.method protected onContactStatusUpdate(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 352
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
    .line 1091
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1092
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
    .line 878
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft(Z)V

    .line 879
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$15;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 889
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    :goto_0
    return-void

    .line 864
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
    .line 1033
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    if-nez v0, :cond_0

    .line 1034
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "mx id offline, but mx disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :goto_0
    return-void

    .line 1037
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
    .line 1022
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    if-nez v0, :cond_0

    .line 1023
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "mx id online, but mx disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1028
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MessageEditableActivityBase;->onContactStatusUpdate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1129
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1116
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->toggleSubject()V

    goto :goto_0

    .line 1119
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1120
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    goto :goto_0

    .line 1123
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1124
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 1114
    :pswitch_data_0
    .packed-switch 0x7f1000e1
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

    .line 1406
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1407
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1408
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, p2, v4}, Landroid/view/View;->measure(II)V

    .line 1409
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

    .line 1411
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1415
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanelMinHeight:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1416
    if-lez v0, :cond_1

    .line 1417
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1422
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_6

    move v0, v3

    .line 1423
    :goto_0
    if-eqz v0, :cond_7

    .line 1424
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1425
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1426
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1432
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSoftKeyboardMinHeight:I

    if-lt v0, v2, :cond_8

    move v2, v3

    .line 1433
    :goto_2
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    if-eq v2, v5, :cond_2

    .line 1434
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->onSoftInputStateChange(Z)V

    .line 1436
    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1437
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    .line 1439
    :cond_3
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 1440
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v5}, Lcom/android/mms/ui/AttachmentView;->dismissPopup()V

    .line 1443
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f0200d2

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1445
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    .line 1447
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1448
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1449
    sub-int v1, v2, v1

    .line 1451
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1452
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->arrangeAttachmentPanel(I)V

    .line 1453
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0, p2, v4}, Landroid/view/View;->measure(II)V

    .line 1454
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v1, v0

    .line 1463
    :goto_4
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mActionBarVisible:Z

    if-eqz v1, :cond_b

    .line 1464
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageEditableActivityBase;->getActionBarHeight(I)I

    move-result v2

    .line 1466
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_e

    move v1, v2

    .line 1470
    :goto_5
    invoke-virtual {p1, v4, v2, v4, v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setPadding(IIII)V

    .line 1471
    invoke-virtual {p1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1476
    :goto_6
    new-array v2, v7, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    aput-object v1, v2, v3

    move v1, v0

    move v0, v4

    .line 1477
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_d

    .line 1478
    aget-object v3, v2, v0

    .line 1479
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1480
    const/high16 v6, -0x8000

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, p2, v6}, Landroid/view/View;->measure(II)V

    .line 1481
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v1, v6, :cond_c

    .line 1482
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v4

    .line 1477
    :cond_5
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    move v0, v4

    .line 1422
    goto/16 :goto_0

    .line 1428
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentGrandpa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1429
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentGrandpa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto/16 :goto_1

    :cond_8
    move v2, v4

    .line 1432
    goto/16 :goto_2

    .line 1443
    :cond_9
    const v5, 0x7f0200d1

    goto/16 :goto_3

    .line 1456
    :cond_a
    sub-int v0, v1, v0

    goto :goto_4

    .line 1473
    :cond_b
    invoke-virtual {p1, v4, v4, v4, v4}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setPadding(IIII)V

    goto :goto_6

    .line 1487
    :cond_c
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1490
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_8

    .line 1495
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1498
    return-void

    :cond_e
    move v1, v4

    goto :goto_5
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 852
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$13;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f1000e1

    const/4 v2, 0x1

    .line 1097
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    move-result-object v0

    .line 1099
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    const v1, 0x7f0a003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1108
    :goto_0
    const v0, 0x7f1000e4

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 1109
    return v2

    .line 1102
    :cond_0
    const v1, 0x7f0a0189

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1105
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProtocolChanged(Z)V
    .locals 1
    .parameter "mms"

    .prologue
    .line 820
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$11;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$11;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 828
    return-void
.end method

.method protected onPushStatusChanged()V
    .locals 2

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1780
    return-void
.end method

.method protected onResetMessageAnimationEnd()V
    .locals 0

    .prologue
    .line 1595
    return-void
.end method

.method protected onResetMessageAnimationStart()V
    .locals 0

    .prologue
    .line 1592
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 929
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 931
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 940
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 942
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMxEnabled:Z

    .line 943
    return-void
.end method

.method protected onSoftInputStateChange(Z)V
    .locals 0
    .parameter "isSoftInputEnabled"

    .prologue
    .line 1524
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
    .line 947
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft(Z)V

    .line 948
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->cancelUpdateContactNames()V

    .line 949
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 950
    return-void
.end method

.method public performShowSoftKeyboardRequest()V
    .locals 1

    .prologue
    .line 1560
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    .line 1562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 1564
    :cond_0
    return-void
.end method

.method protected postExit()V
    .locals 0

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->finish()V

    .line 1016
    return-void
.end method

.method public requestShowSoftKeyboard()V
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 1557
    return-void
.end method

.method public resetMessageWithAnimation()V
    .locals 3

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onResetMessageAnimationStart()V

    .line 1599
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1601
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-nez v1, :cond_0

    .line 1602
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1604
    :cond_0
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$19;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1652
    const v1, 0x7f10005d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1653
    return-void
.end method

.method protected saveDraft(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 956
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 961
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "saveDraft: not worth saving, discard WorkingMessage and bail"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 968
    :cond_3
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 969
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 974
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mToastForDraftSave:Z

    if-eqz v0, :cond_0

    .line 975
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
    .line 1721
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    .line 1722
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 1725
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1727
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1728
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1730
    sget-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    const v1, 0x7f0a01a4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1733
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

    .line 1568
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v2}, Lcom/android/mms/ui/SizeAwareLinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1569
    .local v0, focus:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1570
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1571
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1572
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 1575
    :cond_0
    if-nez v0, :cond_1

    .line 1579
    :goto_0
    return v1

    .line 1578
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1579
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected showSubjectEditor(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1150
    const-string v0, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
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

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 1157
    if-nez p1, :cond_1

    .line 1178
    :goto_0
    return-void

    .line 1160
    :cond_1
    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 1161
    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectDivider:Landroid/view/View;

    .line 1164
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1166
    if-eqz p1, :cond_4

    .line 1167
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1172
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectDivider:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentProcessor;->updateAttachmentTypeStates()V

    .line 1177
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1164
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1169
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1173
    goto :goto_3

    :cond_6
    move v1, v2

    .line 1174
    goto :goto_4
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 688
    if-ltz p2, :cond_0

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    .line 691
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 692
    return-void
.end method

.method public startNicknamePicker(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0a0122

    .line 1361
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 1362
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hasRecipientsToRevise()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1364
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1365
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 1366
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1367
    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1368
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1371
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1372
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    const-string v1, "numbers"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1374
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1376
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateNicknameRevisedNumbers()V

    .line 1390
    :cond_2
    :goto_1
    return-void

    .line 1378
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1379
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1380
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1381
    if-eqz p1, :cond_4

    .line 1382
    const v1, 0x7f0a0123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1386
    :goto_2
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1384
    :cond_4
    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public toggleSubject()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1133
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1135
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1142
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1140
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAnalytics:Lmiui/analytics/XiaomiAnalytics;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 1876
    return-void
.end method

.method public updateSendButtonState()V
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v0

    .line 762
    .local v0, preparedForSending:Z
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 763
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 764
    return-void
.end method

.method protected abstract willDiscardDraft()Z
.end method
