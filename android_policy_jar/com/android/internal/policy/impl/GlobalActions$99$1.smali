.class Lcom/android/internal/policy/impl/GlobalActions$99$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$99;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$99;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$99;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$99$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$99;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    sget v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_20

    .line 291
    sget v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4d

    .line 283
    sget v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    if-eq v0, v2, :cond_2c

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$99$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$99;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$99;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    if-nez v1, :cond_21

    const/4 v1, 0x0

    :goto_1d
    invoke-static {v0, v1, v3}, Lcom/android/server/pm/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 291
    :cond_20
    :goto_20
    return-void

    .line 284
    :cond_21
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 288
    :cond_2c
    :try_start_2c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pkill"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-TERM"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "-f"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "system_server"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4a} :catch_4b

    goto :goto_20

    .line 290
    :catch_4b
    move-exception v0

    goto :goto_20

    :cond_4d
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$99$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$99;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$99;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_20
.end method
