.class public Landroid/support/transition/ChangeScroll;
.super Landroid/support/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final PROPERTIES:[Ljava/lang/String;

.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeScroll:x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeScroll:y"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 66
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android:changeScroll:x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android:changeScroll:y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 56
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeScroll;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 57
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 51
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeScroll;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 52
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 74
    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 78
    .local v0, "view":Landroid/view/View;
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeScroll:x"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 79
    .local v1, "startX":I
    iget-object v3, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    .local v2, "endX":I
    iget-object v3, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeScroll:y"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 81
    .local v3, "startY":I
    iget-object v5, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 82
    .local v4, "endY":I
    const/4 v5, 0x0

    .line 83
    .local v5, "scrollXAnimator":Landroid/animation/Animator;
    const/4 v6, 0x0

    .line 84
    .local v6, "scrollYAnimator":Landroid/animation/Animator;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v1, v2, :cond_1

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 86
    new-array v10, v9, [I

    aput v1, v10, v8

    aput v2, v10, v7

    const-string v11, "scrollX"

    invoke-static {v0, v11, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 88
    :cond_1
    if-eq v3, v4, :cond_2

    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollY(I)V

    .line 90
    new-array v9, v9, [I

    aput v3, v9, v8

    aput v4, v9, v7

    const-string v7, "scrollY"

    invoke-static {v0, v7, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 92
    :cond_2
    invoke-static {v5, v6}, Landroid/support/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v7

    return-object v7

    .line 75
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "startX":I
    .end local v2    # "endX":I
    .end local v3    # "startY":I
    .end local v4    # "endY":I
    .end local v5    # "scrollXAnimator":Landroid/animation/Animator;
    .end local v6    # "scrollYAnimator":Landroid/animation/Animator;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Landroid/support/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-object v0
.end method
