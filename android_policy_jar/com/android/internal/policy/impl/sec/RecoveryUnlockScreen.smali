.class public Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "RecoveryUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoveryUnlockScreen"


# instance fields
.field private final RECOVERY_PASSWORD_ATTEMPTS:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/Button;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field mImeButtonVisible:Z

.field private final mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private final mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Landroid/widget/EditText;

.field private mRecoverButton:Landroid/widget/Button;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mUseSystemIME:Z

.field private recoveryAttempt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 16
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mUseSystemIME:Z

    .line 81
    iput v5, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->RECOVERY_PASSWORD_ATTEMPTS:I

    .line 82
    iput v9, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    .line 86
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mImeButtonVisible:Z

    .line 93
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 94
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    .line 95
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 96
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 97
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 100
    .local v7, layoutInflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_fb

    .line 101
    const v0, 0x109007b

    invoke-virtual {v7, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    :goto_2a
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 109
    const v0, 0x102022e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 110
    const v0, 0x1020357

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 113
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v0, p1, v1, p0, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 126
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_103

    const v0, 0x1070037

    :goto_8a
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    const v0, 0x1020365

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mRecoverButton:Landroid/widget/Button;

    .line 150
    const v0, 0x102035d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCancelButton:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mRecoverButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x102035a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 166
    .local v8, switchImeButton:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 168
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mImeButtonVisible:Z

    if-eqz v0, :cond_f5

    if-eqz v8, :cond_f5

    invoke-direct {p0, v6, v9}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 169
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 170
    new-instance v0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;

    invoke-direct {v0, p0, v6}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_f5
    const/high16 v0, 0x4c00

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->setBackgroundColor(I)V

    .line 178
    return-void

    .line 103
    .end local v6           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v8           #switchImeButton:Landroid/view/View;
    :cond_fb
    const v0, 0x109007a

    invoke-virtual {v7, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2a

    :cond_103
    move v0, v9

    .line 126
    goto :goto_8a
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->verifyPasswordAndUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 296
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;->start()Landroid/os/CountDownTimer;

    .line 314
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .registers 15
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 194
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 196
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1a

    .line 222
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_19
    return v10

    .line 197
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1a
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 200
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_27

    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 202
    goto :goto_b

    .line 205
    :cond_27
    const/4 v0, 0x0

    .line 206
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 207
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 211
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_41
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 216
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_4d

    if-eqz p2, :cond_b

    if-le v0, v10, :cond_b

    .line 217
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 218
    goto :goto_b

    .line 222
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_50
    if-gt v2, v10, :cond_5d

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_5e

    :cond_5d
    move v9, v10

    :cond_5e
    move v10, v9

    goto :goto_19
.end method

.method private verifyPasswordAndUnlock()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, entry:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_Recovery_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 272
    .local v0, bRecovery:Z
    if-eqz v0, :cond_48

    .line 273
    const-string v2, "RecoveryUnlockScreen"

    const-string v3, "Success to set LOCK_RECOVERY_ENABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_29
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 288
    .end local v0           #bRecovery:Z
    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void

    .line 275
    .restart local v0       #bRecovery:Z
    :cond_48
    const-string v2, "RecoveryUnlockScreen"

    const-string v3, "Failed to set LOCK_RECOVERY_ENABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 283
    .end local v0           #bRecovery:Z
    :cond_50
    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    .line 284
    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    rem-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_40

    .line 285
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportDeviceWipe(I)V

    goto :goto_40
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 326
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_17

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_29

    .line 328
    :cond_17
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_29

    iget v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 329
    const-string v1, "RecoveryUnlockScreen"

    const-string v2, "Layout issue break out condition, but execute workaround code"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_29
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 340
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_f

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_14

    .line 342
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 344
    :cond_14
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 353
    if-eqz p2, :cond_8

    const/4 v0, 0x6

    if-eq p2, v0, :cond_8

    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 355
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->verifyPasswordAndUnlock()V

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .registers 4
    .parameter "isKeyboardOpen"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_9

    const/4 v0, 0x4

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 349
    return-void

    .line 348
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 242
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 246
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mResuming:Z

    .line 248
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 251
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 255
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 256
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->handleAttemptLockout(J)V

    .line 259
    :cond_23
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mResuming:Z

    .line 260
    return-void
.end method
