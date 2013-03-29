.class public Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubicEaseInOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V
    .registers 2
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 725
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 728
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 7
    .parameter "input"

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 732
    div-float/2addr p1, v2

    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gez v1, :cond_13

    .line 733
    mul-float v1, v2, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float v0, v1, v3

    .line 737
    .local v0, r:F
    :goto_12
    return v0

    .line 735
    .end local v0           #r:F
    :cond_13
    sub-float/2addr p1, v4

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v4

    mul-float/2addr v1, v2

    add-float v0, v1, v3

    .restart local v0       #r:F
    goto :goto_12
.end method
