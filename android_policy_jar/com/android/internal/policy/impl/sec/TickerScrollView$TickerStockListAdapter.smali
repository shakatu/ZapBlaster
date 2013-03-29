.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerStockListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    .line 686
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    .line 687
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    .line 688
    iput p3, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mLayout:I

    .line 689
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 32
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 691
    const/16 v22, 0x0

    .line 692
    .local v22, row:Landroid/view/View;
    if-nez p2, :cond_156

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 694
    .local v12, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mLayout:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 698
    .end local v12           #inflater:Landroid/view/LayoutInflater;
    :goto_22
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;

    .line 699
    .local v23, tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockName()Ljava/lang/String;

    move-result-object v18

    .line 700
    .local v18, name:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockPrice()Ljava/lang/String;

    move-result-object v19

    .line 701
    .local v19, price:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockChange()Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, change:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockChangeRate()Ljava/lang/String;

    move-result-object v21

    .line 703
    .local v21, rate:Ljava/lang/String;
    const v24, 0x102032a

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 704
    .local v16, mStockName:Landroid/widget/TextView;
    const v24, 0x102032b

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 705
    .local v17, mStockPrice:Landroid/widget/TextView;
    const v24, 0x102032d

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 706
    .local v14, mStockChange:Landroid/widget/TextView;
    const v24, 0x102032e

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 707
    .local v15, mStockChangeRate:Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 709
    .local v13, isNum:Z
    :try_start_6d
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 710
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 711
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_15a

    .line 712
    const/4 v13, 0x1

    .line 716
    :goto_77
    if-eqz v13, :cond_2dd

    .line 717
    new-instance v20, Ljava/text/DecimalFormat;

    const-string v24, "#,##0.##"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 718
    .local v20, priceFormat:Ljava/text/DecimalFormat;
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 719
    .local v11, formattedPrice:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v24, "#,##0.##"

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 720
    .local v7, changePriceFormat:Ljava/text/DecimalFormat;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 721
    .local v10, formattedChangePrice:Ljava/lang/String;
    const/4 v9, 0x0

    .line 722
    .local v9, formattedChangePercent:Ljava/lang/String;
    const-string v24, "%"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_15e

    .line 723
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v24, "0.00"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 724
    .local v5, changePercentFormat:Ljava/text/DecimalFormat;
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 725
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "%"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 729
    .end local v5           #changePercentFormat:Ljava/text/DecimalFormat;
    :goto_de
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 730
    .local v6, changePrice:Ljava/lang/Double;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v24

    if-eqz v24, :cond_1bf

    .line 731
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_162

    .line 732
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 734
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    :cond_113
    :goto_113
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    .end local v6           #changePrice:Ljava/lang/Double;
    .end local v7           #changePriceFormat:Ljava/text/DecimalFormat;
    .end local v9           #formattedChangePercent:Ljava/lang/String;
    .end local v10           #formattedChangePrice:Ljava/lang/String;
    .end local v11           #formattedPrice:Ljava/lang/String;
    .end local v20           #priceFormat:Ljava/text/DecimalFormat;
    :goto_125
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v24

    if-eqz v24, :cond_13d

    .line 784
    const v24, 0x1020329

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    const/high16 v25, -0x100

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 787
    :cond_13d
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v24

    if-eqz v24, :cond_155

    .line 788
    const v24, 0x102032c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    :cond_155
    return-object v22

    .line 696
    .end local v4           #change:Ljava/lang/String;
    .end local v13           #isNum:Z
    .end local v14           #mStockChange:Landroid/widget/TextView;
    .end local v15           #mStockChangeRate:Landroid/widget/TextView;
    .end local v16           #mStockName:Landroid/widget/TextView;
    .end local v17           #mStockPrice:Landroid/widget/TextView;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #price:Ljava/lang/String;
    .end local v21           #rate:Ljava/lang/String;
    .end local v23           #tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    :cond_156
    move-object/from16 v22, p2

    goto/16 :goto_22

    .line 713
    .restart local v4       #change:Ljava/lang/String;
    .restart local v13       #isNum:Z
    .restart local v14       #mStockChange:Landroid/widget/TextView;
    .restart local v15       #mStockChangeRate:Landroid/widget/TextView;
    .restart local v16       #mStockName:Landroid/widget/TextView;
    .restart local v17       #mStockPrice:Landroid/widget/TextView;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #price:Ljava/lang/String;
    .restart local v21       #rate:Ljava/lang/String;
    .restart local v23       #tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    :catch_15a
    move-exception v8

    .line 714
    .local v8, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    goto/16 :goto_77

    .line 727
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #changePriceFormat:Ljava/text/DecimalFormat;
    .restart local v9       #formattedChangePercent:Ljava/lang/String;
    .restart local v10       #formattedChangePrice:Ljava/lang/String;
    .restart local v11       #formattedPrice:Ljava/lang/String;
    .restart local v20       #priceFormat:Ljava/text/DecimalFormat;
    :cond_15e
    move-object/from16 v9, v21

    goto/16 :goto_de

    .line 735
    .restart local v6       #changePrice:Ljava/lang/Double;
    :cond_162
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_191

    .line 736
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 737
    const v24, 0x1080466

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 738
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_113

    .line 739
    :cond_191
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_113

    .line 740
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 741
    const v24, 0x108046c

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 742
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_113

    .line 744
    :cond_1bf
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v24

    if-eqz v24, :cond_252

    .line 745
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_1f4

    .line 746
    const v24, -0x5e5e5f

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 747
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 748
    const v24, -0x5e5e5f

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_113

    .line 749
    :cond_1f4
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_224

    .line 750
    const v24, -0xb87220

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 751
    const v24, 0x1080465

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 752
    const v24, -0xb87220

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_113

    .line 753
    :cond_224
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_113

    .line 754
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 755
    const v24, 0x108046b

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 756
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_113

    .line 759
    :cond_252
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_27f

    .line 760
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 761
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 762
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_113

    .line 763
    :cond_27f
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2ad

    .line 764
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    const v24, 0x1080464

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 766
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_113

    .line 767
    :cond_2ad
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_113

    .line 768
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 769
    const v24, 0x108046a

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 770
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_113

    .line 778
    .end local v6           #changePrice:Ljava/lang/Double;
    .end local v7           #changePriceFormat:Ljava/text/DecimalFormat;
    .end local v9           #formattedChangePercent:Ljava/lang/String;
    .end local v10           #formattedChangePrice:Ljava/lang/String;
    .end local v11           #formattedPrice:Ljava/lang/String;
    .end local v20           #priceFormat:Ljava/text/DecimalFormat;
    :cond_2dd
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_125
.end method
