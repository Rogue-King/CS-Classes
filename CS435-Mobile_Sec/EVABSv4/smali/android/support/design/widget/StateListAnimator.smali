.class final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final mAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field mRunningAnimator:Landroid/animation/ValueAnimator;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 31
    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    .line 33
    new-instance v0, Landroid/support/design/widget/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 107
    return-void
.end method

.method private cancel()V
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    .line 93
    :cond_0
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .locals 1
    .param p1, "match"    # Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 84
    iget-object v0, p1, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    .line 85
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .line 51
    new-instance v0, Landroid/support/design/widget/StateListAnimator$Tuple;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 52
    .local v0, "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    .line 105
    :cond_0
    return-void
.end method

.method setState([I)V
    .locals 5
    .param p1, "state"    # [I

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "match":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 62
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 63
    iget-object v3, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 64
    .local v3, "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v4, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    move-object v0, v3

    .line 66
    goto :goto_1

    .line 62
    .end local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v0, v2, :cond_2

    .line 70
    return-void

    .line 72
    :cond_2
    if-eqz v2, :cond_3

    .line 73
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 76
    :cond_3
    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 78
    if-eqz v0, :cond_4

    .line 79
    invoke-direct {p0, v0}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    .line 81
    :cond_4
    return-void
.end method
