.class public Landroid/support/transition/PatternPathMotion;
.super Landroid/support/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private mOriginalPatternPath:Landroid/graphics/Path;

.field private final mPatternPath:Landroid/graphics/Path;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 53
    iget-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 58
    sget-object v0, Landroid/support/transition/Styleable;->PATTERN_PATH_MOTION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    move-object v1, p2

    check-cast v1, Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "patternPathData"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "pathData":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 65
    invoke-static {v1}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    .line 66
    .local v2, "pattern":Landroid/graphics/Path;
    invoke-virtual {p0, v2}, Landroid/support/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1    # "pathData":Ljava/lang/String;
    .end local v2    # "pattern":Landroid/graphics/Path;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    nop

    .line 70
    return-void

    .line 63
    .restart local v1    # "pathData":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "pathData must be supplied for patternPathMotion"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v1    # "pathData":Ljava/lang/String;
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "attrs":Landroid/util/AttributeSet;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "patternPath"    # Landroid/graphics/Path;

    .line 80
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 81
    invoke-virtual {p0, p1}, Landroid/support/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    .line 82
    return-void
.end method

.method private static distance(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 145
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .line 131
    sub-float v0, p3, p1

    .line 132
    .local v0, "dx":F
    sub-float v1, p4, p2

    .line 133
    .local v1, "dy":F
    invoke-static {v0, v1}, Landroid/support/transition/PatternPathMotion;->distance(FF)F

    move-result v2

    .line 134
    .local v2, "length":F
    float-to-double v3, v1

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 136
    .local v3, "angle":D
    iget-object v5, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 137
    iget-object v5, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 138
    iget-object v5, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 139
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 140
    .local v5, "path":Landroid/graphics/Path;
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iget-object v7, p0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 141
    return-object v5
.end method

.method public getPatternPath()Landroid/graphics/Path;
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/support/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public setPatternPath(Landroid/graphics/Path;)V
    .locals 18
    .param p1, "patternPath"    # Landroid/graphics/Path;

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 104
    .local v2, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 105
    .local v4, "length":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 106
    .local v5, "pos":[F
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 107
    aget v7, v5, v3

    .line 108
    .local v7, "endX":F
    const/4 v8, 0x1

    aget v9, v5, v8

    .line 109
    .local v9, "endY":F
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 110
    aget v3, v5, v3

    .line 111
    .local v3, "startX":F
    aget v6, v5, v8

    .line 113
    .local v6, "startY":F
    cmpl-float v8, v3, v7

    if-nez v8, :cond_1

    cmpl-float v8, v6, v9

    if-eqz v8, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "pattern must not end at the starting point"

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 117
    :cond_1
    :goto_0
    iget-object v8, v0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    neg-float v10, v3

    neg-float v11, v6

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 118
    sub-float v8, v7, v3

    .line 119
    .local v8, "dx":F
    sub-float v10, v9, v6

    .line 120
    .local v10, "dy":F
    invoke-static {v8, v10}, Landroid/support/transition/PatternPathMotion;->distance(FF)F

    move-result v11

    .line 121
    .local v11, "distance":F
    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v11

    .line 122
    .local v12, "scale":F
    iget-object v13, v0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 123
    float-to-double v13, v10

    move-object v15, v2

    move/from16 v16, v3

    .end local v2    # "pathMeasure":Landroid/graphics/PathMeasure;
    .end local v3    # "startX":F
    .local v15, "pathMeasure":Landroid/graphics/PathMeasure;
    .local v16, "startX":F
    float-to-double v2, v8

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 124
    .local v2, "angle":D
    iget-object v13, v0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move v14, v4

    move-object/from16 v17, v5

    .end local v4    # "length":F
    .end local v5    # "pos":[F
    .local v14, "length":F
    .local v17, "pos":[F
    neg-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v13, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 125
    iget-object v4, v0, Landroid/support/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Landroid/support/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 126
    iput-object v1, v0, Landroid/support/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 127
    return-void
.end method
