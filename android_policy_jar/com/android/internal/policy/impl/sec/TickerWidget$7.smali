.class Lcom/android/internal/policy/impl/sec/TickerWidget$7;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .registers 4

    .prologue
    .line 394
    const-string v1, "TickerWidget"

    const-string v2, "onDrawerOpened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestFocus()Z

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->tikerRippleForOpen()V

    .line 400
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x1080459

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsRefreshing:Z

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookRefreshing:Z

    if-nez v1, :cond_47

    .line 403
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :cond_47
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getCurrentPage()I

    move-result v0

    .line 411
    .local v0, currentPage:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1900(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->moveToPage(I)V

    .line 412
    return-void
.end method
