.class public Lcom/flaviofaria/kenburnsview/KenBurnsView;
.super Landroid/widget/ImageView;
.source "KenBurnsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY:J = 0x10L


# instance fields
.field private mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

.field private mDrawableRect:Landroid/graphics/RectF;

.field private mElapsedTime:J

.field private mInitialized:Z

.field private mLastFrameTime:J

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mPaused:Z

.field private mTransGen:Lcom/flaviofaria/kenburnsview/TransitionGenerator;

.field private mTransitionListener:Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;

.field private final mViewportRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;

    invoke-direct {v0}, Lcom/flaviofaria/kenburnsview/RandomTransitionGenerator;-><init>()V

    iput-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mTransGen:Lcom/flaviofaria/kenburnsview/TransitionGenerator;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mInitialized:Z

    .line 90
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    return-void
.end method

.method private fireTransitionEnd(Lcom/flaviofaria/kenburnsview/Transition;)V
    .locals 1
    .param p1, "transition"    # Lcom/flaviofaria/kenburnsview/Transition;

    .line 262
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mTransitionListener:Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 263
    invoke-interface {v0, p1}, Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;->onTransitionEnd(Lcom/flaviofaria/kenburnsview/Transition;)V

    .line 265
    :cond_0
    return-void
.end method

.method private fireTransitionStart(Lcom/flaviofaria/kenburnsview/Transition;)V
    .locals 1
    .param p1, "transition"    # Lcom/flaviofaria/kenburnsview/Transition;

    .line 251
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mTransitionListener:Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 252
    invoke-interface {v0, p1}, Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;->onTransitionStart(Lcom/flaviofaria/kenburnsview/Transition;)V

    .line 254
    :cond_0
    return-void
.end method

.method private handleImageChange()V
    .locals 1

    .line 308
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->updateDrawableBounds()V

    .line 313
    iget-boolean v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->startNewTransition()V

    .line 316
    :cond_0
    return-void
.end method

.method private hasBounds()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private startNewTransition()V
    .locals 3

    .line 209
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->hasBounds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mTransGen:Lcom/flaviofaria/kenburnsview/TransitionGenerator;

    iget-object v1, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-interface {v0, v1, v2}, Lcom/flaviofaria/kenburnsview/TransitionGenerator;->generateNextTransition(Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/flaviofaria/kenburnsview/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mElapsedTime:J

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mLastFrameTime:J

    .line 215
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

    invoke-direct {p0, v0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->fireTransitionStart(Lcom/flaviofaria/kenburnsview/Transition;)V

    .line 216
    return-void
.end method

.method private updateDrawableBounds()V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 297
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 300
    :cond_1
    return-void
.end method

.method private updateViewport(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 284
    iget-object v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 285
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 153
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mPaused:Z

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 155
    iget-object v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->updateDrawableBounds()V

    goto/16 :goto_0

    .line 157
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->hasBounds()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    iget-object v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

    if-nez v2, :cond_1

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->startNewTransition()V

    .line 162
    :cond_1
    iget-object v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

    invoke-virtual {v2}, Lcom/flaviofaria/kenburnsview/Transition;->getDestinyRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 163
    iget-wide v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mElapsedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mLastFrameTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mElapsedTime:J

    .line 164
    iget-object v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

    iget-wide v3, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mElapsedTime:J

    invoke-virtual {v2, v3, v4}, Lcom/flaviofaria/kenburnsview/Transition;->getInterpolatedRect(J)Landroid/graphics/RectF;

    move-result-object v2

    .line 166
    .local v2, "currentRect":Landroid/graphics/RectF;
    iget-object v3, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    .line 167
    .local v3, "widthScale":F
    iget-object v4, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    .line 169
    .local v4, "heightScale":F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 171
    .local v5, "currRectToDrwScale":F
    iget-object v6, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    .line 172
    .local v6, "vpWidthScale":F
    iget-object v7, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    .line 173
    .local v7, "vpHeightScale":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 175
    .local v8, "currRectToVpScale":F
    mul-float v9, v5, v8

    .line 177
    .local v9, "totalScale":F
    iget-object v10, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget v11, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    mul-float v10, v10, v9

    .line 178
    .local v10, "translX":F
    iget-object v11, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget v12, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    mul-float v11, v11, v9

    .line 182
    .local v11, "translY":F
    iget-object v12, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 183
    iget-object v12, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    neg-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    iget-object v15, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    neg-float v15, v15

    div-float/2addr v15, v14

    invoke-virtual {v12, v13, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 184
    iget-object v12, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 185
    iget-object v12, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 187
    iget-object v12, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v12}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 190
    iget-wide v12, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mElapsedTime:J

    iget-object v14, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

    invoke-virtual {v14}, Lcom/flaviofaria/kenburnsview/Transition;->getDuration()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-ltz v16, :cond_2

    .line 191
    iget-object v12, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

    invoke-direct {v0, v12}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->fireTransitionEnd(Lcom/flaviofaria/kenburnsview/Transition;)V

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->startNewTransition()V

    .line 194
    .end local v2    # "currentRect":Landroid/graphics/RectF;
    .end local v3    # "widthScale":F
    .end local v4    # "heightScale":F
    .end local v5    # "currRectToDrwScale":F
    .end local v6    # "vpWidthScale":F
    .end local v7    # "vpHeightScale":F
    .end local v8    # "currRectToVpScale":F
    .end local v9    # "totalScale":F
    .end local v10    # "translX":F
    .end local v11    # "translY":F
    :cond_2
    goto :goto_0

    .line 195
    :cond_3
    iget-object v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mCurrentTrans:Lcom/flaviofaria/kenburnsview/Transition;

    invoke-direct {v0, v2}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->fireTransitionEnd(Lcom/flaviofaria/kenburnsview/Transition;)V

    .line 198
    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mLastFrameTime:J

    .line 199
    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->postInvalidateDelayed(J)V

    .line 201
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 147
    invoke-virtual {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->restart()V

    .line 148
    return-void
.end method

.method public pause()V
    .locals 1

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mPaused:Z

    .line 329
    return-void
.end method

.method public restart()V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->getWidth()I

    move-result v0

    .line 224
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->getHeight()I

    move-result v1

    .line 226
    .local v1, "height":I
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-direct {p0, v2, v3}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->updateViewport(FF)V

    .line 231
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->updateDrawableBounds()V

    .line 233
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->startNewTransition()V

    .line 234
    return-void

    .line 227
    :cond_1
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mPaused:Z

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mLastFrameTime:J

    .line 339
    invoke-virtual {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->invalidate()V

    .line 340
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 118
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->handleImageChange()V

    .line 120
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->handleImageChange()V

    .line 141
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 125
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->handleImageChange()V

    .line 127
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 132
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 133
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->handleImageChange()V

    .line 134
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 97
    return-void
.end method

.method public setTransitionGenerator(Lcom/flaviofaria/kenburnsview/TransitionGenerator;)V
    .locals 0
    .param p1, "transgen"    # Lcom/flaviofaria/kenburnsview/TransitionGenerator;

    .line 273
    iput-object p1, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mTransGen:Lcom/flaviofaria/kenburnsview/TransitionGenerator;

    .line 274
    invoke-direct {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->startNewTransition()V

    .line 275
    return-void
.end method

.method public setTransitionListener(Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;)V
    .locals 0
    .param p1, "transitionListener"    # Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;

    .line 320
    iput-object p1, p0, Lcom/flaviofaria/kenburnsview/KenBurnsView;->mTransitionListener:Lcom/flaviofaria/kenburnsview/KenBurnsView$TransitionListener;

    .line 321
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->pause()V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/flaviofaria/kenburnsview/KenBurnsView;->resume()V

    .line 108
    nop

    .line 113
    :goto_0
    return-void
.end method
