.class public Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;
.super Ljava/lang/Object;
.source "RandomTransitionGenerator.java"

# interfaces
.implements Lcom/flaviofaria/kenburnsview/TransitionGenerator;


# static fields
.field public static final DEFAULT_TRANSITION_DURATION:I = 0x2710

.field private static final MIN_RECT_FACTOR:F = 0.75f


# instance fields
.field private mLastDrawableBounds:Landroid/graphics/RectF;

.field private mLastGenTrans:Lcom/flaviofaria/kenburnsview/Transition;

.field private final mRandom:Ljava/util/Random;

.field private mTransitionDuration:J

.field private mTransitionInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    const-wide/16 v1, 0x2710

    invoke-direct {p0, v1, v2, v0}, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;-><init>(JLandroid/view/animation/Interpolator;)V

    .line 50
    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "transitionDuration"    # J
    .param p3, "transitionInterpolator"    # Landroid/view/animation/Interpolator;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mRandom:Ljava/util/Random;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->setTransitionDuration(J)V

    .line 55
    invoke-virtual {p0, p3}, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->setTransitionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    return-void
.end method

.method private generateRandomRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 16
    .param p1, "drawableBounds"    # Landroid/graphics/RectF;
    .param p2, "viewportRect"    # Landroid/graphics/RectF;

    .line 105
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/flaviofaria/kenburnsview/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result v1

    .line 106
    .local v1, "drawableRatio":F
    invoke-static/range {p2 .. p2}, Lcom/flaviofaria/kenburnsview/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result v2

    .line 109
    .local v2, "viewportRectRatio":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v4, v4, v5

    .line 111
    .local v4, "r":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 112
    .local v5, "b":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v6

    .line 113
    .end local v4    # "r":F
    .end local v5    # "b":F
    .local v3, "maxCrop":Landroid/graphics/RectF;
    goto :goto_0

    .line 114
    .end local v3    # "maxCrop":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 115
    .restart local v4    # "r":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float v5, v5, v6

    .line 116
    .restart local v5    # "b":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v6

    .line 119
    .end local v4    # "r":F
    .end local v5    # "b":F
    .restart local v3    # "maxCrop":Landroid/graphics/RectF;
    :goto_0
    iget-object v4, v0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/flaviofaria/kenburnsview/MathUtils;->truncate(FI)F

    move-result v4

    .line 120
    .local v4, "randomFloat":F
    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v6, v6, v4

    add-float/2addr v6, v5

    .line 122
    .local v6, "factor":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v5, v5, v6

    .line 123
    .local v5, "width":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float v7, v7, v6

    .line 124
    .local v7, "height":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v5

    float-to-int v8, v8

    .line 125
    .local v8, "widthDiff":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v9, v7

    float-to-int v9, v9

    .line 126
    .local v9, "heightDiff":I
    const/4 v10, 0x0

    if-lez v8, :cond_1

    iget-object v11, v0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mRandom:Ljava/util/Random;

    invoke-virtual {v11, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 127
    .local v11, "left":I
    :goto_1
    if-lez v9, :cond_2

    iget-object v10, v0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mRandom:Ljava/util/Random;

    invoke-virtual {v10, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 128
    .local v10, "top":I
    :cond_2
    new-instance v12, Landroid/graphics/RectF;

    int-to-float v13, v11

    int-to-float v14, v10

    int-to-float v15, v11

    add-float/2addr v15, v5

    int-to-float v0, v10

    add-float/2addr v0, v7

    invoke-direct {v12, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v12
.end method


# virtual methods
.method public generateNextTransition(Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/flaviofaria/kenburnsview/Transition;
    .locals 12
    .param p1, "drawableBounds"    # Landroid/graphics/RectF;
    .param p2, "viewport"    # Landroid/graphics/RectF;

    .line 61
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mLastGenTrans:Lcom/flaviofaria/kenburnsview/Transition;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "firstTransition":Z
    :goto_0
    const/4 v2, 0x1

    .line 63
    .local v2, "drawableBoundsChanged":Z
    const/4 v3, 0x1

    .line 65
    .local v3, "viewportRatioChanged":Z
    const/4 v4, 0x0

    .line 66
    .local v4, "srcRect":Landroid/graphics/RectF;
    const/4 v5, 0x0

    .line 68
    .local v5, "dstRect":Landroid/graphics/RectF;
    if-nez v0, :cond_1

    .line 69
    iget-object v6, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mLastGenTrans:Lcom/flaviofaria/kenburnsview/Transition;

    invoke-virtual {v6}, Lcom/flaviofaria/kenburnsview/Transition;->getDestinyRect()Landroid/graphics/RectF;

    move-result-object v5

    .line 70
    iget-object v6, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mLastDrawableBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v1

    move v2, v6

    .line 71
    invoke-static {v5, p2}, Lcom/flaviofaria/kenburnsview/MathUtils;->haveSameAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    xor-int/2addr v1, v6

    move v3, v1

    .line 74
    :cond_1
    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    move-object v1, v5

    .end local v4    # "srcRect":Landroid/graphics/RectF;
    .local v1, "srcRect":Landroid/graphics/RectF;
    goto :goto_2

    .line 75
    .end local v1    # "srcRect":Landroid/graphics/RectF;
    .restart local v4    # "srcRect":Landroid/graphics/RectF;
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->generateRandomRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 82
    .end local v4    # "srcRect":Landroid/graphics/RectF;
    .restart local v1    # "srcRect":Landroid/graphics/RectF;
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->generateRandomRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    .line 84
    .end local v5    # "dstRect":Landroid/graphics/RectF;
    .local v4, "dstRect":Landroid/graphics/RectF;
    new-instance v5, Lcom/flaviofaria/kenburnsview/Transition;

    iget-wide v9, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mTransitionDuration:J

    iget-object v11, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mTransitionInterpolator:Landroid/view/animation/Interpolator;

    move-object v6, v5

    move-object v7, v1

    move-object v8, v4

    invoke-direct/range {v6 .. v11}, Lcom/flaviofaria/kenburnsview/Transition;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;JLandroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mLastGenTrans:Lcom/flaviofaria/kenburnsview/Transition;

    .line 87
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v5, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mLastDrawableBounds:Landroid/graphics/RectF;

    .line 89
    iget-object v5, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mLastGenTrans:Lcom/flaviofaria/kenburnsview/Transition;

    return-object v5
.end method

.method public setTransitionDuration(J)V
    .locals 0
    .param p1, "transitionDuration"    # J

    .line 137
    iput-wide p1, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mTransitionDuration:J

    .line 138
    return-void
.end method

.method public setTransitionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 146
    iput-object p1, p0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;->mTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 147
    return-void
.end method
