.class Landroid/support/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionUtils$MatrixEvaluator;
    }
.end annotation


# static fields
.field private static final MAX_IMAGE_SIZE:I = 0x100000


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 11
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 44
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 45
    invoke-static {p1, v0}, Landroid/support/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 46
    invoke-static {p0, v0}, Landroid/support/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 47
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 48
    .local v1, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 49
    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 50
    .local v2, "left":I
    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 51
    .local v3, "top":I
    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 52
    .local v4, "right":I
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 54
    .local v5, "bottom":I
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v6, "copy":Landroid/widget/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    invoke-static {p1, v0, v1}, Landroid/support/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 57
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 58
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    :cond_0
    sub-int v8, v4, v2

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 61
    .local v8, "widthSpec":I
    sub-int v10, v5, v3

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 62
    .local v9, "heightSpec":I
    invoke-virtual {v6, v8, v9}, Landroid/widget/ImageView;->measure(II)V

    .line 63
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 64
    return-object v6
.end method

.method private static createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "bounds"    # Landroid/graphics/RectF;

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 84
    .local v1, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 85
    .local v2, "bitmapHeight":I
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 86
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x49800000    # 1048576.0f

    mul-int v5, v1, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 87
    .local v3, "scale":F
    int-to-float v4, v1

    mul-float v4, v4, v3

    float-to-int v1, v4

    .line 88
    int-to-float v4, v2

    mul-float v4, v4, v3

    float-to-int v2, v4

    .line 89
    iget v4, p2, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, p2, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 90
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 91
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 94
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 96
    .end local v3    # "scale":F
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    return-object v0
.end method

.method static mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 3
    .param p0, "animator1"    # Landroid/animation/Animator;
    .param p1, "animator2"    # Landroid/animation/Animator;

    .line 100
    if-nez p0, :cond_0

    .line 101
    return-object p1

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 103
    return-object p0

    .line 105
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 106
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 107
    return-object v0
.end method
