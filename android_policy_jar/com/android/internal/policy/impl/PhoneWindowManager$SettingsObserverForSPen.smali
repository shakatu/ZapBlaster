.class Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserverForSPen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 907
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 908
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 912
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "lock_screen_quick_note"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 914
    return-void
.end method

.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 916
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_quick_note"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 917
    .local v0, SNoteEnable:Z
    :cond_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SPenGestureView;->setDoubleTapStateBySettingMenu(Z)V

    .line 918
    return-void
.end method
