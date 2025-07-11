.class public abstract Landroid/support/v7/widget/SnapHelper;
.super Landroid/support/v7/widget/RecyclerView$OnFlingListener;
.source "SnapHelper.java"


# static fields
.field static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v7/widget/SnapHelper$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SnapHelper$1;-><init>(Landroid/support/v7/widget/SnapHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V

    .line 127
    return-void
.end method

.method private setupCallbacks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getOnFlingListener()Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V

    .line 119
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private snapFromFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)Z
    .locals 4
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .line 159
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    return v1

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SnapHelper;->createScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-result-object v0

    .line 164
    .local v0, "smoothScroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    if-nez v0, :cond_1

    .line 165
    return v1

    .line 168
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/SnapHelper;->findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I

    move-result v2

    .line 169
    .local v2, "targetPosition":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 170
    return v1

    .line 173
    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 175
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    if-eqz v0, :cond_1

    .line 99
    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;->destroyCallbacks()V

    .line 101
    :cond_1
    iput-object p1, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 102
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 103
    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;->setupCallbacks()V

    .line 104
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 106
    invoke-virtual {p0}, Landroid/support/v7/widget/SnapHelper;->snapToTargetExistingView()V

    .line 108
    :cond_2
    return-void
.end method

.method public abstract calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
.end method

.method public calculateScrollDistance(II)[I
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 140
    .local v0, "outDist":[I
    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 142
    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    aput v1, v0, v2

    .line 143
    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 144
    return-object v0
.end method

.method protected createScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .locals 1
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 211
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;

    move-result-object v0

    return-object v0
.end method

.method protected createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
    .locals 2
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Landroid/support/v7/widget/SnapHelper$2;

    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SnapHelper$2;-><init>(Landroid/support/v7/widget/SnapHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
.end method

.method public abstract findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .locals 5
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 68
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 72
    .local v2, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-nez v2, :cond_1

    .line 73
    return v1

    .line 75
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v3

    .line 76
    .local v3, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v3, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_3

    .line 77
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/SnapHelper;->snapFromFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v1
.end method

.method snapToTargetExistingView()V
    .locals 6

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 188
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-nez v0, :cond_1

    .line 189
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "snapView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 193
    return-void

    .line 195
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v2

    .line 196
    .local v2, "snapDistance":[I
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-nez v4, :cond_3

    aget v4, v2, v5

    if-eqz v4, :cond_4

    .line 197
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    aget v3, v2, v3

    aget v5, v2, v5

    invoke-virtual {v4, v3, v5}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 199
    :cond_4
    return-void
.end method
