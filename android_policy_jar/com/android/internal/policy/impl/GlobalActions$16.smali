.class Lcom/android/internal/policy/impl/GlobalActions$16;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->isSimReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "unused"

    .prologue
    .line 1120
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$1400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1121
    const/4 v0, 0x0

    :try_start_6
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1502(Z)Z

    .line 1122
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1602(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1123
    monitor-exit v1

    .line 1124
    return-void

    .line 1123
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method
