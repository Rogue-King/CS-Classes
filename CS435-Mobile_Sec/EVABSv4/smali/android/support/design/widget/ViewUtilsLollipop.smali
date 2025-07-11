.class Landroid/support/design/widget/ViewUtilsLollipop;
.super Ljava/lang/Object;
.source "ViewUtilsLollipop.java"


# static fields
.field private static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010448

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBoundsViewOutlineProvider(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 36
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 37
    return-void
.end method

.method static setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "elevation"    # F

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$integer;->app_bar_elevation_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 61
    .local v0, "dur":I
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 64
    .local v1, "sla":Landroid/animation/StateListAnimator;
    const/4 v2, 0x3

    new-array v2, v2, [I

    const v3, 0x101000e

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v5, Landroid/support/design/R$attr;->state_collapsible:I

    const/4 v6, 0x1

    aput v5, v2, v6

    sget v5, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int v5, v5

    const/4 v7, 0x2

    aput v5, v2, v7

    new-array v5, v6, [F

    const/4 v7, 0x0

    aput v7, v5, v4

    .line 66
    const-string v8, "elevation"

    invoke-static {p0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v9, v0

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 64
    invoke-virtual {v1, v2, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 69
    new-array v2, v6, [I

    aput v3, v2, v4

    new-array v3, v6, [F

    aput p1, v3, v4

    .line 70
    invoke-static {p0, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v9, v0

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 73
    new-array v2, v4, [I

    new-array v3, v6, [F

    aput v7, v3, v4

    .line 74
    invoke-static {p0, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 77
    return-void
.end method

.method static setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Landroid/support/design/widget/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 45
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    nop

    .line 47
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 46
    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v2

    .line 48
    .local v2, "sla":Landroid/animation/StateListAnimator;
    invoke-virtual {p0, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v2    # "sla":Landroid/animation/StateListAnimator;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    nop

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method
