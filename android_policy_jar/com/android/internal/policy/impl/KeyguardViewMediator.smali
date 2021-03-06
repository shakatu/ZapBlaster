.class public Lcom/android/internal/policy/impl/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewMediator$5;
    }
.end annotation


# static fields
.field public static final ACTION_LOCKSCREEN_IMAGE_CHANGED:Ljava/lang/String; = "com.sec.android.gallery3d.LOCKSCREEN_IMAGE_CHANGED"

.field public static final ACTION_LOCKSCREEN_LOCK:Ljava/lang/String; = "android.intent.action.LOCKSCREEN_LOCK"

.field public static final ACTION_LOCKSCREEN_UNLOCK:Ljava/lang/String; = "android.intent.action.LOCKSCREEN_UNLOCK"

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_WAKE:Z = true

.field private static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field public static final DISABLE_KEYGUARD_FACTORY_ACTION:Ljava/lang/String; = "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field public static final PCW_LOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

.field public static final PCW_UNLOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final RESET:I = 0x4

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final TIMEOUT:I = 0x1

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field private mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field mRealPowerManager:Landroid/os/LocalPowerManager;

.field private mScreenOn:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowing:Z

.field private mShowingLockIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextUnLockSound:Z

.field private mSystemReady:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnlockSoundId:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentIntent:Landroid/content/Intent;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .registers 15
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 258
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 284
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 931
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 943
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 1214
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 300
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 302
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    .line 303
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "show keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 316
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v0, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v0, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v0, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v0, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 328
    const-string v0, "com.sec.android.gallery3d.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    :cond_ac
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 334
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 336
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 338
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 339
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    .line 342
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 351
    .local v6, cr:Landroid/content/ContentResolver;
    const-string v0, "show_status_bar_lock"

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1ba

    const/4 v0, 0x1

    :goto_10a
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    .line 353
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 354
    const-string v0, "lock_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 355
    .local v9, soundPath:Ljava/lang/String;
    if-eqz v9, :cond_127

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    .line 358
    :cond_127
    if-eqz v9, :cond_12d

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    if-nez v0, :cond_145

    .line 359
    :cond_12d
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_145
    const-string v0, "unlock_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 362
    if-eqz v9, :cond_156

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    .line 365
    :cond_156
    if-eqz v9, :cond_15c

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v0, :cond_174

    .line 366
    :cond_15c
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 370
    .local v8, lockSoundDefaultAttenuation:I
    const-wide/high16 v0, 0x4024

    div-int/lit8 v2, v8, 0x14

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundVolume:F

    .line 371
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v10, userFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 380
    return-void

    .line 351
    .end local v8           #lockSoundDefaultAttenuation:I
    .end local v9           #soundPath:Ljava/lang/String;
    .end local v10           #userFilter:Landroid/content/IntentFilter;
    :cond_1ba
    const/4 v0, 0x0

    goto/16 :goto_10a
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method private adjustLocked(Z)V
    .registers 5
    .parameter "status"

    .prologue
    .line 1415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1416
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1417
    const-string v1, "KeyguardViewMediator"

    const-string v2, "1. ADB is on in the engineer mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :goto_1a
    return-void

    .line 1420
    :cond_1b
    if-nez p1, :cond_3e

    .line 1422
    const-string v1, "KeyguardViewMediator"

    const-string v2, "2. Lockscreen lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const-string v1, "android.intent.action.LOCKSCREEN_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    :goto_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1430
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Phone is boot completed. so can broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1a

    .line 1426
    :cond_3e
    const-string v1, "KeyguardViewMediator"

    const-string v2, "3. Lockscreen unlock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const-string v1, "android.intent.action.LOCKSCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_29

    .line 1433
    :cond_4b
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private adjustStatusBarLocked()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1449
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_11

    .line 1450
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1453
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_1d

    .line 1454
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Could not get status bar manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :goto_1c
    return-void

    .line 1456
    :cond_1d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v2, :cond_45

    .line 1458
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_b9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 1459
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v2, :cond_45

    .line 1460
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, 0x1040638

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, contentDescription:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    const v4, 0x10806b8

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1465
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1477
    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    .line 1478
    .local v1, flags:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_64

    .line 1480
    const/high16 v2, 0x120

    or-int/2addr v1, v2

    .line 1481
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_57

    sget-boolean v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v2, :cond_c8

    .line 1485
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_64

    sget-boolean v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_64

    .line 1487
    const/high16 v2, 0x8

    or-int/2addr v1, v2

    .line 1492
    :cond_64
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v2, :cond_b2

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1493
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHidden="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSecure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_b2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_1c

    .line 1468
    .end local v1           #flags:I
    :cond_b9
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v2, :cond_45

    .line 1469
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1470
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    goto/16 :goto_45

    .line 1483
    .restart local v1       #flags:I
    :cond_c8
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    goto :goto_57
.end method

.method private adjustUserActivityLocked()V
    .registers 5

    .prologue
    .line 1439
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustUserActivityLocked mShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eqz v1, :cond_3e

    :cond_2e
    const/4 v0, 0x1

    .line 1441
    .local v0, enabled:Z
    :goto_2f
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->enableUserActivity(Z)V

    .line 1442
    if-nez v0, :cond_3d

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v1, :cond_3d

    .line 1444
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1446
    :cond_3d
    return-void

    .line 1440
    .end local v0           #enabled:Z
    :cond_3e
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private doKeyguardLocked()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 713
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v7, :cond_e

    .line 714
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because externally disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_d
    return-void

    .line 729
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 730
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because it is already showing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 734
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    .line 735
    .local v0, isfactoryMode:Z
    if-eqz v0, :cond_2c

    .line 736
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because factory mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 741
    :cond_2c
    const-string v7, "keyguard.no_require_sim"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_5e

    move v3, v5

    .line 743
    .local v3, requireSim:Z
    :goto_35
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    .line 744
    .local v2, provisioned:Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    .line 745
    .local v4, state:Lcom/android/internal/telephony/IccCard$State;
    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v7

    if-nez v7, :cond_51

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v7, :cond_4f

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v7, :cond_60

    :cond_4f
    if-eqz v3, :cond_60

    :cond_51
    move v1, v5

    .line 750
    .local v1, lockedOrMissing:Z
    :goto_52
    if-nez v1, :cond_62

    if-nez v2, :cond_62

    .line 751
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v1           #lockedOrMissing:Z
    .end local v2           #provisioned:Z
    .end local v3           #requireSim:Z
    .end local v4           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5e
    move v3, v6

    .line 741
    goto :goto_35

    .restart local v2       #provisioned:Z
    .restart local v3       #requireSim:Z
    .restart local v4       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_60
    move v1, v6

    .line 745
    goto :goto_52

    .line 756
    .restart local v1       #lockedOrMissing:Z
    :cond_62
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v6

    if-eqz v6, :cond_74

    if-nez v1, :cond_74

    .line 757
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 761
    :cond_74
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isLockScreenInvisibleByForce()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 762
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing for other reasons, for example demo version S/W."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 766
    :cond_82
    const-string v6, "KeyguardViewMediator"

    const-string v7, "doKeyguard: showing the lock screen"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 769
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    goto/16 :goto_d
.end method

.method private handleHide()V
    .registers 3

    .prologue
    .line 1389
    monitor-enter p0

    .line 1390
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1392
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    monitor-exit p0

    .line 1412
    :goto_18
    return-void

    .line 1398
    :cond_19
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1399
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    if-eqz v0, :cond_2e

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    .line 1405
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V

    .line 1406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1407
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1408
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1409
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1410
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustLocked(Z)V

    .line 1411
    monitor-exit p0

    goto :goto_18

    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private handleKeyguardDone(Z)V
    .registers 6
    .parameter "wakeup"

    .prologue
    .line 1268
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    .line 1270
    if-eqz p1, :cond_16

    .line 1271
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1273
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1276
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1277
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Phone is boot completed. so can broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1284
    :goto_31
    return-void

    .line 1280
    :cond_32
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private handleKeyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 1291
    monitor-enter p0

    .line 1293
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_19

    .line 1294
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1296
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1301
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1303
    :cond_19
    monitor-exit p0

    .line 1304
    return-void

    .line 1303
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .registers 3

    .prologue
    .line 1559
    monitor-enter p0

    .line 1560
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1562
    monitor-exit p0

    .line 1563
    return-void

    .line 1562
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .registers 4
    .parameter "showListener"

    .prologue
    .line 1570
    monitor-enter p0

    .line 1571
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 1573
    monitor-exit p0

    .line 1574
    return-void

    .line 1573
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleReset()V
    .registers 3

    .prologue
    .line 1535
    monitor-enter p0

    .line 1536
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->reset()V

    .line 1538
    monitor-exit p0

    .line 1539
    return-void

    .line 1538
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleSetHidden(Z)V
    .registers 3
    .parameter "isHidden"

    .prologue
    .line 677
    monitor-enter p0

    .line 678
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_10

    .line 679
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    .line 680
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 681
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 682
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 684
    :cond_10
    monitor-exit p0

    .line 685
    return-void

    .line 684
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private handleShow()V
    .registers 3

    .prologue
    .line 1362
    monitor-enter p0

    .line 1363
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_e

    monitor-exit p0

    .line 1382
    :goto_d
    return-void

    .line 1367
    :cond_e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    .line 1369
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    .line 1370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1371
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1372
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1373
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustLocked(Z)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_37

    .line 1376
    :try_start_27
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_3a

    .line 1380
    :goto_30
    :try_start_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1381
    monitor-exit p0

    goto :goto_d

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_37

    throw v0

    .line 1377
    :catch_3a
    move-exception v0

    goto :goto_30
.end method

.method private handleTimeout(I)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 1313
    monitor-enter p0

    .line 1314
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    if-ne p1, v0, :cond_11

    .line 1316
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1318
    :cond_11
    monitor-exit p0

    .line 1319
    return-void

    .line 1318
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private handleVerifyUnlock()V
    .registers 3

    .prologue
    .line 1546
    monitor-enter p0

    .line 1547
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->verifyUnlock()V

    .line 1549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1550
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1551
    monitor-exit p0

    .line 1552
    return-void

    .line 1551
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private handleWakeWhenReady(I)V
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 1507
    monitor-enter p0

    .line 1508
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1514
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1522
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1524
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1525
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mWakeLock not held in mKeyguardViewManager.wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_45
    monitor-exit p0

    .line 1528
    return-void

    .line 1527
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_47

    throw v0
.end method

.method private hideLocked()V
    .registers 4

    .prologue
    .line 851
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 853
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 854
    return-void
.end method

.method private isFactoryMode()Z
    .registers 8

    .prologue
    .line 1579
    const/4 v2, 0x0

    .line 1580
    .local v2, isFactoryMode:Z
    const/4 v3, 0x0

    .line 1581
    .local v3, valueShouldShutDown:I
    const/4 v1, 0x0

    .line 1584
    .local v1, imeiBlocked:Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 1585
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 1586
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Factory mode is enabled by Case #1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const/4 v2, 0x1

    .line 1592
    :cond_1d
    if-nez v2, :cond_35

    .line 1593
    const-string v4, "999999999999999"

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1594
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Factory mode is enabled by Case #2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v2, 0x1

    .line 1600
    :cond_35
    if-nez v2, :cond_56

    .line 1602
    :try_start_37
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/factorymode"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_44} :catch_57

    move-result-object v1

    .line 1608
    :goto_45
    if-eqz v1, :cond_62

    const-string v4, "ON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1609
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Not factory mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_56
    :goto_56
    return v2

    .line 1603
    :catch_57
    move-exception v0

    .line 1604
    .local v0, e:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 1605
    const-string v4, "KeyguardViewMediator"

    const-string v5, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 1611
    .end local v0           #e:Ljava/io/IOException;
    :cond_62
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Factory mode is enabled by Case #3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/4 v2, 0x1

    goto :goto_56
.end method

.method private isWakeKeyWhenKeyguardShowing(IZ)Z
    .registers 8
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    sparse-switch p1, :sswitch_data_1e

    move p2, v2

    .line 1111
    .end local p2
    :goto_6
    :sswitch_6
    return p2

    .restart local p2
    :sswitch_7
    move p2, v1

    .line 1096
    goto :goto_6

    :sswitch_9
    move p2, v1

    .line 1101
    goto :goto_6

    .line 1105
    :sswitch_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1106
    .local v0, cameraSpecialized:Z
    if-eqz v0, :cond_1c

    move p2, v2

    .line 1107
    goto :goto_6

    :cond_1c
    move p2, v1

    .line 1109
    goto :goto_6

    .line 1075
    :sswitch_data_1e
    .sparse-switch
        0x18 -> :sswitch_6
        0x19 -> :sswitch_6
        0x1b -> :sswitch_b
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_7
        0x57 -> :sswitch_7
        0x58 -> :sswitch_7
        0x59 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_7
        0x7e -> :sswitch_7
        0x7f -> :sswitch_7
        0x82 -> :sswitch_7
        0xa4 -> :sswitch_6
        0xa8 -> :sswitch_6
        0xa9 -> :sswitch_6
        0xef -> :sswitch_9
        0xf0 -> :sswitch_9
    .end sparse-switch
.end method

.method private notifyScreenOffLocked()V
    .registers 3

    .prologue
    .line 798
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 800
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .registers 5
    .parameter "showListener"

    .prologue
    .line 808
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOnLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 810
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 811
    return-void
.end method

.method private onUserRemoved(I)V
    .registers 3
    .parameter "userId"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 929
    return-void
.end method

.method private onUserSwitched(I)V
    .registers 3
    .parameter "userId"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 922
    monitor-enter p0

    .line 923
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    .line 924
    monitor-exit p0

    .line 925
    return-void

    .line 924
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private playSounds(Z)V
    .registers 10
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1324
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_9

    .line 1325
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1347
    :cond_8
    :goto_8
    return-void

    .line 1329
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1330
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1331
    if-eqz p1, :cond_57

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    .line 1334
    .local v1, whichSound:I
    :goto_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1336
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_3e

    .line 1337
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1338
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_8

    .line 1339
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mMasterStreamType:I

    .line 1342
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1344
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_8

    .line 1331
    .end local v1           #whichSound:I
    :cond_57
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1b
.end method

.method private resetStateLocked()V
    .registers 4

    .prologue
    .line 777
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 779
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 780
    return-void
.end method

.method private showLocked()V
    .registers 4

    .prologue
    .line 839
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 842
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 843
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    return-void
.end method

.method private updateActivityLockScreenState()V
    .registers 3

    .prologue
    .line 1351
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_13

    .line 1355
    :goto_10
    return-void

    .line 1351
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 1353
    :catch_13
    move-exception v0

    goto :goto_10
.end method

.method private verifyUnlockLocked()V
    .registers 3

    .prologue
    .line 787
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 789
    return-void
.end method

.method private wakeWhenReadyLocked(I)V
    .registers 6
    .parameter "keyCode"

    .prologue
    .line 821
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeWhenReadyLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 830
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 831
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 832
    return-void
.end method


# virtual methods
.method public doKeyguardTimeout()V
    .registers 4

    .prologue
    const/16 v2, 0xd

    .line 692
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 694
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 695
    return-void
.end method

.method public isGlanceViewVisible()Z
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    if-eqz v0, :cond_b

    .line 656
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isGlanceViewVisible()Z

    move-result v0

    .line 659
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isInputRestricted()Z
    .registers 2

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isKeyguardReady()Z
    .registers 2

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    if-eqz v0, :cond_b

    .line 1624
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isKeyguardReady()Z

    move-result v0

    .line 1626
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isWakeKeyWhenKeyguardHiding(IZ)Z
    .registers 4
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    .line 1063
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(IZ)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .registers 3
    .parameter "authenticated"

    .prologue
    .line 1169
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 1170
    return-void
.end method

.method public keyguardDone(ZZ)V
    .registers 9
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1173
    monitor-enter p0

    .line 1174
    const v3, 0x11170

    const/4 v4, 0x2

    :try_start_7
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1175
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1177
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_56

    :goto_32
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1178
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1180
    if-eqz p1, :cond_40

    .line 1181
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->clearFailedAttempts()V

    .line 1184
    :cond_40
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_54

    .line 1185
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1188
    if-eqz p1, :cond_54

    .line 1191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1195
    :cond_54
    monitor-exit p0

    .line 1196
    return-void

    :cond_56
    move v1, v2

    .line 1177
    goto :goto_32

    .line 1195
    .end local v0           #msg:Landroid/os/Message;
    :catchall_58
    move-exception v1

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public keyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1205
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .registers 32
    .parameter "why"

    .prologue
    .line 400
    monitor-enter p0

    .line 401
    const/16 v26, 0x0

    :try_start_3
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 402
    const-string v26, "KeyguardViewMediator"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onScreenTurnedOff("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v26

    if-nez v26, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v26

    if-nez v26, :cond_73

    :cond_43
    const/4 v14, 0x1

    .line 410
    .local v14, lockImmediately:Z
    :goto_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v26, v0

    if-eqz v26, :cond_75

    .line 411
    const-string v26, "KeyguardViewMediator"

    const-string v27, "pending exit secure callback cancelled"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 413
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    move/from16 v26, v0

    if-nez v26, :cond_71

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    .line 538
    :cond_71
    :goto_71
    monitor-exit p0

    .line 539
    return-void

    .line 407
    .end local v14           #lockImmediately:Z
    :cond_73
    const/4 v14, 0x0

    goto :goto_44

    .line 417
    .restart local v14       #lockImmediately:Z
    :cond_75
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    move/from16 v26, v0

    if-eqz v26, :cond_8b

    sget-boolean v26, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v26, :cond_8b

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_71

    .line 538
    .end local v14           #lockImmediately:Z
    :catchall_88
    move-exception v26

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v26

    .line 420
    .restart local v14       #lockImmediately:Z
    :cond_8b
    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-eq v0, v1, :cond_9d

    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_2b9

    if-nez v14, :cond_2b9

    .line 427
    :cond_9d
    :try_start_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 430
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v26, "screen_off_timeout"

    const/16 v27, 0x7530

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    int-to-long v6, v0

    .line 434
    .local v6, displayTimeout:J
    const-string v26, "lock_screen_lock_after_timeout"

    const/16 v27, 0x1388

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    int-to-long v12, v0

    .line 439
    .local v12, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v15

    .line 443
    .local v15, policyTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "enterprise_policy"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 445
    .local v8, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/PasswordPolicy;->getPasswordLockDelay()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 446
    .local v22, unlock_delay:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "lockscreen.password_type"

    const-wide/16 v28, 0x0

    invoke-static/range {v26 .. v29}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    .line 448
    .local v17, pwdTypeKey:J
    move-wide v9, v12

    .line 449
    .local v9, final_delay:J
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "lock_pattern_autolock"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_124

    const-wide/32 v26, 0x20000

    cmp-long v26, v17, v26

    if-ltz v26, :cond_134

    :cond_124
    const-wide/16 v26, 0x0

    cmp-long v26, v22, v26

    if-ltz v26, :cond_134

    .line 452
    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v22

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 455
    :cond_134
    const-wide/16 v26, 0x0

    cmp-long v26, v15, v26

    if-lez v26, :cond_1c8

    .line 457
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 458
    sub-long v26, v15, v6

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 461
    .local v20, timeout:J
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->useIndependentLockTimeout()Z

    move-result v26

    if-eqz v26, :cond_179

    .line 462
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_1af

    .line 463
    move-wide v0, v15

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 474
    :cond_15d
    :goto_15d
    const-string v26, "KeyguardViewMediator"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "timeout="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_179
    :goto_179
    const-wide/16 v26, 0x0

    cmp-long v26, v20, v26

    if-gtz v26, :cond_227

    .line 501
    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_18f

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 503
    :cond_18f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    move/from16 v26, v0

    if-eqz v26, :cond_222

    sget-boolean v26, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v26, :cond_222

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v26

    if-eqz v26, :cond_222

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto/16 :goto_71

    .line 464
    :cond_1af
    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_15d

    .line 465
    cmp-long v26, v15, v6

    if-gtz v26, :cond_1be

    .line 466
    const-wide/16 v20, 0x0

    goto :goto_15d

    .line 468
    :cond_1be
    cmp-long v26, v15, v9

    if-lez v26, :cond_1c5

    .line 469
    sub-long v20, v9, v6

    goto :goto_15d

    .line 471
    :cond_1c5
    sub-long v20, v15, v6

    goto :goto_15d

    .line 478
    .end local v20           #timeout:J
    :cond_1c8
    move-wide/from16 v20, v9

    .line 480
    .restart local v20       #timeout:J
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->useIndependentLockTimeout()Z

    move-result v26

    if-eqz v26, :cond_179

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v26

    if-eqz v26, :cond_20c

    .line 482
    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_1ee

    .line 483
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 484
    sub-long v20, v9, v6

    .line 493
    :cond_1ee
    :goto_1ee
    const-string v26, "KeyguardViewMediator"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "timeout="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    .line 487
    :cond_20c
    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_217

    .line 488
    const-wide/16 v20, 0x1388

    goto :goto_1ee

    .line 489
    :cond_217
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_1ee

    .line 490
    const-wide/16 v20, 0x0

    goto :goto_1ee

    .line 507
    :cond_222
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_71

    .line 512
    :cond_227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    add-long v24, v26, v20

    .line 513
    .local v24, when:J
    new-instance v11, Landroid/content/Intent;

    const-string v26, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v11, intent:Landroid/content/Intent;
    const-string v26, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/high16 v28, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 517
    .local v19, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-wide/from16 v2, v24

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 518
    const-string v26, "KeyguardViewMediator"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->swipeLockBeforeTimeout()Z

    move-result v26

    if-eqz v26, :cond_71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v26

    if-eqz v26, :cond_71

    .line 523
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2b0

    sget-boolean v26, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v26, :cond_2b0

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto/16 :goto_71

    .line 527
    :cond_2b0
    const/16 v26, 0x1

    sput-boolean v26, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_71

    .line 533
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #displayTimeout:J
    .end local v8           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9           #final_delay:J
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #lockAfterTimeout:J
    .end local v15           #policyTimeout:J
    .end local v17           #pwdTypeKey:J
    .end local v19           #sender:Landroid/app/PendingIntent;
    .end local v20           #timeout:J
    .end local v22           #unlock_delay:J
    .end local v24           #when:J
    :cond_2b9
    const/16 v26, 0x4

    move/from16 v0, p1

    move/from16 v1, v26

    if-eq v0, v1, :cond_71

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_2c4
    .catchall {:try_start_9d .. :try_end_2c4} :catchall_88

    goto/16 :goto_71
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .registers 5
    .parameter "showListener"

    .prologue
    .line 545
    monitor-enter p0

    .line 546
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 547
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 548
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eqz p1, :cond_29

    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 552
    :cond_29
    monitor-exit p0

    .line 553
    return-void

    .line 552
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 5
    .parameter "simState"

    .prologue
    .line 858
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_94

    .line 914
    :goto_23
    return-void

    .line 864
    :pswitch_24
    monitor-enter p0

    .line 865
    :try_start_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_42

    .line 867
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    .line 875
    :cond_3d
    :goto_3d
    monitor-exit p0

    goto :goto_23

    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    throw v0

    .line 872
    :cond_42
    :try_start_42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    goto :goto_3d

    .line 881
    :pswitch_46
    monitor-enter p0

    .line 882
    :try_start_47
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 883
    const-string v0, "KeyguardViewMediator"

    const-string v1, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing, we need to show keyguard so user can enter their sim pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    .line 891
    :goto_57
    monitor-exit p0

    goto :goto_23

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_47 .. :try_end_5b} :catchall_59

    throw v0

    .line 887
    :cond_5c
    :try_start_5c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    .line 889
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_59

    goto :goto_57

    .line 894
    :pswitch_63
    monitor-enter p0

    .line 895
    :try_start_64
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_79

    .line 896
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    .line 904
    :goto_74
    monitor-exit p0

    goto :goto_23

    :catchall_76
    move-exception v0

    monitor-exit p0
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_76

    throw v0

    .line 900
    :cond_79
    :try_start_79
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_76

    goto :goto_74

    .line 907
    :pswitch_84
    monitor-enter p0

    .line 908
    :try_start_85
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 909
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    .line 911
    :cond_8e
    monitor-exit p0

    goto :goto_23

    :catchall_90
    move-exception v0

    monitor-exit p0
    :try_end_92
    .catchall {:try_start_85 .. :try_end_92} :catchall_90

    throw v0

    .line 860
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_24
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_63
        :pswitch_84
    .end packed-switch
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    .line 389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    .line 390
    monitor-exit p0

    .line 391
    return-void

    .line 390
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    .line 1048
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeKeyWhenKeyguardShowing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(IZ)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1054
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    .line 1055
    const/4 v0, 0x1

    .line 1057
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public onWakeMotionWhenKeyguardShowingTq()Z
    .registers 3

    .prologue
    .line 1127
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onWakeMotionWhenKeyguardShowing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    .line 1133
    const/4 v0, 0x1

    return v0
.end method

.method public pokeWakelock()V
    .registers 2

    .prologue
    .line 1142
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 1143
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .parameter "holdMs"

    .prologue
    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v1, :cond_e

    .line 1150
    const-string v1, "KeyguardViewMediator"

    const-string v2, "pokeWakelock canceled by the showing condition"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    monitor-exit p0

    .line 1161
    :goto_d
    return-void

    .line 1154
    :cond_e
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1156
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    .line 1158
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1159
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1160
    monitor-exit p0

    goto :goto_d

    .end local v0           #msg:Landroid/os/Message;
    :catchall_4f
    move-exception v1

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public setHidden(Z)V
    .registers 8
    .parameter "isHidden"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x0

    .line 667
    const-string v1, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHidden "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2f

    const/4 v1, 0x1

    :goto_25
    invoke-virtual {v3, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 670
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 671
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_2f
    move v1, v2

    .line 669
    goto :goto_25
.end method

.method public setKeyguardEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    .line 561
    monitor-enter p0

    .line 562
    :try_start_1
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 567
    if-nez p1, :cond_46

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_46

    .line 568
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_34

    .line 569
    const-string v1, "KeyguardViewMediator"

    const-string v2, "in process of verifyUnlock request, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    monitor-exit p0

    .line 612
    :goto_33
    return-void

    .line 576
    :cond_34
    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 579
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    .line 611
    :cond_41
    :goto_41
    monitor-exit p0

    goto :goto_33

    :catchall_43
    move-exception v1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    throw v1

    .line 580
    :cond_46
    if-eqz p1, :cond_41

    :try_start_48
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_41

    .line 582
    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 586
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_6e

    .line 587
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 590
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_41

    .line 592
    :cond_6e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 593
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 599
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 600
    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_87
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_89
    .catchall {:try_start_48 .. :try_end_89} :catchall_43

    if-eqz v1, :cond_98

    .line 603
    :try_start_8b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_87

    .line 604
    :catch_8f
    move-exception v0

    .line 605
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_87

    .line 608
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_98
    const-string v1, "KeyguardViewMediator"

    const-string v2, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_43

    goto :goto_41
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 618
    monitor-enter p0

    .line 619
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 622
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 637
    :goto_1b
    monitor-exit p0

    .line 638
    return-void

    .line 624
    :cond_1d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_30

    .line 628
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_1b

    .line 637
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v0

    .line 630
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_39

    .line 632
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_1b

    .line 634
    :cond_39
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 635
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_2d

    goto :goto_1b
.end method
