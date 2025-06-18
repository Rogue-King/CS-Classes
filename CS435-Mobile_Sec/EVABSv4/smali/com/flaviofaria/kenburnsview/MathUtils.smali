.class public final Lcom/flaviofaria/kenburnsview/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getRectRatio(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "rect"    # Landroid/graphics/RectF;

    .line 61
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected static haveSameAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p0, "r1"    # Landroid/graphics/RectF;
    .param p1, "r2"    # Landroid/graphics/RectF;

    .line 47
    invoke-static {p0}, Lcom/flaviofaria/kenburnsview/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/flaviofaria/kenburnsview/MathUtils;->truncate(FI)F

    move-result v0

    .line 48
    .local v0, "srcRectRatio":F
    invoke-static {p1}, Lcom/flaviofaria/kenburnsview/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result v2

    invoke-static {v2, v1}, Lcom/flaviofaria/kenburnsview/MathUtils;->truncate(FI)F

    move-result v1

    .line 51
    .local v1, "dstRectRatio":F
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected static truncate(FI)F
    .locals 4
    .param p0, "f"    # F
    .param p1, "decimalPlaces"    # I

    .line 33
    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 34
    .local v0, "decimalShift":F
    mul-float v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method
