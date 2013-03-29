.class final Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field private final mView:Lcom/android/internal/widget/SPenGestureView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/SPenGestureView;)V
    .registers 5
    .parameter
    .parameter "inputChannel"
    .parameter "looper"
    .parameter "view"

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 566
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 567
    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    .line 568
    return-void
.end method

.method private disableSPenGestureView(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/SPenGestureView;->isShowingGestureEffect()Z

    move-result v0

    if-nez v0, :cond_30

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->GlanceViewOn()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 580
    :cond_2f
    :goto_2f
    return-void

    .line 578
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->setPhoneWindowMangerFlag(Z)V

    goto :goto_2f
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    .line 584
    const/4 v1, 0x0

    .line 586
    .local v1, handled:Z
    :try_start_2
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_2c

    .line 587
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 589
    .local v2, motionEvent:Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    if-eqz v3, :cond_2b

    .line 590
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-eq v3, v5, :cond_1c

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2b

    .line 591
    :cond_1c
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_69

    .line 592
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_60

    move-result v3

    packed-switch v3, :pswitch_data_6e

    .line 617
    :cond_2b
    :goto_2b
    :pswitch_2b
    const/4 v1, 0x1

    .line 639
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :cond_2c
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 641
    return-void

    .line 596
    .restart local v2       #motionEvent:Landroid/view/MotionEvent;
    :pswitch_30
    :try_start_30
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v3}, Lcom/android/internal/widget/SPenGestureView;->isShowingGestureEffect()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 597
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 598
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/SPenGestureView;->setVisibility(I)V

    .line 599
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 601
    :cond_4e
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->GlanceViewOn()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/widget/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_60

    goto :goto_2b

    .line 639
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :catchall_60
    move-exception v3

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3

    .line 607
    .restart local v2       #motionEvent:Landroid/view/MotionEvent;
    :pswitch_65
    :try_start_65
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V

    goto :goto_2b

    .line 613
    :cond_69
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_60

    goto :goto_2b

    .line 592
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_30
        :pswitch_65
        :pswitch_30
        :pswitch_65
        :pswitch_2b
        :pswitch_30
        :pswitch_65
    .end packed-switch
.end method
