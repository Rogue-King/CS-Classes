.class Landroid/support/v7/widget/SnapHelper$2;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SnapHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/SnapHelper;
    .param p2, "context"    # Landroid/content/Context;

    .line 229
    iput-object p1, p0, Landroid/support/v7/widget/SnapHelper$2;->this$0:Landroid/support/v7/widget/SnapHelper;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 244
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 5
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper$2;->this$0:Landroid/support/v7/widget/SnapHelper;

    iget-object v1, v0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    .line 234
    .local v0, "snapDistances":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 235
    .local v1, "dx":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 236
    .local v2, "dy":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 237
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 238
    iget-object v4, p0, Landroid/support/v7/widget/SnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 240
    :cond_0
    return-void
.end method
