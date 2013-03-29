.class Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionForCaptureEffect"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .registers 4
    .parameter
    .parameter "event"

    .prologue
    .line 4953
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4951
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    .line 4954
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    .line 4955
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .parameter "name"
    .parameter "service"

    .prologue
    .line 4959
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4960
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v4, p0, :cond_d

    .line 4961
    monitor-exit v5

    .line 4989
    :goto_c
    return-void

    .line 4963
    :cond_d
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 4964
    .local v1, messenger:Landroid/os/Messenger;
    const/4 v4, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 4965
    .local v2, msg:Landroid/os/Message;
    move-object v3, p0

    .line 4966
    .local v3, myConn:Landroid/content/ServiceConnection;
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 4978
    .local v0, h:Landroid/os/Handler;
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 4979
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 4980
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 4981
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 4982
    :cond_46
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 4983
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg2:I
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_5e

    .line 4985
    :cond_59
    :try_start_59
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5c} :catch_61

    .line 4988
    :goto_5c
    :try_start_5c
    monitor-exit v5

    goto :goto_c

    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #messenger:Landroid/os/Messenger;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #myConn:Landroid/content/ServiceConnection;
    :catchall_5e
    move-exception v4

    monitor-exit v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_5e

    throw v4

    .line 4986
    .restart local v0       #h:Landroid/os/Handler;
    .restart local v1       #messenger:Landroid/os/Messenger;
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #myConn:Landroid/content/ServiceConnection;
    :catch_61
    move-exception v4

    goto :goto_5c
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 4991
    return-void
.end method
