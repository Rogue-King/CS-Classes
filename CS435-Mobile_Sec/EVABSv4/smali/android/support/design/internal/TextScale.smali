.class public Landroid/support/design/internal/TextScale;
.super Landroid/support/transition/Transition;
.source "TextScale.java"


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 49
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:textscale:scale"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 45
    invoke-direct {p0, p1}, Landroid/support/design/internal/TextScale;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 46
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 40
    invoke-direct {p0, p1}, Landroid/support/design/internal/TextScale;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 41
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 58
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    iget-object v1, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object v1, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "view":Landroid/widget/TextView;
    iget-object v2, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 64
    .local v2, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 65
    .local v3, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "android:textscale:scale"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_0

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 67
    .local v5, "startSize":F
    :goto_0
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :cond_2
    move v4, v6

    .line 69
    .local v4, "endSize":F
    cmpl-float v6, v5, v4

    if-nez v6, :cond_3

    .line 70
    return-object v0

    .line 73
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v6, 0x1

    aput v4, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 75
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/support/design/internal/TextScale$1;

    invoke-direct {v6, p0, v1}, Landroid/support/design/internal/TextScale$1;-><init>(Landroid/support/design/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    return-object v0

    .line 60
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "view":Landroid/widget/TextView;
    .end local v2    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "endSize":F
    .end local v5    # "startSize":F
    :cond_4
    :goto_1
    return-object v0
.end method
