.class public Landroid/support/constraint/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1869
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1355
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1360
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1365
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1370
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1375
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1380
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1385
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1390
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1395
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1400
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1405
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1410
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1415
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1420
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1425
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1430
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1435
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1440
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1445
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1450
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1455
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1460
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1465
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1470
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1475
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1480
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1485
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1491
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1497
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1509
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1521
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1532
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1543
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1549
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1555
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1561
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1567
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1573
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1579
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1581
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1584
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1585
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1587
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1588
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1590
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1591
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1592
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1593
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1594
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1595
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1596
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1598
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1870
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1662
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1355
    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1360
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1365
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1370
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1375
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1380
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1385
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1390
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1395
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1400
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1405
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1410
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1415
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1420
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1425
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1430
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1435
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1440
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1445
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1450
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1455
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1460
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1465
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1470
    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1475
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1480
    const/4 v3, 0x0

    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1485
    const/4 v4, 0x1

    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1491
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1497
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1509
    const/4 v5, 0x0

    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1521
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1532
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1543
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1549
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1555
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1561
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1567
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1573
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1579
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1581
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1584
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1585
    iput-boolean v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1587
    iput-boolean v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1588
    iput-boolean v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1590
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1591
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1592
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1593
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1594
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1595
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1596
    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1598
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1664
    sget-object v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1665
    .local v8, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    .line 1666
    .local v9, "N":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_40

    .line 1667
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v11

    .line 1668
    .local v11, "attr":I
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toLeftOf:I

    if-ne v11, v0, :cond_1

    .line 1669
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1670
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v0, v2, :cond_0

    .line 1671
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1670
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1673
    :cond_1
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toRightOf:I

    if-ne v11, v0, :cond_3

    .line 1674
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1675
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v0, v2, :cond_2

    .line 1676
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1675
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1678
    :cond_3
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toLeftOf:I

    if-ne v11, v0, :cond_5

    .line 1679
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1680
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v0, v2, :cond_4

    .line 1681
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1680
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1683
    :cond_5
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toRightOf:I

    if-ne v11, v0, :cond_7

    .line 1684
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1685
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v0, v2, :cond_6

    .line 1686
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1685
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1688
    :cond_7
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toTopOf:I

    if-ne v11, v0, :cond_9

    .line 1689
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1690
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v0, v2, :cond_8

    .line 1691
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1690
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1693
    :cond_9
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toBottomOf:I

    if-ne v11, v0, :cond_b

    .line 1694
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1695
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v0, v2, :cond_a

    .line 1696
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1695
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1698
    :cond_b
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toTopOf:I

    if-ne v11, v0, :cond_d

    .line 1699
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1700
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v0, v2, :cond_c

    .line 1701
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1700
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1703
    :cond_d
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toBottomOf:I

    if-ne v11, v0, :cond_f

    .line 1704
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1705
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v0, v2, :cond_e

    .line 1706
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1705
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1708
    :cond_f
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf:I

    if-ne v11, v0, :cond_11

    .line 1709
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1710
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v0, v2, :cond_10

    .line 1711
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1710
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1713
    :cond_11
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteX:I

    if-ne v11, v0, :cond_12

    .line 1714
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1715
    :cond_12
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteY:I

    if-ne v11, v0, :cond_13

    .line 1716
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1717
    :cond_13
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_begin:I

    if-ne v11, v0, :cond_14

    .line 1718
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1719
    :cond_14
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_end:I

    if-ne v11, v0, :cond_15

    .line 1720
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1721
    :cond_15
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_percent:I

    if-ne v11, v0, :cond_16

    .line 1722
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1723
    :cond_16
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    if-ne v11, v0, :cond_17

    .line 1724
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1725
    :cond_17
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toEndOf:I

    if-ne v11, v0, :cond_19

    .line 1726
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1727
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v0, v2, :cond_18

    .line 1728
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1727
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1730
    :cond_19
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toStartOf:I

    if-ne v11, v0, :cond_1b

    .line 1731
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1732
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v0, v2, :cond_1a

    .line 1733
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1732
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1735
    :cond_1b
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toStartOf:I

    if-ne v11, v0, :cond_1d

    .line 1736
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1737
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v0, v2, :cond_1c

    .line 1738
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1737
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1740
    :cond_1d
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toEndOf:I

    if-ne v11, v0, :cond_1f

    .line 1741
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1742
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v0, v2, :cond_1e

    .line 1743
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1742
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1745
    :cond_1f
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginLeft:I

    if-ne v11, v0, :cond_20

    .line 1746
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1747
    :cond_20
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginTop:I

    if-ne v11, v0, :cond_21

    .line 1748
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1749
    :cond_21
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginRight:I

    if-ne v11, v0, :cond_22

    .line 1750
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1751
    :cond_22
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginBottom:I

    if-ne v11, v0, :cond_23

    .line 1752
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1753
    :cond_23
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginStart:I

    if-ne v11, v0, :cond_24

    .line 1754
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1755
    :cond_24
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginEnd:I

    if-ne v11, v0, :cond_25

    .line 1756
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1757
    :cond_25
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_bias:I

    if-ne v11, v0, :cond_26

    .line 1758
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1759
    :cond_26
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_bias:I

    if-ne v11, v0, :cond_27

    .line 1760
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1761
    :cond_27
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintDimensionRatio:I

    if-ne v11, v0, :cond_31

    .line 1762
    invoke-virtual {v8, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1763
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1764
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1765
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 1766
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    .line 1767
    .local v12, "len":I
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v13, 0x2c

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1768
    .local v0, "commaIndex":I
    if-lez v0, :cond_2a

    add-int/lit8 v13, v12, -0x1

    if-ge v0, v13, :cond_2a

    .line 1769
    iget-object v13, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v13, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1770
    .local v13, "dimension":Ljava/lang/String;
    const-string v14, "W"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 1771
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto :goto_1

    .line 1772
    :cond_28
    const-string v14, "H"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 1773
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1775
    :cond_29
    :goto_1
    nop

    .end local v13    # "dimension":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1776
    move v13, v0

    goto :goto_2

    .line 1777
    :cond_2a
    const/4 v0, 0x0

    move v13, v0

    .line 1779
    .end local v0    # "commaIndex":I
    .local v13, "commaIndex":I
    :goto_2
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v14, 0x3a

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 1780
    .local v14, "colonIndex":I
    if-ltz v14, :cond_2e

    add-int/lit8 v0, v12, -0x1

    if-ge v14, v0, :cond_2e

    .line 1781
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1782
    .local v15, "nominator":Ljava/lang/String;
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1783
    .local v2, "denominator":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    .line 1785
    :try_start_0
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1786
    .local v0, "nominatorValue":F
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 1787
    .local v16, "denominatorValue":F
    cmpl-float v17, v0, v3

    if-lez v17, :cond_2c

    cmpl-float v17, v16, v3

    if-lez v17, :cond_2c

    .line 1788
    iget v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    if-ne v5, v4, :cond_2b

    .line 1789
    div-float v5, v16, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    goto :goto_3

    .line 1791
    :cond_2b
    div-float v5, v0, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    .end local v0    # "nominatorValue":F
    .end local v16    # "denominatorValue":F
    :cond_2c
    :goto_3
    goto :goto_4

    .line 1794
    :catch_0
    move-exception v0

    .line 1798
    .end local v2    # "denominator":Ljava/lang/String;
    .end local v15    # "nominator":Ljava/lang/String;
    :cond_2d
    :goto_4
    goto :goto_5

    .line 1799
    :cond_2e
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1800
    .local v2, "r":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 1802
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1805
    goto :goto_5

    .line 1803
    :catch_1
    move-exception v0

    .line 1808
    .end local v2    # "r":Ljava/lang/String;
    .end local v12    # "len":I
    .end local v13    # "commaIndex":I
    .end local v14    # "colonIndex":I
    :cond_2f
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1765
    :cond_30
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1809
    :cond_31
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_weight:I

    if-ne v11, v0, :cond_32

    .line 1810
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1811
    :cond_32
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_weight:I

    if-ne v11, v0, :cond_33

    .line 1812
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1813
    :cond_33
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle:I

    if-ne v11, v0, :cond_34

    .line 1814
    const/4 v2, 0x0

    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    goto/16 :goto_6

    .line 1815
    :cond_34
    const/4 v2, 0x0

    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_chainStyle:I

    if-ne v11, v0, :cond_35

    .line 1816
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    goto/16 :goto_6

    .line 1817
    :cond_35
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_default:I

    if-ne v11, v0, :cond_36

    .line 1818
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    goto :goto_6

    .line 1819
    :cond_36
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_default:I

    if-ne v11, v0, :cond_37

    .line 1820
    invoke-virtual {v8, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    goto :goto_6

    .line 1821
    :cond_37
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_min:I

    if-ne v11, v0, :cond_38

    .line 1822
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    goto :goto_6

    .line 1823
    :cond_38
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_max:I

    if-ne v11, v0, :cond_39

    .line 1824
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    goto :goto_6

    .line 1825
    :cond_39
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_min:I

    if-ne v11, v0, :cond_3a

    .line 1826
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    goto :goto_6

    .line 1827
    :cond_3a
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_max:I

    if-ne v11, v0, :cond_3b

    .line 1828
    iget v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    goto :goto_6

    .line 1829
    :cond_3b
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_creator:I

    if-ne v11, v0, :cond_3c

    goto :goto_6

    .line 1831
    :cond_3c
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_creator:I

    if-ne v11, v0, :cond_3d

    goto :goto_6

    .line 1833
    :cond_3d
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_creator:I

    if-ne v11, v0, :cond_3e

    goto :goto_6

    .line 1835
    :cond_3e
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_creator:I

    if-ne v11, v0, :cond_3f

    goto :goto_6

    .line 1837
    :cond_3f
    sget v0, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_creator:I

    .line 1666
    .end local v11    # "attr":I
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1843
    .end local v10    # "i":I
    :cond_40
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1844
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 1845
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 4
    .param p1, "source"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1606
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1355
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1360
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1365
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1370
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1375
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1380
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1385
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1390
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1395
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1400
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1405
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1410
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1415
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1420
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1425
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1430
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1435
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1440
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1445
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1450
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1455
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1460
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1465
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1470
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1475
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1480
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1485
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1491
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1497
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1509
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1521
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1532
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1543
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1549
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1555
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1561
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1567
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1573
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1579
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1581
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1584
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1585
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1587
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1588
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1590
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1591
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1592
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1593
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1594
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1595
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1596
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1598
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1607
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1608
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1609
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1610
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1611
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1612
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1613
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1614
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1615
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1616
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1617
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1618
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1619
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1620
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1621
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1622
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1623
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1624
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1625
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1626
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1627
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1628
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1629
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1630
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1631
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1632
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1633
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1634
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1635
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1636
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1637
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1638
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1639
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1640
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1641
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1642
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1643
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1644
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1645
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1646
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1647
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1648
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1649
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1650
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1651
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1652
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1653
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1654
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1655
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1656
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1657
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1658
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1659
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1873
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1360
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1365
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1370
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1375
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1380
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1385
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1390
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1395
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1400
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1405
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1410
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1415
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1420
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1425
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1430
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1435
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1440
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1445
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1450
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1455
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1460
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1465
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1470
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1475
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1480
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1485
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1491
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1497
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1509
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1521
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1532
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1543
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1549
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1555
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1561
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1567
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1573
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1579
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1581
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1584
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1585
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1587
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1588
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1590
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1591
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1592
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1593
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1594
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1595
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1596
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1598
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1874
    return-void
.end method


# virtual methods
.method public resolveLayoutDirection(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .line 1882
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1884
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1885
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1886
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1887
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1889
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1890
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1891
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1892
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1893
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1895
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 1897
    .local v1, "isRtl":Z
    if-eqz v1, :cond_7

    .line 1898
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v2, v0, :cond_1

    .line 1899
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    goto :goto_1

    .line 1900
    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v2, v0, :cond_2

    .line 1901
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1903
    :cond_2
    :goto_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, v0, :cond_3

    .line 1904
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1906
    :cond_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, v0, :cond_4

    .line 1907
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1909
    :cond_4
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v2, v0, :cond_5

    .line 1910
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1912
    :cond_5
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v2, v0, :cond_6

    .line 1913
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1915
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    goto :goto_2

    .line 1917
    :cond_7
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v2, v0, :cond_8

    .line 1918
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1920
    :cond_8
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v2, v0, :cond_9

    .line 1921
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1923
    :cond_9
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, v0, :cond_a

    .line 1924
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1926
    :cond_a
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, v0, :cond_b

    .line 1927
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1929
    :cond_b
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v2, v0, :cond_c

    .line 1930
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1932
    :cond_c
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v2, v0, :cond_d

    .line 1933
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1937
    :cond_d
    :goto_2
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v2, v0, :cond_f

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v2, v0, :cond_f

    .line 1938
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v2, v0, :cond_e

    .line 1939
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    goto :goto_3

    .line 1940
    :cond_e
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v2, v0, :cond_f

    .line 1941
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1944
    :cond_f
    :goto_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v2, v0, :cond_11

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v2, v0, :cond_11

    .line 1945
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v2, v0, :cond_10

    .line 1946
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    goto :goto_4

    .line 1947
    :cond_10
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v2, v0, :cond_11

    .line 1948
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1951
    :cond_11
    :goto_4
    return-void
.end method

.method public validate()V
    .locals 4

    .line 1848
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1849
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1850
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1851
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v2, v3, :cond_1

    .line 1852
    :cond_0
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1854
    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 1855
    :cond_2
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1857
    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v0, v3, :cond_6

    .line 1858
    :cond_4
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1859
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1860
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1861
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_5

    .line 1862
    new-instance v0, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1864
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v0, Landroid/support/constraint/solver/widgets/Guideline;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 1866
    :cond_6
    return-void
.end method
