.class Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final mLayout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/support/design/widget/CoordinatorLayout;

.field final synthetic this$0:Landroid/support/design/widget/HeaderBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p2, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 289
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior$FlingRunnable;, "Landroid/support/design/widget/HeaderBehavior<TV;>.FlingRunnable;"
    .local p3, "layout":Landroid/view/View;, "TV;"
    iput-object p1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    .line 291
    iput-object p3, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 292
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 296
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior$FlingRunnable;, "Landroid/support/design/widget/HeaderBehavior<TV;>.FlingRunnable;"
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v0, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v0, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    iget-object v3, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 305
    :cond_1
    :goto_0
    return-void
.end method
