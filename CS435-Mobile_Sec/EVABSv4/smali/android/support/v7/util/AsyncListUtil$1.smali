.class Landroid/support/v7/util/AsyncListUtil$1;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/util/AsyncListUtil;


# direct methods
.method constructor <init>(Landroid/support/v7/util/AsyncListUtil;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/util/AsyncListUtil;

    .line 208
    .local p0, "this":Landroid/support/v7/util/AsyncListUtil$1;, "Landroid/support/v7/util/AsyncListUtil$1;"
    iput-object p1, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRequestedGeneration(I)Z
    .locals 1
    .param p1, "generation"    # I

    .line 285
    .local p0, "this":Landroid/support/v7/util/AsyncListUtil$1;, "Landroid/support/v7/util/AsyncListUtil$1;"
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v0, v0, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private recycleAllTiles()V
    .locals 3

    .line 278
    .local p0, "this":Landroid/support/v7/util/AsyncListUtil$1;, "Landroid/support/v7/util/AsyncListUtil$1;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    invoke-virtual {v1}, Landroid/support/v7/util/TileList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    invoke-virtual {v2, v0}, Landroid/support/v7/util/TileList;->getAtIndex(I)Landroid/support/v7/util/TileList$Tile;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    invoke-virtual {v0}, Landroid/support/v7/util/TileList;->clear()V

    .line 282
    return-void
.end method


# virtual methods
.method public addTile(ILandroid/support/v7/util/TileList$Tile;)V
    .locals 5
    .param p1, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v7/util/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 229
    .local p0, "this":Landroid/support/v7/util/AsyncListUtil$1;, "Landroid/support/v7/util/AsyncListUtil$1;"
    .local p2, "tile":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    invoke-direct {p0, p1}, Landroid/support/v7/util/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v0, p2}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 234
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    invoke-virtual {v0, p2}, Landroid/support/v7/util/TileList;->addOrReplace(Landroid/support/v7/util/TileList$Tile;)Landroid/support/v7/util/TileList$Tile;

    move-result-object v0

    .line 237
    .local v0, "duplicate":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    if-eqz v0, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate tile @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncListUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 245
    :cond_1
    iget v1, p2, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    iget v2, p2, Landroid/support/v7/util/TileList$Tile;->mItemCount:I

    add-int/2addr v1, v2

    .line 246
    .local v1, "endPosition":I
    const/4 v2, 0x0

    .line 247
    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 248
    iget-object v3, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 249
    .local v3, "position":I
    iget v4, p2, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    if-gt v4, v3, :cond_2

    if-ge v3, v1, :cond_2

    .line 250
    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 251
    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    invoke-virtual {v4, v3}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->onItemLoaded(I)V

    goto :goto_1

    .line 253
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 255
    .end local v3    # "position":I
    :goto_1
    goto :goto_0

    .line 256
    :cond_3
    return-void
.end method

.method public removeTile(II)V
    .locals 3
    .param p1, "generation"    # I
    .param p2, "position"    # I

    .line 260
    .local p0, "this":Landroid/support/v7/util/AsyncListUtil$1;, "Landroid/support/v7/util/AsyncListUtil$1;"
    invoke-direct {p0, p1}, Landroid/support/v7/util/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    invoke-virtual {v0, p2}, Landroid/support/v7/util/TileList;->removeAtPos(I)Landroid/support/v7/util/TileList$Tile;

    move-result-object v0

    .line 264
    .local v0, "tile":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    if-nez v0, :cond_1

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tile not found @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncListUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 272
    return-void
.end method

.method public updateItemCount(II)V
    .locals 2
    .param p1, "generation"    # I
    .param p2, "itemCount"    # I

    .line 214
    .local p0, "this":Landroid/support/v7/util/AsyncListUtil$1;, "Landroid/support/v7/util/AsyncListUtil$1;"
    invoke-direct {p0, p1}, Landroid/support/v7/util/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iput p2, v0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    .line 218
    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    invoke-virtual {v0}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->onDataRefresh()V

    .line 219
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v1, v0, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    iput v1, v0, Landroid/support/v7/util/AsyncListUtil;->mDisplayedGeneration:I

    .line 220
    invoke-direct {p0}, Landroid/support/v7/util/AsyncListUtil$1;->recycleAllTiles()V

    .line 222
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/util/AsyncListUtil;->mAllowScrollHints:Z

    .line 224
    invoke-virtual {v0}, Landroid/support/v7/util/AsyncListUtil;->updateRange()V

    .line 225
    return-void
.end method
