.class public Landroid/support/v7/widget/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DividerItem"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/DividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .line 64
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    .line 65
    sget-object v0, Landroid/support/v7/widget/DividerItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v1, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "DividerItem"

    const-string v2, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/DividerItemDecoration;->setOrientation(I)V

    .line 73
    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 147
    .local v0, "top":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 148
    .local v1, "bottom":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    .line 149
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 148
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 151
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_0
    const/4 v0, 0x0

    .line 152
    .restart local v0    # "top":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    .line 155
    .restart local v1    # "bottom":I
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 156
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 157
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 158
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 159
    iget-object v5, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 160
    .local v5, "right":I
    iget-object v6, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int v6, v5, v6

    .line 161
    .local v6, "left":I
    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "right":I
    .end local v6    # "left":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 120
    .local v0, "left":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 121
    .local v1, "right":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    .line 122
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 121
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 124
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_0
    const/4 v0, 0x0

    .line 125
    .restart local v0    # "left":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 128
    .restart local v1    # "right":I
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 129
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 130
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 131
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 132
    iget-object v5, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 133
    .local v5, "bottom":I
    iget-object v6, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v5, v6

    .line 134
    .local v6, "top":I
    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0, v6, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "bottom":I
    .end local v6    # "top":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 138
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    return-void

    .line 174
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/DividerItemDecoration;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 103
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_2
    :goto_1
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 95
    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 82
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid orientation. It should be either HORIZONTAL or VERTICAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    :goto_0
    iput p1, p0, Landroid/support/v7/widget/DividerItemDecoration;->mOrientation:I

    .line 87
    return-void
.end method
