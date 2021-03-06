.class public Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlayUsa.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "LockscreenHelpOverlay"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private final MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final SCREEN_UPDATE:I

.field deviceDpi:I

.field private gestureImageArray:[I

.field mAudioManager:Landroid/media/AudioManager;

.field private mBottomPadding:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mGestureImage:Landroid/widget/ImageView;

.field private mGestureLayout:Landroid/widget/RelativeLayout;

.field private mGestureText:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpButton:Landroid/widget/Button;

.field private mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

.field mHelpCheckBox:Landroid/widget/CheckBox;

.field private mIsHelpHubInstalled:Z

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mLeftPadding:I

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedMsgCount:I

.field private mShortcutItemNum:I

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mWhichTip:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V
    .registers 15
    .parameter "context"
    .parameter "callback"
    .parameter "configuration"
    .parameter "helpCallback"
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v4, 0x12c2

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->MISSED_EVENT_UPDATE:I

    .line 75
    const/16 v4, 0x12c3

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->SCREEN_UPDATE:I

    .line 76
    iput v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->REQ_INDEX_CALL_EMAIL:I

    .line 77
    const/16 v4, 0x7b

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->REQ_INDEX_MSG:I

    .line 79
    iput v7, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    .line 80
    iput v7, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    .line 85
    const-string v4, "com.android.phone"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->CALL_PKG:Ljava/lang/String;

    .line 86
    const-string v4, "com.android.mms"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->MSG_PKG:Ljava/lang/String;

    .line 87
    const-string v4, "com.android.email"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->EMAIL_PKG:Ljava/lang/String;

    .line 102
    iput v7, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBottomPadding:I

    .line 103
    iput v7, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mLeftPadding:I

    .line 113
    new-instance v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$1;-><init>(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHandler:Landroid/os/Handler;

    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 130
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    .line 131
    iput p5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    .line 132
    iput p6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    .line 133
    iget v4, p3, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    .line 135
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 136
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13e

    .line 138
    const v4, 0x109006d

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    :goto_4b
    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 145
    sput-boolean v6, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    .line 150
    :goto_5b
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 151
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 152
    .local v3, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 153
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getDpi(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->deviceDpi:I

    .line 154
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v4, :cond_97

    const-string v4, "LockscreenHelpOverlay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceDpi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->deviceDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_97
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v4, :cond_a2

    const-string v4, "LockscreenHelpOverlay"

    const-string v5, "LockscreenHelpOverlay"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_a2
    const v4, 0x1020331

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    .line 158
    const v4, 0x1020332

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    .line 159
    const v4, 0x1020019

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpButton:Landroid/widget/Button;

    .line 160
    const v4, 0x1020335

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    .line 162
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setGestureImageArray()V

    .line 165
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->updateMissedEvent()V

    .line 167
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mAudioManager:Landroid/media/AudioManager;

    .line 168
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 170
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v4, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    new-instance v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$2;-><init>(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v4, :cond_113

    const-string v4, "LockscreenHelpOverlay"

    const-string v5, "Broadcast register"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_113
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v4, :cond_134

    const-string v4, "LockscreenHelpOverlay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_134
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->isHelpHubInstalled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mIsHelpHubInstalled:Z

    .line 196
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setWhichHelpInfo(II)V

    .line 197
    return-void

    .line 141
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #mWindowManager:Landroid/view/WindowManager;
    :cond_13e
    const v4, 0x109006e

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_4b

    .line 147
    :cond_146
    sput-boolean v7, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    goto/16 :goto_5b
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;)I
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 353
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_f

    .line 371
    :cond_e
    :goto_e
    return v1

    .line 356
    :cond_f
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_4e

    .line 357
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 364
    :cond_1b
    :goto_1b
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_6a

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6a

    .line 365
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_49

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_49
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_e

    .line 358
    :cond_4e
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_5d

    .line 359
    const-string v2, "com.android.mms"

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 360
    :cond_5d
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_1b

    .line 361
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 367
    :cond_6a
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-eq p1, v2, :cond_72

    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_e

    :cond_72
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_e

    .line 368
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_9c

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_9c
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_e
.end method

.method private handleMissedEventUpdate()V
    .registers 3

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->updateMissedEvent()V

    .line 325
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    if-gtz v0, :cond_15

    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    if-gtz v0, :cond_15

    .line 326
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 327
    :cond_15
    return-void
.end method

.method private isHelpHubInstalled()Z
    .registers 5

    .prologue
    .line 414
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 415
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 418
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 419
    const/4 v3, 0x1

    .line 420
    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private setGestureImageArray()V
    .registers 8

    .prologue
    const v6, 0x1080623

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 200
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    .line 201
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    if-eq v0, v2, :cond_3c

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108061a

    aput v1, v0, v4

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108061c

    aput v1, v0, v5

    .line 204
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108061f

    aput v1, v0, v2

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080621

    aput v1, v0, v3

    .line 219
    :goto_32
    return-void

    .line 208
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    aput v6, v0, v2

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    aput v6, v0, v3

    goto :goto_32

    .line 212
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108061b

    aput v1, v0, v4

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108061d

    aput v1, v0, v5

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080620

    aput v1, v0, v2

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080622

    aput v1, v0, v3

    goto :goto_32
.end method

.method private updateMissedEvent()V
    .registers 6

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 333
    .local v1, nMsgCount:I
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;)I

    move-result v0

    .line 334
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;)I

    move-result v1

    .line 336
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    if-eq v0, v2, :cond_16

    if-ltz v0, :cond_16

    .line 337
    iput v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    .line 340
    :cond_16
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v2, :cond_3a

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_3a
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    if-eq v1, v2, :cond_42

    if-ltz v1, :cond_42

    .line 343
    iput v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    .line 346
    :cond_42
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v2, :cond_66

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_66
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_23

    .line 387
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() Broadcast unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    .line 391
    return-void
.end method

.method public getWhichTip()I
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    .line 412
    :goto_7
    return-void

    .line 401
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setHelpLayoutFlag()V

    .line 404
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    .line 405
    :cond_1c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    goto :goto_7

    .line 408
    :sswitch_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_7

    .line 399
    nop

    :sswitch_data_32
    .sparse-switch
        0x1020019 -> :sswitch_8
        0x1020335 -> :sswitch_22
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    .line 382
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 375
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setWhichHelpInfo()V

    .line 377
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public setHelpLayoutFlag()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 297
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    const-wide/high16 v3, 0x4024

    iget v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    .line 298
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v2, :cond_32

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChekced() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_32
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mIsHelpHubInstalled:Z

    if-eqz v2, :cond_70

    .line 301
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 302
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "displayed"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 304
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/net/Uri;

    .line 305
    .local v0, uri:[Landroid/net/Uri;
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v7

    .line 306
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v8

    .line 307
    const/4 v2, 0x2

    const-string v3, "content://com.samsung.helphub.provider/help_page_status/unlock_via_events"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    .end local v0           #uri:[Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_6f
    return-void

    .line 311
    :cond_70
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "help_overlay_checked"

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6f
.end method

.method public setPaddingForShorcutGesture()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 222
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "information_ticker"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_4a

    .line 224
    .local v0, isTickerOn:Z
    :goto_10
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 225
    .local v1, shortcutPadding:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 227
    .local v2, shortcutWidth:I
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_49

    .line 228
    if-eqz v0, :cond_3b

    .line 229
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->deviceDpi:I

    mul-int/lit8 v3, v3, 0x40

    div-int/lit16 v3, v3, 0xa0

    iput v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBottomPadding:I

    .line 231
    :cond_3b
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    if-lez v3, :cond_49

    .line 232
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    rsub-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mLeftPadding:I

    .line 234
    :cond_49
    return-void

    .end local v0           #isTickerOn:Z
    .end local v1           #shortcutPadding:I
    .end local v2           #shortcutWidth:I
    :cond_4a
    move v0, v3

    .line 222
    goto :goto_10
.end method

.method public setWhichHelpInfo()V
    .registers 3

    .prologue
    .line 238
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setWhichHelpInfo(II)V

    .line 239
    return-void
.end method

.method public setWhichHelpInfo(II)V
    .registers 11
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const v7, 0x10406d8

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    const/4 v0, 0x1

    .line 244
    .local v0, mShowingNumber:I
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_23
    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_47

    .line 247
    iput v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406d6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    :cond_46
    :goto_46
    return-void

    .line 255
    :cond_47
    div-int/lit8 p1, p1, 0xa

    .line 258
    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_7c

    if-lez p2, :cond_7c

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setPaddingForShorcutGesture()V

    .line 260
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mLeftPadding:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBottomPadding:I

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 264
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_46

    .line 269
    :cond_7c
    div-int/lit8 p1, p1, 0xa

    .line 272
    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    if-lez v1, :cond_ae

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_ae

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v1

    if-nez v1, :cond_ae

    .line 273
    iput v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 277
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_46

    .line 282
    :cond_ae
    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    if-lez v1, :cond_dd

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_dd

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v1

    if-nez v1, :cond_dd

    .line 283
    iput v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 287
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_46

    .line 292
    :cond_dd
    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 293
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_46

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWhichTip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46
.end method
