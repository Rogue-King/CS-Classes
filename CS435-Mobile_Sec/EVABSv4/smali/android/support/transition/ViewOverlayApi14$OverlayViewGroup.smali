.class Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlayApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ViewOverlayApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup$TouchInterceptor;
    }
.end annotation


# static fields
.field static sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Landroid/view/ViewGroup;

.field mRequestingView:Landroid/view/View;

.field mViewOverlay:Landroid/support/transition/ViewOverlayApi14;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 135
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 140
    :goto_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlayApi14;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;
    .param p4, "viewOverlay"    # Landroid/support/transition/ViewOverlayApi14;

    .line 159
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 160
    iput-object p2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 161
    iput-object p3, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 162
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->setRight(I)V

    .line 163
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->setBottom(I)V

    .line 164
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    iput-object p4, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Landroid/support/transition/ViewOverlayApi14;

    .line 166
    return-void
.end method

.method private getOffset([I)V
    .locals 5
    .param p1, "offset"    # [I

    .line 283
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 284
    .local v1, "contentViewLocation":[I
    new-array v0, v0, [I

    .line 285
    .local v0, "hostViewLocation":[I
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 286
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 287
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    aput v3, p1, v2

    .line 288
    const/4 v2, 0x1

    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    aput v3, p1, v2

    .line 289
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 183
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 185
    :cond_1
    return-void
.end method

.method public add(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 203
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 208
    .local v3, "parentLocation":[I
    new-array v2, v2, [I

    .line 209
    .local v2, "hostViewLocation":[I
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 210
    iget-object v4, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 211
    const/4 v4, 0x0

    aget v5, v3, v4

    aget v4, v2, v4

    sub-int/2addr v5, v4

    invoke-static {p1, v5}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 212
    aget v4, v3, v1

    aget v5, v2, v1

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 214
    .end local v2    # "hostViewLocation":[I
    .end local v3    # "parentLocation":[I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 225
    return-void
.end method

.method public clear()V
    .locals 1

    .line 235
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->removeAllViews()V

    .line 236
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 253
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 254
    .local v1, "contentViewLocation":[I
    new-array v0, v0, [I

    .line 255
    .local v0, "hostViewLocation":[I
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 256
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 257
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v4, v1, v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 260
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 261
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 262
    iget-object v3, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 263
    .local v2, "numDrawables":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 264
    iget-object v4, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 292
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 297
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 298
    .local v1, "top":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 299
    .local v2, "offset":[I
    invoke-direct {p0, v2}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 304
    const/4 v3, 0x0

    aget v3, v2, v3

    add-int/2addr v3, v0

    const/4 v4, 0x1

    aget v4, v2, v4

    add-int/2addr v4, v1

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 305
    iget-object v3, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 307
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "offset":[I
    :cond_0
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 331
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 333
    iget-object v1, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 334
    aput v0, p1, v0

    .line 335
    aput v0, p1, v2

    .line 336
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 337
    .local v1, "offset":[I
    invoke-direct {p0, v1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 338
    aget v0, v1, v0

    aget v2, v1, v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 339
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0

    .line 342
    .end local v1    # "offset":[I
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 345
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Landroid/graphics/Rect;

    .line 314
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [I

    .line 317
    .local v1, "offset":[I
    invoke-direct {p0, v1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 318
    sget-object v2, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p3, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    nop

    .end local v1    # "offset":[I
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 249
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 242
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 271
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 193
    :cond_0
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 228
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
