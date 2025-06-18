.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerView;

    .line 4795
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4786
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4790
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4793
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4796
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4797
    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView$ViewFlinger;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 4782
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method private computeScrollDuration(IIII)I
    .locals 13
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 4976
    move-object v0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4977
    .local v1, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4978
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4979
    .local v3, "horizontal":Z
    :goto_0
    mul-int v4, p3, p3

    mul-int v5, p4, p4

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4980
    .local v4, "velocity":I
    mul-int v5, p1, p1

    mul-int v6, p2, p2

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 4981
    .local v5, "delta":I
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    .line 4982
    .local v6, "containerSize":I
    :goto_1
    div-int/lit8 v7, v6, 0x2

    .line 4983
    .local v7, "halfContainerSize":I
    int-to-float v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v8, v8, v9

    int-to-float v10, v6

    div-float/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 4984
    .local v8, "distanceRatio":F
    int-to-float v10, v7

    int-to-float v11, v7

    .line 4985
    invoke-direct {p0, v8}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v12

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    .line 4988
    .local v10, "distance":F
    if-lez v4, :cond_2

    .line 4989
    const/high16 v9, 0x447a0000    # 1000.0f

    int-to-float v11, v4

    div-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float v11, v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    .local v9, "duration":I
    goto :goto_3

    .line 4991
    .end local v9    # "duration":I
    :cond_2
    if-eqz v3, :cond_3

    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v2

    :goto_2
    int-to-float v11, v11

    .line 4992
    .local v11, "absDelta":F
    int-to-float v12, v6

    div-float v12, v11, v12

    add-float/2addr v12, v9

    const/high16 v9, 0x43960000    # 300.0f

    mul-float v12, v12, v9

    float-to-int v9, v12

    .line 4994
    .end local v11    # "absDelta":F
    .restart local v9    # "duration":I
    :goto_3
    const/16 v11, 0x7d0

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .line 4933
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4934
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4935
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "f"    # F

    .line 4970
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 4971
    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    .line 4972
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .line 4938
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4939
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 4940
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4942
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 4954
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4955
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4956
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4958
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4959
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .line 4945
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 4946
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 4948
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4949
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4951
    :goto_0
    return-void
.end method

.method public run()V
    .locals 26

    .line 4801
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 4802
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 4803
    return-void

    .line 4805
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 4806
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4809
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 4810
    .local v1, "scroller":Landroid/widget/OverScroller;
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 4811
    .local v2, "smoothScroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 4812
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$500(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v3

    .line 4813
    .local v3, "scrollConsumed":[I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v11

    .line 4814
    .local v11, "x":I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v12

    .line 4815
    .local v12, "y":I
    iget v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v13, v11, v5

    .line 4816
    .local v13, "dx":I
    iget v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v14, v12, v5

    .line 4817
    .local v14, "dy":I
    const/4 v15, 0x0

    .line 4818
    .local v15, "hresult":I
    const/16 v16, 0x0

    .line 4819
    .local v16, "vresult":I
    iput v11, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4820
    iput v12, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4821
    const/16 v17, 0x0

    .local v17, "overscrollX":I
    const/16 v18, 0x0

    .line 4823
    .local v18, "overscrollY":I
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, v13

    move v7, v14

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 4824
    aget v5, v3, v4

    sub-int/2addr v13, v5

    .line 4825
    aget v5, v3, v6

    sub-int/2addr v14, v5

    .line 4828
    :cond_1
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_7

    .line 4829
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4830
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4831
    const-string v5, "RV Scroll"

    invoke-static {v5}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4832
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 4833
    if-eqz v13, :cond_2

    .line 4834
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v13, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v15

    .line 4835
    sub-int v17, v13, v15

    .line 4837
    :cond_2
    if-eqz v14, :cond_3

    .line 4838
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v14, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v16

    .line 4839
    sub-int v18, v14, v16

    .line 4841
    :cond_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4842
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 4844
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4845
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4847
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v5

    if-nez v5, :cond_6

    .line 4848
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4849
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    .line 4850
    .local v5, "adapterSize":I
    if-nez v5, :cond_4

    .line 4851
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 4852
    :cond_4
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v7

    if-lt v7, v5, :cond_5

    .line 4853
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4854
    sub-int v7, v13, v17

    sub-int v8, v14, v18

    invoke-static {v2, v7, v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_0

    .line 4856
    :cond_5
    sub-int v7, v13, v17

    sub-int v8, v14, v18

    invoke-static {v2, v7, v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4860
    .end local v5    # "adapterSize":I
    :cond_6
    :goto_0
    move/from16 v5, v16

    move/from16 v7, v17

    move/from16 v8, v18

    goto :goto_1

    .line 4828
    :cond_7
    move/from16 v5, v16

    move/from16 v7, v17

    move/from16 v8, v18

    .line 4860
    .end local v16    # "vresult":I
    .end local v17    # "overscrollX":I
    .end local v18    # "overscrollY":I
    .local v5, "vresult":I
    .local v7, "overscrollX":I
    .local v8, "overscrollY":I
    :goto_1
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 4861
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4863
    :cond_8
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9

    .line 4864
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v13, v14}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 4867
    :cond_9
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v19, v9

    move/from16 v20, v15

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v9

    if-nez v9, :cond_15

    if-nez v7, :cond_b

    if-eqz v8, :cond_a

    goto :goto_2

    :cond_a
    move-object/from16 v16, v3

    goto :goto_7

    .line 4870
    :cond_b
    :goto_2
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v9

    float-to-int v9, v9

    .line 4872
    .local v9, "vel":I
    const/16 v16, 0x0

    .line 4873
    .local v16, "velX":I
    if-eq v7, v11, :cond_e

    .line 4874
    if-gez v7, :cond_c

    neg-int v4, v9

    goto :goto_3

    :cond_c
    if-lez v7, :cond_d

    move v4, v9

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    :goto_3
    move/from16 v16, v4

    goto :goto_4

    .line 4873
    :cond_e
    move/from16 v4, v16

    .line 4877
    .end local v16    # "velX":I
    .local v4, "velX":I
    :goto_4
    const/16 v16, 0x0

    .line 4878
    .local v16, "velY":I
    if-eq v8, v12, :cond_11

    .line 4879
    if-gez v8, :cond_f

    neg-int v6, v9

    goto :goto_5

    :cond_f
    if-lez v8, :cond_10

    move v6, v9

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    :goto_5
    move/from16 v16, v6

    goto :goto_6

    .line 4878
    :cond_11
    move/from16 v6, v16

    .line 4882
    .end local v16    # "velY":I
    .local v6, "velY":I
    :goto_6
    move-object/from16 v16, v3

    .end local v3    # "scrollConsumed":[I
    .local v16, "scrollConsumed":[I
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    if-eq v3, v10, :cond_12

    .line 4883
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4, v6}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 4885
    :cond_12
    if-nez v4, :cond_13

    if-eq v7, v11, :cond_13

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    if-nez v3, :cond_16

    :cond_13
    if-nez v6, :cond_14

    if-eq v8, v12, :cond_14

    .line 4886
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-nez v3, :cond_16

    .line 4887
    :cond_14
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_7

    .line 4867
    .end local v4    # "velX":I
    .end local v6    # "velY":I
    .end local v9    # "vel":I
    .end local v16    # "scrollConsumed":[I
    .restart local v3    # "scrollConsumed":[I
    :cond_15
    move-object/from16 v16, v3

    .line 4890
    .end local v3    # "scrollConsumed":[I
    .restart local v16    # "scrollConsumed":[I
    :cond_16
    :goto_7
    if-nez v15, :cond_17

    if-eqz v5, :cond_18

    .line 4891
    :cond_17
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v15, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4894
    :cond_18
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 4895
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4898
    :cond_19
    if-eqz v14, :cond_1a

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-ne v5, v14, :cond_1a

    const/4 v3, 0x1

    goto :goto_8

    :cond_1a
    const/4 v3, 0x0

    .line 4900
    .local v3, "fullyConsumedVertical":Z
    :goto_8
    if-eqz v13, :cond_1b

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-ne v15, v13, :cond_1b

    const/4 v4, 0x1

    goto :goto_9

    :cond_1b
    const/4 v4, 0x0

    .line 4902
    .local v4, "fullyConsumedHorizontal":Z
    :goto_9
    if-nez v13, :cond_1c

    if-eqz v14, :cond_1e

    :cond_1c
    if-nez v4, :cond_1e

    if-eqz v3, :cond_1d

    goto :goto_a

    :cond_1d
    const/4 v6, 0x0

    goto :goto_b

    :cond_1e
    :goto_a
    const/4 v6, 0x1

    .line 4905
    .local v6, "fullyConsumedAny":Z
    :goto_b
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_20

    if-nez v6, :cond_1f

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 4906
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v9

    if-nez v9, :cond_1f

    goto :goto_c

    .line 4914
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4915
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v9, :cond_22

    .line 4916
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v10, v13, v14}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_d

    .line 4908
    :cond_20
    :goto_c
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4909
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 4910
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v9}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 4912
    :cond_21
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 4921
    .end local v3    # "fullyConsumedVertical":Z
    .end local v4    # "fullyConsumedHorizontal":Z
    .end local v5    # "vresult":I
    .end local v6    # "fullyConsumedAny":Z
    .end local v7    # "overscrollX":I
    .end local v8    # "overscrollY":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    .end local v15    # "hresult":I
    .end local v16    # "scrollConsumed":[I
    :cond_22
    :goto_d
    if-eqz v2, :cond_24

    .line 4922
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 4923
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4925
    :cond_23
    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v3, :cond_24

    .line 4926
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4929
    :cond_24
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 4930
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 4962
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 4963
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 4998
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4999
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 4966
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4967
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 5007
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 5008
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5009
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5011
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5012
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5013
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5014
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 5018
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 5020
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5021
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 5002
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5004
    return-void
.end method

.method public stop()V
    .locals 1

    .line 5024
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5025
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5026
    return-void
.end method
