.class Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewElevationComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 3
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .line 1941
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v0

    .line 1942
    .local v0, "lz":F
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v1

    .line 1943
    .local v1, "rz":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 1944
    const/4 v2, -0x1

    return v2

    .line 1945
    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 1946
    const/4 v2, 0x1

    return v2

    .line 1948
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1938
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
