.class Landroid/support/transition/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Landroid/support/transition/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlayApi14;)V

    iput-object v0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    .line 50
    return-void
.end method

.method static createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlayApi14;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 66
    invoke-static {p0}, Landroid/support/transition/ViewOverlayApi14;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 67
    .local v0, "contentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 69
    .local v1, "numChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    if-eqz v4, :cond_0

    .line 72
    move-object v4, v3

    check-cast v4, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    iget-object v4, v4, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Landroid/support/transition/ViewOverlayApi14;

    return-object v4

    .line 69
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/support/transition/ViewGroupOverlayApi14;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0}, Landroid/support/transition/ViewGroupOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v2

    .line 77
    .end local v1    # "numChildren":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 53
    move-object v0, p0

    .line 54
    .local v0, "parent":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 58
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public clear()V
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->clear()V

    .line 96
    return-void
.end method

.method getOverlayView()Landroid/view/ViewGroup;
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method
