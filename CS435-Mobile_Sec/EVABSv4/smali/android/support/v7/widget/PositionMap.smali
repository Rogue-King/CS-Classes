.class Landroid/support/v7/widget/PositionMap;
.super Ljava/lang/Object;
.source "PositionMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/PositionMap$ContainerHelpers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 37
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v7/widget/PositionMap;-><init>(I)V

    .line 38
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 47
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 48
    if-nez p1, :cond_0

    .line 49
    sget-object v1, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_INTS:[I

    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 50
    sget-object v1, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result p1

    .line 53
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 54
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 56
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 57
    return-void
.end method

.method private gc()V
    .locals 7

    .line 151
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 152
    .local v0, "n":I
    const/4 v1, 0x0

    .line 153
    .local v1, "o":I
    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 154
    .local v2, "keys":[I
    iget-object v3, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 156
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 157
    aget-object v5, v3, v4

    .line 159
    .local v5, "val":Ljava/lang/Object;
    sget-object v6, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 160
    if-eq v4, v1, :cond_0

    .line 161
    aget v6, v2, v4

    aput v6, v2, v1

    .line 162
    aput-object v5, v3, v1

    .line 163
    const/4 v6, 0x0

    aput-object v6, v3, v4

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 156
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 171
    iput v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 174
    return-void
.end method

.method static idealBooleanArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 410
    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .line 400
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 401
    const/4 v1, 0x1

    shl-int v2, v1, v0

    add-int/lit8 v2, v2, -0xc

    if-gt p0, v2, :cond_0

    .line 402
    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    .line 400
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "i":I
    :cond_1
    return p0
.end method

.method static idealCharArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 418
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static idealFloatArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 426
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealIntArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 422
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealLongArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 434
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static idealObjectArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 430
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealShortArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 414
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 337
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-gt p1, v0, :cond_0

    .line 338
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/PositionMap;->put(ILjava/lang/Object;)V

    .line 339
    return-void

    .line 342
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 343
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 346
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 347
    .local v0, "pos":I
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 348
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v1

    .line 350
    .local v1, "n":I
    new-array v2, v1, [I

    .line 351
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 354
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iput-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 358
    iput-object v3, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 361
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v1, v0

    .line 362
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 363
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 364
    return-void
.end method

.method public clear()V
    .locals 4

    .line 321
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 322
    .local v0, "n":I
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 324
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 325
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 329
    iput-boolean v2, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 330
    return-void
.end method

.method public clone()Landroid/support/v7/widget/PositionMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/PositionMap<",
            "TE;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    const/4 v0, 0x0

    .line 64
    .local v0, "clone":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/PositionMap;

    move-object v0, v1

    .line 65
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 66
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 70
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/PositionMap;->clone()Landroid/support/v7/widget/PositionMap;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 4
    .param p1, "key"    # I

    .line 100
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 102
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 104
    aput-object v3, v1, v0

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 108
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 78
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/PositionMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 87
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 89
    .local v0, "i":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    aget-object v1, v1, v0

    return-object v1

    .line 90
    :cond_1
    :goto_0
    return-object p2
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 286
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 304
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 308
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v0, v1, :cond_2

    .line 309
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 310
    return v0

    .line 308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public insertKeyRange(II)V
    .locals 0
    .param p1, "keyStart"    # I
    .param p2, "count"    # I

    .line 142
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    return-void
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 246
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 250
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 184
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 185
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 187
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 189
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    .line 190
    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v2, v0

    .line 191
    aput-object p2, v1, v0

    .line 192
    return-void

    .line 195
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 196
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 199
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v1

    xor-int/lit8 v0, v1, -0x1

    .line 202
    :cond_2
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 203
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v1

    .line 205
    .local v1, "n":I
    new-array v2, v1, [I

    .line 206
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 209
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 213
    iput-object v3, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 216
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 218
    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v1, v0

    .line 223
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 224
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 226
    :goto_0
    return-void
.end method

.method public remove(I)V
    .locals 0
    .param p1, "key"    # I

    .line 114
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/PositionMap;->delete(I)V

    .line 115
    return-void
.end method

.method public removeAt(I)V
    .locals 3
    .param p1, "index"    # I

    .line 121
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 122
    aput-object v2, v0, p1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 125
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 134
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/PositionMap;->removeAt(I)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public removeKeyRange(Ljava/util/ArrayList;II)V
    .locals 0
    .param p2, "keyStart"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 146
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p1, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 278
    return-void
.end method

.method public size()I
    .locals 1

    .line 233
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 237
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 375
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/PositionMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 376
    const-string v0, "{}"

    return-object v0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v1, v2, :cond_3

    .line 382
    if-lez v1, :cond_1

    .line 383
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/PositionMap;->keyAt(I)I

    move-result v2

    .line 386
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/PositionMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 389
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 390
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 392
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 260
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 264
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
