.class public Lcom/android/internal/policy/impl/sec/CircleUnlockView;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$SineEaseInOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseInOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;,
        Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field public static final MISSED_EVENT:I = 0x0

.field public static final NORMAL_EVENT:I = -0x1


# instance fields
.field private final ARR0W_FADE_IN_OFFSET:I

.field private final ARR0W_FADE_OUT_OFFSET:I

.field private final ARROW_FADE_IN_DURATION:I

.field private final ARROW_FADE_OUT_DURATION:I

.field private final CIRCLE_CENTER_DOWN_DURATION:I

.field private final CIRCLE_CENTER_UP_DURATION:I

.field private final CIRCLE_LOOP_DURATION:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_OUT_DURATION:I

.field private final FIRST_MOVE_DURATION:I

.field private final INIT_ANGLE_CIRCLE_1:I

.field private final INIT_ANGLE_CIRCLE_2:I

.field private final INIT_ANGLE_CIRCLE_3:I

.field private final LOOP_HANDLER_WHAT:I

.field private MISSED_UNLOCK_RELEASE_MARGIN:I

.field private final SHORT_TAP_FIRST_DURATION:I

.field private final SHORT_TAP_FIRST_STARTOFF:I

.field private final SHORT_TAP_SECOND_DURATION:I

.field private final SHORT_TAP_SECOND_STARTOFF:I

.field protected TAG:Ljava/lang/String;

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private arrow:Landroid/widget/ImageView;

.field private arrowContainer:Landroid/widget/LinearLayout;

.field private arrowFadeIn:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeOut:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeSet:Landroid/view/animation/AnimationSet;

.field private circleAlphaIn1:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn2:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn3:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut1:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut2:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut3:Landroid/animation/ObjectAnimator;

.field private circleSet1:Landroid/animation/AnimatorSet;

.field private circleSet2:Landroid/animation/AnimatorSet;

.field private circleSet3:Landroid/animation/AnimatorSet;

.field private circleUpSet:Landroid/animation/AnimatorSet;

.field private circle_1:Landroid/widget/ImageView;

.field private circle_2:Landroid/widget/ImageView;

.field private circle_3:Landroid/widget/ImageView;

.field private firstMoveSet:Landroid/animation/AnimatorSet;

.field private isAnimationOn:Z

.field private isIgnoreTouch:Z

.field protected lpFrame:Landroid/widget/FrameLayout$LayoutParams;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

.field private mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

.field private mCircleInPress:Landroid/widget/ImageView;

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field protected mCircleRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mDownFirst:Z

.field private mHandlerForRepeat:Landroid/os/Handler;

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mResumedTimeMillis:J

.field private mStartLocation:I

.field mWindowHeight:I

.field mWindowWidth:I

.field protected mX:F

.field protected mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private radian:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 13
    .parameter "context"
    .parameter "callback"

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0x10b

    const-wide v4, 0x3fe19999a0000000L

    const/16 v7, 0x320

    const/4 v6, 0x0

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v2, "CircleLockScreen"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    .line 50
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_MAX_ALPHA:I

    .line 52
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v2

    if-eqz v2, :cond_aa

    :cond_23
    move-wide v2, v4

    :goto_24
    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    .line 53
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v2

    if-eqz v2, :cond_b1

    :cond_32
    :goto_32
    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    .line 60
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARROW_FADE_IN_DURATION:I

    .line 61
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARROW_FADE_OUT_DURATION:I

    .line 62
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARR0W_FADE_IN_OFFSET:I

    .line 63
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->ARR0W_FADE_OUT_OFFSET:I

    .line 65
    const/16 v2, 0x52

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_1:I

    .line 66
    const/16 v2, 0x139

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_2:I

    .line 67
    const/16 v2, 0x41

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->INIT_ANGLE_CIRCLE_3:I

    .line 69
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_CENTER_DOWN_DURATION:I

    .line 70
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_CENTER_UP_DURATION:I

    .line 72
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_FIRST_DURATION:I

    .line 73
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_FIRST_STARTOFF:I

    .line 74
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_SECOND_DURATION:I

    .line 75
    const/16 v2, 0x258

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->SHORT_TAP_SECOND_STARTOFF:I

    .line 77
    const/16 v2, 0x514

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_LOOP_DURATION:I

    .line 78
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->CIRCLE_OUT_DURATION:I

    .line 79
    const/16 v2, 0x258

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->FIRST_MOVE_DURATION:I

    .line 80
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->LOOP_HANDLER_WHAT:I

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 118
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 119
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 120
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isAnimationOn:Z

    .line 125
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 130
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    .line 133
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setLayout()V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setHandler()V

    .line 142
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setAnimation()V

    .line 144
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 146
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 147
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowWidth:I

    .line 148
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowHeight:I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 151
    return-void

    .line 52
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #mWindowManager:Landroid/view/WindowManager;
    :cond_aa
    const-wide v2, 0x3fe99999a0000000L

    goto/16 :goto_24

    .line 53
    :cond_b1
    const-wide v4, 0x3ff4ccccc0000000L

    goto/16 :goto_32
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->startCircleAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isAnimationOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private addToCircleMain()V
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    return-void
.end method

.method private createArrow()V
    .registers 3

    .prologue
    .line 198
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    const v1, 0x108046e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 202
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    return-void
.end method

.method private createArrowAnimation()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const-wide/16 v3, 0x320

    .line 283
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 287
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 291
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 311
    return-void
.end method

.method private createCircleAnimation()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x12c

    const-wide/16 v9, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_14c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_154

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 248
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_15c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_164

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 258
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_16c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_174

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 269
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 273
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    return-void

    .line 241
    :array_14c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 244
    :array_154
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 251
    :array_15c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 254
    :array_164
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 262
    :array_16c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 265
    :array_174
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createCircleCenter()V
    .registers 3

    .prologue
    .line 193
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    const v1, 0x1080471

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    return-void
.end method

.method private createCircleCenterAnimation()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x10b

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 231
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 235
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 238
    return-void
.end method

.method private createInnerCircle()V
    .registers 3

    .prologue
    .line 176
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    const v1, 0x108046f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    return-void
.end method

.method private createThreeCircles()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 181
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    const v1, 0x10803f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    const v1, 0x10803f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    const v1, 0x10803f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 190
    return-void
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .registers 7
    .parameter "value"

    .prologue
    .line 668
    const/16 v2, 0x1c

    new-array v1, v2, [I

    fill-array-data v1, :array_26

    .line 679
    .local v1, unlockscreen_lock_drawables:[I
    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_14

    .line 680
    const/4 v0, 0x0

    .line 686
    .local v0, index:I
    :goto_11
    aget v2, v1, v0

    return v2

    .line 681
    .end local v0           #index:I
    :cond_14
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1e

    .line 682
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_11

    .line 684
    .end local v0           #index:I
    :cond_1e
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_11

    .line 668
    nop

    :array_26
    .array-data 0x4
        0x71t 0x4t 0x8t 0x1t
        0x72t 0x4t 0x8t 0x1t
        0x73t 0x4t 0x8t 0x1t
        0x74t 0x4t 0x8t 0x1t
        0x75t 0x4t 0x8t 0x1t
        0x76t 0x4t 0x8t 0x1t
        0x77t 0x4t 0x8t 0x1t
        0x78t 0x4t 0x8t 0x1t
        0x79t 0x4t 0x8t 0x1t
        0x7at 0x4t 0x8t 0x1t
        0x7bt 0x4t 0x8t 0x1t
        0x7ct 0x4t 0x8t 0x1t
        0x7dt 0x4t 0x8t 0x1t
        0x7et 0x4t 0x8t 0x1t
        0x7ft 0x4t 0x8t 0x1t
        0x80t 0x4t 0x8t 0x1t
        0x81t 0x4t 0x8t 0x1t
        0x82t 0x4t 0x8t 0x1t
        0x83t 0x4t 0x8t 0x1t
        0x84t 0x4t 0x8t 0x1t
        0x85t 0x4t 0x8t 0x1t
        0x86t 0x4t 0x8t 0x1t
        0x87t 0x4t 0x8t 0x1t
        0x88t 0x4t 0x8t 0x1t
        0x89t 0x4t 0x8t 0x1t
        0x8at 0x4t 0x8t 0x1t
        0x8bt 0x4t 0x8t 0x1t
        0x8ct 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private pokeWakelockWithTimeCheck()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 632
    .local v2, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 633
    .local v0, diff:J
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    cmp-long v4, v0, v7

    if-gtz v4, :cond_37

    .line 636
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x2710

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 637
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_36
    return-void

    .line 638
    :cond_37
    cmp-long v4, v0, v7

    if-lez v4, :cond_68

    cmp-long v4, v0, v9

    if-gez v4, :cond_68

    .line 639
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 640
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 643
    :cond_68
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private setAnimation()V
    .registers 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleCenterAnimation()V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleAnimation()V

    .line 227
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createArrowAnimation()V

    .line 228
    return-void
.end method

.method private setHandler()V
    .registers 2

    .prologue
    .line 216
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method private setInnerCircle(Landroid/view/View;D)V
    .registers 7
    .parameter "v"
    .parameter "value"

    .prologue
    .line 338
    const-wide v1, 0x406fe00000000000L

    mul-double/2addr v1, p2

    double-to-int v0, v1

    .line 339
    .local v0, alpha:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_17

    const/4 v0, 0x0

    .line 340
    :goto_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 341
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 342
    return-void

    .line 339
    :cond_17
    rsub-int v0, v0, 0xff

    goto :goto_c
.end method

.method private startCircleAnimation()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 703
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 1

    .prologue
    .line 786
    return-void
.end method

.method public clearCircleAnimation()V
    .registers 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 707
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 719
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 720
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 41
    .parameter "view"
    .parameter "event"

    .prologue
    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 363
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 365
    :cond_1c
    const/16 v30, 0x0

    .line 624
    :goto_1e
    return v30

    .line 368
    :cond_1f
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isAnimationOn:Z

    .line 372
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    .line 373
    .local v26, touchedEventX:F
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 376
    .local v27, touchedEventY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    if-nez v30, :cond_51

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v30, 0x0

    goto :goto_1e

    .line 381
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v30

    if-nez v30, :cond_6b

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v30, 0x0

    goto :goto_1e

    .line 385
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    if-nez v30, :cond_85

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v30, 0x0

    goto :goto_1e

    .line 391
    :cond_85
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    packed-switch v30, :pswitch_data_668

    .line 624
    :cond_8c
    :goto_8c
    :pswitch_8c
    const/16 v30, 0x1

    goto :goto_1e

    .line 395
    :pswitch_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 398
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 399
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_ca

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    .line 407
    :cond_ca
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->pokeWakelockWithTimeCheck()V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mX:F

    .line 417
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mY:F

    .line 419
    if-eqz p1, :cond_1ce

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    move/from16 v30, v0

    sub-float v30, v30, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 423
    .local v28, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    move/from16 v30, v0

    sub-float v30, v30, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .line 434
    .local v29, yOffset:I
    :goto_158
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 439
    .local v16, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v20, v30, v28

    .line 441
    .local v20, rightMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v8, v30, v29

    .line 443
    .local v8, bottomMargin:I
    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 444
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 445
    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 446
    move-object/from16 v0, v16

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->startCircleAnimation()V

    goto/16 :goto_8c

    .line 427
    .end local v8           #bottomMargin:I
    .end local v16           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20           #rightMargin:I
    .end local v28           #xOffset:I
    .end local v29           #yOffset:I
    :cond_1ce
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 429
    .restart local v28       #xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .restart local v29       #yOffset:I
    goto/16 :goto_158

    .line 456
    .end local v28           #xOffset:I
    .end local v29           #yOffset:I
    :pswitch_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_221

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    .line 461
    :cond_221
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->pokeWakelockWithTimeCheck()V

    .line 465
    const/4 v10, 0x0

    .line 466
    .local v10, diffX:I
    const/4 v11, 0x0

    .line 467
    .local v11, diffY:I
    if-eqz p1, :cond_30f

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v17, v30, 0x2

    .line 471
    .local v17, mCircleCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    div-int/lit8 v18, v30, 0x2

    .line 472
    .local v18, mCircleCenterY:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    .line 473
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    .line 483
    .end local v17           #mCircleCenterX:I
    .end local v18           #mCircleCenterY:I
    :goto_262
    int-to-double v0, v10

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    int-to-double v0, v11

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4000

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    add-double v14, v30, v32

    .line 484
    .local v14, distance_square:D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 485
    .local v12, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_341

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v19

    .line 488
    .local v19, min:I
    :goto_29e
    div-int/lit8 v30, v19, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 489
    .local v24, threshold:D
    div-double v30, v12, v24

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    .line 494
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 495
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setInnerCircle(Landroid/view/View;D)V

    .line 497
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpg-double v30, v30, v32

    if-gez v30, :cond_34d

    .line 498
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 546
    :cond_2e2
    :goto_2e2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_8c

    .line 547
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8c

    .line 548
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 549
    if-nez p1, :cond_525

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_8c

    .line 478
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v19           #min:I
    .end local v24           #threshold:D
    :cond_30f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mX:F

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mY:F

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    goto/16 :goto_262

    .line 485
    .restart local v12       #distance:D
    .restart local v14       #distance_square:D
    :cond_341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v19

    goto/16 :goto_29e

    .line 500
    .restart local v19       #min:I
    .restart local v24       #threshold:D
    :cond_34d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpl-double v30, v30, v32

    if-lez v30, :cond_50b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_50b

    .line 502
    int-to-double v4, v10

    .line 503
    .local v4, absX:D
    mul-int/lit8 v30, v11, -0x1

    move/from16 v0, v30

    int-to-double v6, v0

    .line 504
    .local v6, absY:D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->radian:D

    .line 505
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->radian:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x400921fb54442d18L

    div-double v30, v30, v32

    const-wide v32, 0x4066800000000000L

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x42b4

    add-float v9, v30, v31

    .line 506
    .local v9, degree:F
    const/high16 v30, 0x42a4

    sub-float v21, v9, v30

    .line 507
    .local v21, targetDegree1:F
    const v30, 0x439c8000

    sub-float v22, v9, v30

    .line 508
    .local v22, targetDegree2:F
    const/high16 v30, 0x4282

    sub-float v23, v9, v30

    .line 510
    .local v23, targetDegree3:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4ce

    .line 511
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 515
    const/16 v30, 0x0

    cmpg-float v30, v21, v30

    if-gez v30, :cond_3c8

    .line 516
    const/high16 v30, 0x43b4

    add-float v21, v21, v30

    .line 517
    :cond_3c8
    const/16 v30, 0x0

    cmpg-float v30, v22, v30

    if-gez v30, :cond_3d2

    .line 518
    const/high16 v30, 0x43b4

    add-float v22, v22, v30

    .line 519
    :cond_3d2
    const/16 v30, 0x0

    cmpg-float v30, v23, v30

    if-gez v30, :cond_3dc

    .line 520
    const/high16 v30, 0x43b4

    add-float v23, v23, v30

    .line 522
    :cond_3dc
    new-instance v30, Landroid/animation/AnimatorSet;

    invoke-direct/range {v30 .. v30}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3e99999a

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v21, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/high16 v37, 0x3f00

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v22, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3f333333

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v23, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x258

    invoke-virtual/range {v30 .. v32}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    .line 536
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v30

    if-nez v30, :cond_2e2

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_2e2

    .line 542
    .end local v4           #absX:D
    .end local v6           #absY:D
    .end local v9           #degree:F
    .end local v21           #targetDegree1:F
    .end local v22           #targetDegree2:F
    .end local v23           #targetDegree3:F
    :cond_50b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_2e2

    .line 543
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDownFirst:Z

    goto/16 :goto_2e2

    .line 555
    :cond_525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8c

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_8c

    .line 564
    .end local v10           #diffX:I
    .end local v11           #diffY:I
    .end local v12           #distance:D
    .end local v14           #distance_square:D
    .end local v19           #min:I
    .end local v24           #threshold:D
    :pswitch_53c
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isIgnoreTouch:Z

    .line 570
    :pswitch_544
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->isAnimationOn:Z

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_59b

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    .line 585
    :cond_59b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_5f6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_5f6

    .line 587
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5d6

    .line 588
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 589
    if-nez p1, :cond_5e0

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 620
    :cond_5d6
    :goto_5d6
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    goto/16 :goto_8c

    .line 595
    :cond_5e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5d6

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto :goto_5d6

    .line 600
    :cond_5f6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    move/from16 v30, v0

    if-nez v30, :cond_656

    .line 601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v30, v26, v30

    if-gez v30, :cond_5d6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mWindowWidth:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->MISSED_UNLOCK_RELEASE_MARGIN:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v26, v30

    if-lez v30, :cond_5d6

    .line 602
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5d6

    .line 603
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mIsFirst:Z

    .line 604
    if-nez p1, :cond_640

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_5d6

    .line 610
    :cond_640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5d6

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto :goto_5d6

    .line 617
    :cond_656
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_5d6

    goto/16 :goto_5d6

    .line 391
    :pswitch_data_668
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_544
        :pswitch_20c
        :pswitch_544
        :pswitch_8c
        :pswitch_8c
        :pswitch_53c
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleX:F

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->originalCircleY:F

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 792
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mResumedTimeMillis:J

    .line 799
    return-void
.end method

.method public setCenterImage(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 652
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 653
    return-void
.end method

.method protected setCenterImage(Landroid/view/View;D)V
    .registers 7
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 656
    if-nez p1, :cond_d

    .line 658
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 665
    :goto_c
    return-void

    .line 661
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 662
    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 663
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 664
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_c
.end method

.method public setLayout()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 154
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->addView(Landroid/view/View;II)V

    .line 163
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->lpFrame:Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createInnerCircle()V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createThreeCircles()V

    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createCircleCenter()V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->createArrow()V

    .line 172
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->addToCircleMain()V

    .line 173
    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V
    .registers 2
    .parameter "onCircleTouchListener"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    .line 335
    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V
    .registers 2
    .parameter "onCircleUnlockListener"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 323
    return-void
.end method

.method public setStartLocation(I)V
    .registers 2
    .parameter "startLocation"

    .prologue
    .line 802
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->mStartLocation:I

    .line 803
    return-void
.end method
