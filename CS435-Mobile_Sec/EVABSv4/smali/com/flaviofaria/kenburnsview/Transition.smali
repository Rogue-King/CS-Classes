.class public Lcom/flaviofaria/kenburnsview/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field private mCenterXDiff:F

.field private mCenterYDiff:F

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mDstRect:Landroid/graphics/RectF;

.field private mDuration:J

.field private mHeightDiff:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mSrcRect:Landroid/graphics/RectF;

.field private mWidthDiff:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;JLandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "srcRect"    # Landroid/graphics/RectF;
    .param p2, "dstRect"    # Landroid/graphics/RectF;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flaviofaria/kenburnsview/Transition;->mCurrentRect:Landroid/graphics/RectF;

    .line 52
    invoke-static {p1, p2}, Lcom/flaviofaria/kenburnsview/MathUtils;->haveSameAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/flaviofaria/kenburnsview/Transition;->mSrcRect:Landroid/graphics/RectF;

    .line 56
    iput-object p2, p0, Lcom/flaviofaria/kenburnsview/Transition;->mDstRect:Landroid/graphics/RectF;

    .line 57
    iput-wide p3, p0, Lcom/flaviofaria/kenburnsview/Transition;->mDuration:J

    .line 58
    iput-object p5, p0, Lcom/flaviofaria/kenburnsview/Transition;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flaviofaria/kenburnsview/Transition;->mWidthDiff:F

    .line 62
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flaviofaria/kenburnsview/Transition;->mHeightDiff:F

    .line 63
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flaviofaria/kenburnsview/Transition;->mCenterXDiff:F

    .line 64
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flaviofaria/kenburnsview/Transition;->mCenterYDiff:F

    .line 65
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/flaviofaria/kenburnsview/IncompatibleRatioException;

    invoke-direct {v0}, Lcom/flaviofaria/kenburnsview/IncompatibleRatioException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getDestinyRect()Landroid/graphics/RectF;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/Transition;->mDstRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/flaviofaria/kenburnsview/Transition;->mDuration:J

    return-wide v0
.end method

.method public getInterpolatedRect(J)Landroid/graphics/RectF;
    .locals 12
    .param p1, "elapsedTime"    # J

    .line 92
    long-to-float v0, p1

    iget-wide v1, p0, Lcom/flaviofaria/kenburnsview/Transition;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 93
    .local v0, "elapsedTimeFraction":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 94
    .local v1, "interpolationProgress":F
    iget-object v2, p0, Lcom/flaviofaria/kenburnsview/Transition;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 95
    .local v2, "interpolation":F
    iget-object v3, p0, Lcom/flaviofaria/kenburnsview/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/flaviofaria/kenburnsview/Transition;->mWidthDiff:F

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    .line 96
    .local v3, "currentWidth":F
    iget-object v4, p0, Lcom/flaviofaria/kenburnsview/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/flaviofaria/kenburnsview/Transition;->mHeightDiff:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    .line 98
    .local v4, "currentHeight":F
    iget-object v5, p0, Lcom/flaviofaria/kenburnsview/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v6, p0, Lcom/flaviofaria/kenburnsview/Transition;->mCenterXDiff:F

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    .line 99
    .local v5, "currentCenterX":F
    iget-object v6, p0, Lcom/flaviofaria/kenburnsview/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget v7, p0, Lcom/flaviofaria/kenburnsview/Transition;->mCenterYDiff:F

    mul-float v7, v7, v2

    add-float/2addr v6, v7

    .line 101
    .local v6, "currentCenterY":F
    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v3, v7

    sub-float v8, v5, v8

    .line 102
    .local v8, "left":F
    div-float v7, v4, v7

    sub-float v7, v6, v7

    .line 103
    .local v7, "top":F
    add-float v9, v8, v3

    .line 104
    .local v9, "right":F
    add-float v10, v7, v4

    .line 106
    .local v10, "bottom":F
    iget-object v11, p0, Lcom/flaviofaria/kenburnsview/Transition;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v8, v7, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object v11, p0, Lcom/flaviofaria/kenburnsview/Transition;->mCurrentRect:Landroid/graphics/RectF;

    return-object v11
.end method

.method public getSourceRect()Landroid/graphics/RectF;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/Transition;->mSrcRect:Landroid/graphics/RectF;

    return-object v0
.end method
