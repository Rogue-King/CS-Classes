.class Landroid/support/design/widget/BaseTransientBottomBar$9;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 542
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$9;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 545
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$9;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    .line 546
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 552
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$9;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 549
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$9;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    return-void
.end method
