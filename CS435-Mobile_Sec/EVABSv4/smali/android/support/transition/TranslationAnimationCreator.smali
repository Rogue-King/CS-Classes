.class Landroid/support/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 19
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroid/support/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 51
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v10

    .line 52
    .local v10, "terminalX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v11

    .line 53
    .local v11, "terminalY":F
    iget-object v0, v9, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v12, v0

    check-cast v12, [I

    .line 54
    .local v12, "startPosition":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v12, :cond_0

    .line 55
    aget v2, v12, v1

    sub-int v2, v2, p2

    int-to-float v2, v2

    add-float/2addr v2, v10

    .line 56
    .end local p4    # "startX":F
    .local v2, "startX":F
    aget v3, v12, v0

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float/2addr v3, v11

    move v13, v2

    move v14, v3

    .end local p5    # "startY":F
    .local v3, "startY":F
    goto :goto_0

    .line 54
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .restart local p4    # "startX":F
    .restart local p5    # "startY":F
    :cond_0
    move/from16 v13, p4

    move/from16 v14, p5

    .line 59
    .end local p4    # "startX":F
    .end local p5    # "startY":F
    .local v13, "startX":F
    .local v14, "startY":F
    :goto_0
    sub-float v2, v13, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v15, p2, v2

    .line 60
    .local v15, "startPosX":I
    sub-float v2, v14, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v16, p3, v2

    .line 62
    .local v16, "startPosY":I
    invoke-virtual {v8, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    invoke-virtual {v8, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    cmpl-float v2, v13, p6

    if-nez v2, :cond_1

    cmpl-float v2, v14, p7

    if-nez v2, :cond_1

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v2, [F

    aput v13, v5, v1

    aput p6, v5, v0

    .line 68
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v14, v2, v1

    aput p7, v2, v0

    .line 69
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v0

    .line 67
    invoke-static {v8, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 71
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v9, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v3, v15

    move/from16 v4, v16

    move v5, v10

    move v6, v11

    move-object v8, v7

    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .local v8, "anim":Landroid/animation/ObjectAnimator;
    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/support/transition/TranslationAnimationCreator$1;)V

    .line 73
    .local v0, "listener":Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;
    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-static {v8, v0}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 75
    move-object/from16 v1, p8

    invoke-virtual {v8, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    return-object v8
.end method
