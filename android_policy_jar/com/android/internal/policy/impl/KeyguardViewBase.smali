.class public abstract Lcom/android/internal/policy/impl/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# static fields
.field private static final BACKGROUND_COLOR:I = 0x70000000

.field private static final DEBUG:Z = true

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field public mLockScreenIsReady:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "KeyguardViewBase"

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .registers 4
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 62
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewBase$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mLockScreenIsReady:Z

    .line 84
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->resetBackground()V

    .line 86
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 180
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 181
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8b

    .line 182
    sparse-switch v1, :sswitch_data_9c

    .line 267
    .end local p0
    :cond_f
    :goto_f
    const/4 v3, 0x0

    :cond_10
    :goto_10
    return v3

    .line 186
    .restart local p0
    :sswitch_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_23

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 188
    :cond_23
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v4, -0x8000

    invoke-virtual {v2, p1, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_10

    .line 202
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_50

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 206
    :cond_50
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_10

    .line 217
    :cond_5c
    :sswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_10

    .line 225
    :sswitch_60
    monitor-enter p0

    .line 226
    :try_start_61
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_73

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 230
    :cond_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_61 .. :try_end_74} :catchall_80

    .line 233
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    const/16 v2, 0x18

    if-ne v1, v2, :cond_83

    move v2, v3

    :goto_7c
    invoke-virtual {v4, v5, v2}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_10

    .line 230
    :catchall_80
    move-exception v2

    :try_start_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v2

    .line 233
    :cond_83
    const/4 v2, -0x1

    goto :goto_7c

    .line 245
    :sswitch_85
    check-cast p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setGlanceViewDisable()V

    goto :goto_f

    .line 249
    .restart local p0
    :cond_8b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_f

    .line 250
    sparse-switch v1, :sswitch_data_da

    goto/16 :goto_f

    .line 262
    :sswitch_96
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_10

    .line 182
    nop

    :sswitch_data_9c
    .sparse-switch
        0x3 -> :sswitch_85
        0x18 -> :sswitch_60
        0x19 -> :sswitch_60
        0x4f -> :sswitch_5c
        0x55 -> :sswitch_3e
        0x56 -> :sswitch_5c
        0x57 -> :sswitch_5c
        0x58 -> :sswitch_5c
        0x59 -> :sswitch_5c
        0x5a -> :sswitch_5c
        0x5b -> :sswitch_11
        0x7e -> :sswitch_3e
        0x7f -> :sswitch_3e
        0x82 -> :sswitch_5c
        0xa4 -> :sswitch_60
    .end sparse-switch

    .line 250
    :sswitch_data_da
    .sparse-switch
        0x4f -> :sswitch_96
        0x55 -> :sswitch_96
        0x56 -> :sswitch_96
        0x57 -> :sswitch_96
        0x58 -> :sswitch_96
        0x59 -> :sswitch_96
        0x5a -> :sswitch_96
        0x5b -> :sswitch_96
        0x7e -> :sswitch_96
        0x7f -> :sswitch_96
        0x82 -> :sswitch_96
    .end sparse-switch
.end method

.method private shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_8

    .line 168
    :goto_7
    :pswitch_7
    return v0

    .line 161
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 168
    const/4 v0, 0x1

    goto :goto_7

    .line 161
    nop

    :pswitch_data_12
    .packed-switch 0x13
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 151
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 295
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 296
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    return-object v0
.end method

.method handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 7
    .parameter "keyEvent"

    .prologue
    .line 271
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 273
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_2a

    .line 275
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 282
    :goto_f
    return-void

    .line 276
    :catch_10
    move-exception v1

    .line 277
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardViewBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 280
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2a
    const-string v2, "KeyguardViewBase"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public isGlanceViewVisible()Z
    .registers 2

    .prologue
    .line 284
    move-object v0, p0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    if-eqz v0, :cond_c

    .line 285
    check-cast p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isGlanceScreenVisible()Z

    move-result v0

    .line 288
    :goto_b
    return v0

    .restart local p0
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isKeyguardReady()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mLockScreenIsReady:Z

    return v0
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract reset()V
.end method

.method public resetBackground()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
