.class public Landroid/support/v7/widget/AlertDialogLayout;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 216
    nop

    .line 217
    invoke-virtual {p0}, Landroid/support/v7/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    .line 216
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 219
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 221
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 222
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 223
    .local v9, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 226
    iget v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 227
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 230
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 231
    iput v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 219
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static resolveMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 247
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 248
    .local v0, "minHeight":I
    if-lez v0, :cond_0

    .line 249
    return v0

    .line 252
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 253
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 254
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 255
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v2

    return v2

    .line 259
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return v2
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 347
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 348
    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 70
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 71
    .local v3, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    .line 72
    .local v4, "buttonPanel":Landroid/view/View;
    const/4 v5, 0x0

    .line 74
    .local v5, "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getChildCount()I

    move-result v6

    .line 75
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v8, 0x8

    const/4 v9, 0x0

    if-ge v7, v6, :cond_6

    .line 76
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 77
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v8, :cond_0

    .line 78
    goto :goto_2

    .line 81
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v8

    .line 82
    .local v8, "id":I
    sget v11, Landroid/support/v7/appcompat/R$id;->topPanel:I

    if-ne v8, v11, :cond_1

    .line 83
    move-object v3, v10

    goto :goto_2

    .line 84
    :cond_1
    sget v11, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    if-ne v8, v11, :cond_2

    .line 85
    move-object v4, v10

    goto :goto_2

    .line 86
    :cond_2
    sget v11, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    if-eq v8, v11, :cond_4

    sget v11, Landroid/support/v7/appcompat/R$id;->customPanel:I

    if-ne v8, v11, :cond_3

    goto :goto_1

    .line 94
    :cond_3
    return v9

    .line 87
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 89
    return v9

    .line 91
    :cond_5
    move-object v5, v10

    .line 75
    .end local v8    # "id":I
    .end local v10    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 98
    .end local v7    # "i":I
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 99
    .local v7, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 100
    .local v10, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 102
    .local v11, "widthMode":I
    const/4 v12, 0x0

    .line 103
    .local v12, "childState":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    .line 105
    .local v13, "usedHeight":I
    if-eqz v3, :cond_7

    .line 106
    invoke-virtual {v3, v1, v9}, Landroid/view/View;->measure(II)V

    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v12, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 112
    :cond_7
    const/4 v14, 0x0

    .line 113
    .local v14, "buttonHeight":I
    const/4 v15, 0x0

    .line 114
    .local v15, "buttonWantsHeight":I
    if-eqz v4, :cond_8

    .line 115
    invoke-virtual {v4, v1, v9}, Landroid/view/View;->measure(II)V

    .line 116
    invoke-static {v4}, Landroid/support/v7/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v14

    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v15, v16, v14

    .line 119
    add-int/2addr v13, v14

    .line 120
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v8

    invoke-static {v12, v8}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 123
    :cond_8
    const/4 v8, 0x0

    .line 124
    .local v8, "middleHeight":I
    if-eqz v5, :cond_a

    .line 126
    if-nez v7, :cond_9

    .line 127
    const/16 v17, 0x0

    move/from16 v23, v17

    move-object/from16 v17, v3

    move/from16 v3, v23

    .local v17, "childHeightSpec":I
    goto :goto_3

    .line 129
    .end local v17    # "childHeightSpec":I
    :cond_9
    move-object/from16 v17, v3

    .end local v3    # "topPanel":Landroid/view/View;
    .local v17, "topPanel":Landroid/view/View;
    sub-int v3, v10, v13

    .line 130
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 129
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 133
    .local v3, "childHeightSpec":I
    :goto_3
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 134
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 136
    add-int/2addr v13, v8

    .line 137
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v12, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_4

    .line 124
    .end local v17    # "topPanel":Landroid/view/View;
    .local v3, "topPanel":Landroid/view/View;
    :cond_a
    move-object/from16 v17, v3

    .line 140
    .end local v3    # "topPanel":Landroid/view/View;
    .restart local v17    # "topPanel":Landroid/view/View;
    :goto_4
    sub-int v3, v10, v13

    .line 145
    .local v3, "remainingHeight":I
    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v4, :cond_c

    .line 146
    sub-int/2addr v13, v14

    .line 148
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 149
    .local v18, "heightToGive":I
    if-lez v18, :cond_b

    .line 150
    sub-int v3, v3, v18

    .line 151
    add-int v14, v14, v18

    .line 154
    :cond_b
    move/from16 v19, v3

    .end local v3    # "remainingHeight":I
    .local v19, "remainingHeight":I
    invoke-static {v14, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 156
    .local v3, "childHeightSpec":I
    invoke-virtual {v4, v1, v3}, Landroid/view/View;->measure(II)V

    .line 158
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v13, v13, v20

    .line 159
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v12, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v3, v19

    .line 164
    .end local v18    # "heightToGive":I
    .end local v19    # "remainingHeight":I
    .local v3, "remainingHeight":I
    :cond_c
    if-eqz v5, :cond_d

    if-lez v3, :cond_d

    .line 165
    sub-int/2addr v13, v8

    .line 167
    move v9, v3

    .line 168
    .local v9, "heightToGive":I
    sub-int/2addr v3, v9

    .line 169
    add-int/2addr v8, v9

    .line 174
    move/from16 v18, v3

    .end local v3    # "remainingHeight":I
    .local v18, "remainingHeight":I
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 176
    .local v3, "childHeightSpec":I
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 178
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v13, v13, v19

    .line 179
    move/from16 v19, v3

    .end local v3    # "childHeightSpec":I
    .local v19, "childHeightSpec":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v12, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v3, v18

    .line 183
    .end local v9    # "heightToGive":I
    .end local v18    # "remainingHeight":I
    .end local v19    # "childHeightSpec":I
    .local v3, "remainingHeight":I
    :cond_d
    const/4 v9, 0x0

    .line 184
    .local v9, "maxWidth":I
    const/16 v18, 0x0

    move/from16 v23, v18

    move/from16 v18, v3

    move v3, v9

    move/from16 v9, v23

    .local v3, "maxWidth":I
    .local v9, "i":I
    .restart local v18    # "remainingHeight":I
    :goto_5
    if-ge v9, v6, :cond_f

    .line 185
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 186
    .local v19, "child":Landroid/view/View;
    move-object/from16 v21, v4

    .end local v4    # "buttonPanel":Landroid/view/View;
    .local v21, "buttonPanel":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v4

    move-object/from16 v22, v5

    const/16 v5, 0x8

    .end local v5    # "middlePanel":Landroid/view/View;
    .local v22, "middlePanel":Landroid/view/View;
    if-eq v4, v5, :cond_e

    .line 187
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 184
    .end local v19    # "child":Landroid/view/View;
    :cond_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    goto :goto_5

    .end local v21    # "buttonPanel":Landroid/view/View;
    .end local v22    # "middlePanel":Landroid/view/View;
    .restart local v4    # "buttonPanel":Landroid/view/View;
    .restart local v5    # "middlePanel":Landroid/view/View;
    :cond_f
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .line 191
    .end local v4    # "buttonPanel":Landroid/view/View;
    .end local v5    # "middlePanel":Landroid/view/View;
    .end local v9    # "i":I
    .restart local v21    # "buttonPanel":Landroid/view/View;
    .restart local v22    # "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 193
    invoke-static {v3, v1, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    .line 195
    .local v4, "widthSizeAndState":I
    const/4 v5, 0x0

    invoke-static {v13, v2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    .line 197
    .local v5, "heightSizeAndState":I
    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 201
    const/high16 v9, 0x40000000    # 2.0f

    if-eq v11, v9, :cond_10

    .line 202
    invoke-direct {v0, v6, v2}, Landroid/support/v7/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 205
    :cond_10
    const/4 v9, 0x1

    return v9
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 264
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v7

    .line 267
    .local v7, "paddingLeft":I
    sub-int v8, p4, p2

    .line 268
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v0

    sub-int v9, v8, v0

    .line 271
    .local v9, "childRight":I
    sub-int v0, v8, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 273
    .local v10, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v11

    .line 274
    .local v11, "totalLength":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getChildCount()I

    move-result v12

    .line 275
    .local v12, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getGravity()I

    move-result v13

    .line 276
    .local v13, "gravity":I
    and-int/lit8 v14, v13, 0x70

    .line 277
    .local v14, "majorGravity":I
    const v0, 0x800007

    and-int v15, v13, v0

    .line 280
    .local v15, "minorGravity":I
    const/16 v0, 0x10

    if-eq v14, v0, :cond_1

    const/16 v0, 0x50

    if-eq v14, v0, :cond_0

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v0

    .local v0, "childTop":I
    goto :goto_0

    .line 283
    .end local v0    # "childTop":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p5

    sub-int v0, v0, p3

    sub-int/2addr v0, v11

    .line 284
    .restart local v0    # "childTop":I
    goto :goto_0

    .line 288
    .end local v0    # "childTop":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v0

    sub-int v1, p5, p3

    sub-int/2addr v1, v11

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 289
    .restart local v0    # "childTop":I
    nop

    .line 297
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 298
    .local v16, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v16, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 299
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    move/from16 v17, v1

    .line 301
    .local v17, "dividerHeight":I
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_2
    if-ge v5, v12, :cond_8

    .line 302
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 303
    .local v18, "child":Landroid/view/View;
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 304
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 305
    .local v19, "childWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    .line 307
    .local v20, "childHeight":I
    nop

    .line 308
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 310
    .local v4, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 311
    .local v1, "layoutGravity":I
    if-gez v1, :cond_3

    .line 312
    move v1, v15

    move v3, v1

    goto :goto_3

    .line 311
    :cond_3
    move v3, v1

    .line 314
    .end local v1    # "layoutGravity":I
    .local v3, "layoutGravity":I
    :goto_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 315
    .local v2, "layoutDirection":I
    invoke-static {v3, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v21

    .line 319
    .local v21, "absoluteGravity":I
    and-int/lit8 v1, v21, 0x7

    move/from16 v22, v2

    .end local v2    # "layoutDirection":I
    .local v22, "layoutDirection":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 331
    iget v1, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v23, v1

    .local v1, "childLeft":I
    goto :goto_4

    .line 326
    .end local v1    # "childLeft":I
    :cond_4
    sub-int v1, v9, v19

    iget v2, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 327
    .restart local v1    # "childLeft":I
    move/from16 v23, v1

    goto :goto_4

    .line 321
    .end local v1    # "childLeft":I
    :cond_5
    sub-int v1, v10, v19

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 323
    .restart local v1    # "childLeft":I
    move/from16 v23, v1

    .line 335
    .end local v1    # "childLeft":I
    .local v23, "childLeft":I
    :goto_4
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 336
    add-int v0, v0, v17

    .line 339
    :cond_6
    iget v1, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v24, v0, v1

    .line 340
    .end local v0    # "childTop":I
    .local v24, "childTop":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    move/from16 v25, v3

    .end local v3    # "layoutGravity":I
    .local v25, "layoutGravity":I
    move/from16 v3, v24

    move-object v6, v4

    .end local v4    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v6, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v4, v19

    move/from16 v26, v5

    .end local v5    # "i":I
    .local v26, "i":I
    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 341
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v20, v0

    add-int v24, v24, v0

    move/from16 v0, v24

    goto :goto_5

    .line 303
    .end local v6    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childWidth":I
    .end local v20    # "childHeight":I
    .end local v21    # "absoluteGravity":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "childLeft":I
    .end local v24    # "childTop":I
    .end local v25    # "layoutGravity":I
    .end local v26    # "i":I
    .restart local v0    # "childTop":I
    .restart local v5    # "i":I
    :cond_7
    move/from16 v26, v5

    .line 301
    .end local v5    # "i":I
    .end local v18    # "child":Landroid/view/View;
    .restart local v26    # "i":I
    :goto_5
    add-int/lit8 v5, v26, 0x1

    move-object/from16 v6, p0

    .end local v26    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_2

    .line 344
    .end local v5    # "i":I
    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 67
    :cond_0
    return-void
.end method
