.class public Landroid/support/v4/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CircularProgressDrawable$Ring;,
        Landroid/support/v4/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 7.5f

.field private static final CENTER_RADIUS_LARGE:F = 11.0f

.field private static final COLORS:[I

.field private static final COLOR_CHANGE_OFFSET:F = 0.75f

.field public static final DEFAULT:I = 0x1

.field private static final GROUP_FULL_ROTATION:F = 216.0f

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final MIN_PROGRESS_ARC:F = 0.01f

.field private static final RING_ROTATION:F = 0.20999998f

.field private static final SHRINK_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 136
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 138
    new-instance v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-direct {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 139
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    sget-object v1, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 141
    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 142
    invoke-direct {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->setupAnimators()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Landroid/support/v4/widget/CircularProgressDrawable$Ring;
    .param p3, "x3"    # Z

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CircularProgressDrawable;->applyTransformation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/widget/CircularProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;

    .line 65
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;
    .param p1, "x1"    # F

    .line 65
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/CircularProgressDrawable;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;

    .line 65
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return v0
.end method

.method static synthetic access$302(Landroid/support/v4/widget/CircularProgressDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/CircularProgressDrawable;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return p1
.end method

.method private applyFinishTranslation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 510
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    .line 511
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 513
    .local v0, "targetRotation":F
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 514
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 516
    .local v1, "startTrim":F
    invoke-virtual {p2, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 517
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 518
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    .line 519
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    sub-float v3, v0, v3

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 520
    .local v2, "rotation":F
    invoke-virtual {p2, v2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 521
    return-void
.end method

.method private applyTransformation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V
    .locals 7
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/CircularProgressDrawable$Ring;
    .param p3, "lastFrame"    # Z

    .line 527
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->applyFinishTranslation(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    goto :goto_1

    .line 531
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    .line 532
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    .line 535
    .local v1, "startingRotation":F
    const v2, 0x3c23d70a    # 0.01f

    const v3, 0x3f4a3d71    # 0.79f

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v4

    if-gez v5, :cond_2

    .line 536
    div-float v0, p1, v4

    .line 537
    .local v0, "scaledTime":F
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v4

    .line 538
    .local v4, "startTrim":F
    sget-object v5, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 539
    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v5, v5, v3

    add-float/2addr v5, v2

    add-float/2addr v5, v4

    .line 540
    .end local v0    # "scaledTime":F
    .local v5, "endTrim":F
    move v0, v4

    move v4, v5

    goto :goto_0

    .line 541
    .end local v4    # "startTrim":F
    .end local v5    # "endTrim":F
    :cond_2
    sub-float v5, p1, v4

    div-float/2addr v5, v4

    .line 542
    .local v5, "scaledTime":F
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v4

    add-float/2addr v4, v3

    .line 543
    .local v4, "endTrim":F
    sget-object v6, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 544
    invoke-interface {v6, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v0, v6

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    sub-float v0, v4, v0

    .line 548
    .end local v5    # "scaledTime":F
    .local v0, "startTrim":F
    :goto_0
    const v2, 0x3e570a3c    # 0.20999998f

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    .line 549
    .local v2, "rotation":F
    const/high16 v3, 0x43580000    # 216.0f

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr v5, p1

    mul-float v5, v5, v3

    .line 551
    .local v5, "groupRotation":F
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 552
    invoke-virtual {p2, v4}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 553
    invoke-virtual {p2, v2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 554
    invoke-direct {p0, v5}, Landroid/support/v4/widget/CircularProgressDrawable;->setRotation(F)V

    .line 556
    .end local v0    # "startTrim":F
    .end local v1    # "startingRotation":F
    .end local v2    # "rotation":F
    .end local v4    # "endTrim":F
    .end local v5    # "groupRotation":F
    :cond_3
    :goto_1
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 10
    .param p1, "fraction"    # F
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    .line 471
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 472
    .local v0, "startA":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 473
    .local v1, "startR":I
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 474
    .local v2, "startG":I
    and-int/lit16 v3, p2, 0xff

    .line 476
    .local v3, "startB":I
    shr-int/lit8 v4, p3, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 477
    .local v4, "endA":I
    shr-int/lit8 v5, p3, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 478
    .local v5, "endR":I
    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 479
    .local v6, "endG":I
    and-int/lit16 v7, p3, 0xff

    .line 481
    .local v7, "endB":I
    sub-int v8, v4, v0

    int-to-float v8, v8

    mul-float v8, v8, p1

    float-to-int v8, v8

    add-int/2addr v8, v0

    shl-int/lit8 v8, v8, 0x18

    sub-int v9, v5, v1

    int-to-float v9, v9

    mul-float v9, v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v1

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    sub-int v9, v6, v2

    int-to-float v9, v9

    mul-float v9, v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v2

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    sub-int v9, v7, v3

    int-to-float v9, v9

    mul-float v9, v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v3

    or-int/2addr v8, v9

    return v8
.end method

.method private getRotation()F
    .locals 1

    .line 423
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    return v0
.end method

.method private setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .line 419
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    .line 420
    return-void
.end method

.method private setSizeParameters(FFFF)V
    .locals 5
    .param p1, "centerRadius"    # F
    .param p2, "strokeWidth"    # F
    .param p3, "arrowWidth"    # F
    .param p4, "arrowHeight"    # F

    .line 148
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 149
    .local v0, "ring":Landroid/support/v4/widget/CircularProgressDrawable$Ring;
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 150
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v2, "screenDensity":F
    mul-float v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 153
    mul-float v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 154
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 155
    mul-float v3, p3, v2

    mul-float v4, p4, v2

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 156
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 559
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 560
    .local v0, "ring":Landroid/support/v4/widget/CircularProgressDrawable$Ring;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 561
    .local v1, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable$1;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$1;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 571
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 572
    sget-object v2, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    new-instance v2, Landroid/support/v4/widget/CircularProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$2;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    iput-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    .line 609
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 493
    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 494
    sub-float v0, p1, v0

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    .line 495
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v1

    .line 496
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getNextColor()I

    move-result v2

    .line 494
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->evaluateColorChange(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColor(I)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColor(I)V

    .line 500
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 394
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 395
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 396
    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 397
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 399
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getArrowEnabled()Z
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getShowArrow()Z

    move-result v0

    return v0
.end method

.method public getArrowHeight()F
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getArrowHeight()F

    move-result v0

    return v0
.end method

.method public getArrowScale()F
    .locals 1

    .line 286
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getArrowScale()F

    move-result v0

    return v0
.end method

.method public getArrowWidth()F
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getArrowWidth()F

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getCenterRadius()F
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getCenterRadius()F

    move-result v0

    return v0
.end method

.method public getColorSchemeColors()[I
    .locals 1

    .line 377
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getColors()[I

    move-result-object v0

    return-object v0
.end method

.method public getEndTrim()F
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 428
    const/4 v0, -0x3

    return v0
.end method

.method public getProgressRotation()F
    .locals 1

    .line 337
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getRotation()F

    move-result v0

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 403
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setAlpha(I)V

    .line 404
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 405
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 257
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 259
    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 276
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 278
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 296
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 297
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 367
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 368
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 369
    return-void
.end method

.method public setCenterRadius(F)V
    .locals 1
    .param p1, "centerRadius"    # F

    .line 209
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 210
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 211
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 414
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 415
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 416
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .line 387
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 388
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 389
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 390
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 346
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 347
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 348
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 326
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 327
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 328
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 329
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "strokeCap"    # Landroid/graphics/Paint$Cap;

    .line 219
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 220
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 221
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 189
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 191
    return-void
.end method

.method public setStyle(I)V
    .locals 4
    .param p1, "size"    # I

    .line 165
    if-nez p1, :cond_0

    .line 166
    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_0

    .line 169
    :cond_0
    const/high16 v0, 0x40f00000    # 7.5f

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    .line 171
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 172
    return-void
.end method

.method public start()V
    .locals 3

    .line 441
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 442
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 444
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    .line 446
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 447
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 450
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 451
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 452
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 454
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 461
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->setRotation(F)V

    .line 463
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 464
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 465
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 466
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 467
    return-void
.end method
