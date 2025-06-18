.class Landroid/support/transition/AnimatorUtilsApi19;
.super Ljava/lang/Object;
.source "AnimatorUtilsApi19.java"

# interfaces
.implements Landroid/support/transition/AnimatorUtilsImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 29
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 30
    return-void
.end method

.method public pause(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 34
    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 35
    return-void
.end method

.method public resume(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 39
    invoke-virtual {p1}, Landroid/animation/Animator;->resume()V

    .line 40
    return-void
.end method
