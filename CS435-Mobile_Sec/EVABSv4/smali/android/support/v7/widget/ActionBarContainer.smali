.class public Landroid/support/v7/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarBackgroundDrawable;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V

    .line 64
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 66
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 68
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundStacked:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 71
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I

    .line 73
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getId()I

    move-result v2

    sget v3, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 74
    iput-boolean v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    .line 75
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundSplit:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 81
    return-void
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 255
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 167
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 170
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 174
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 178
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 181
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 184
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 86
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 87
    sget v0, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 88
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 214
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 201
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 295
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 298
    .local v0, "tabContainer":Landroid/view/View;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 300
    .local v3, "hasTabs":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    .line 302
    .local v1, "containerHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 303
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 304
    .local v5, "tabHeight":I
    sub-int v6, v1, v5

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v7, v1, v7

    invoke-virtual {v0, p2, v6, p4, v7}, Landroid/view/View;->layout(IIII)V

    .line 308
    .end local v1    # "containerHeight":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "tabHeight":I
    :cond_1
    const/4 v1, 0x0

    .line 309
    .local v1, "needsInvalidate":Z
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_2

    .line 310
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 315
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 316
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 317
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 318
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 317
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 319
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 320
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 321
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 322
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 321
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 324
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    :goto_1
    const/4 v1, 0x1

    .line 328
    :cond_5
    iput-boolean v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    .line 329
    if-eqz v3, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 330
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    const/4 v1, 0x1

    .line 336
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 337
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V

    .line 339
    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 265
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    .line 266
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I

    if-ltz v0, :cond_0

    .line 267
    nop

    .line 268
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 267
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 270
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 274
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 275
    .local v0, "mode":I
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_5

    .line 278
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .local v2, "topMarginForTabs":I
    goto :goto_0

    .line 280
    .end local v2    # "topMarginForTabs":I
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 281
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .restart local v2    # "topMarginForTabs":I
    goto :goto_0

    .line 283
    .end local v2    # "topMarginForTabs":I
    :cond_3
    const/4 v2, 0x0

    .line 285
    .restart local v2    # "topMarginForTabs":I
    :goto_0
    if-ne v0, v1, :cond_4

    .line 286
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    :cond_4
    const v1, 0x7fffffff

    .line 287
    .local v1, "maxHeight":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 288
    invoke-direct {p0, v4}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 287
    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 291
    .end local v1    # "maxHeight":I
    .end local v2    # "topMarginForTabs":I
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 206
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 93
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 96
    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 99
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 105
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V

    .line 106
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 132
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 140
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V

    .line 141
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 114
    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 116
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 118
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 117
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 123
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V

    .line 124
    return-void
.end method

.method public setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Landroid/support/v7/widget/ScrollingTabContainerView;

    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 224
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 225
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 227
    invoke-virtual {p1}, Landroid/support/v7/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 229
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 232
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .line 194
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 195
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 197
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 147
    .local v1, "isVisible":Z
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 148
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 149
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 150
    :cond_3
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 248
    if-eqz p3, :cond_0

    .line 249
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    .line 155
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
