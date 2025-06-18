.class public Landroid/support/constraint/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroid/support/constraint/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .locals 3
    .param p1, "arrayRow"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 47
    const/16 v1, 0x8

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 52
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 55
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 58
    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 77
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 80
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 100
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    .line 101
    iput-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    .line 107
    return-void
.end method


# virtual methods
.method public final add(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 10
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .line 212
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 217
    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 218
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v0, v1

    .line 219
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v2, v0, v1

    .line 220
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v3, v0, v1

    .line 221
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 222
    iget-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_1

    .line 224
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 226
    :cond_1
    return-void

    .line 228
    :cond_2
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 229
    .local v1, "current":I
    const/4 v5, -0x1

    .line 230
    .local v5, "previous":I
    const/4 v6, 0x0

    .line 231
    .local v6, "counter":I
    :goto_0
    if-eq v1, v3, :cond_8

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_8

    .line 232
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v1

    .line 233
    .local v7, "idx":I
    iget v8, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_6

    .line 234
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    .line 236
    aget v2, v2, v1

    cmpl-float v0, v2, v0

    if-nez v0, :cond_5

    .line 237
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v1, v0, :cond_3

    .line 238
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_1

    .line 240
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v0, v1

    aput v2, v0, v5

    .line 242
    :goto_1
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v0, v0, v7

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 243
    iget-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v0, :cond_4

    .line 245
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 247
    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 249
    :cond_5
    return-void

    .line 251
    :cond_6
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v1

    iget v9, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v8, v9, :cond_7

    .line 252
    move v5, v1

    .line 254
    :cond_7
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v8, v1

    .end local v7    # "idx":I
    add-int/lit8 v6, v6, 0x1

    .line 255
    goto :goto_0

    .line 260
    :cond_8
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v7, v0, 0x1

    .line 261
    .local v7, "availableIndice":I
    iget-boolean v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_a

    .line 264
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v0, v8, v0

    if-ne v0, v3, :cond_9

    .line 265
    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_2

    .line 267
    :cond_9
    array-length v7, v8

    .line 270
    :cond_a
    :goto_2
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v0

    if-lt v7, v8, :cond_c

    .line 271
    iget v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    array-length v0, v0

    if-ge v8, v0, :cond_c

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v8

    if-ge v0, v9, :cond_c

    .line 274
    aget v8, v8, v0

    if-ne v8, v3, :cond_b

    .line 275
    move v7, v0

    .line 276
    goto :goto_4

    .line 273
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 282
    .end local v0    # "i":I
    :cond_c
    :goto_4
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v0

    if-lt v7, v8, :cond_d

    .line 283
    array-length v7, v0

    .line 284
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 285
    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 286
    add-int/lit8 v0, v7, -0x1

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 287
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 288
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 289
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 293
    :cond_d
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v2, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v2, v0, v7

    .line 294
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, v7

    .line 295
    if-eq v5, v3, :cond_e

    .line 296
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v0, v5

    aput v2, v0, v7

    .line 297
    aput v7, v0, v5

    goto :goto_5

    .line 299
    :cond_e
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v2, v0, v7

    .line 300
    iput v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 302
    :goto_5
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 303
    iget-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_f

    .line 305
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 307
    :cond_f
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v3, v2

    if-lt v0, v3, :cond_10

    .line 308
    iput-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 309
    array-length v0, v2

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 311
    :cond_10
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 357
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 359
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 360
    return-void
.end method

.method final containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 6
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 369
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 370
    return v1

    .line 372
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 373
    .local v0, "current":I
    const/4 v3, 0x0

    .line 374
    .local v3, "counter":I
    :goto_0
    if-eq v0, v2, :cond_2

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_2

    .line 375
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget v5, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    .line 376
    const/4 v1, 0x1

    return v1

    .line 378
    :cond_1
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_2
    return v1
.end method

.method public display()V
    .locals 6

    .line 662
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 663
    .local v0, "count":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 664
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 665
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 666
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v2, :cond_0

    .line 667
    goto :goto_1

    .line 669
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 664
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method divideByAmount(F)V
    .locals 4
    .param p1, "amount"    # F

    .line 419
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 420
    .local v0, "current":I
    const/4 v1, 0x0

    .line 421
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    .line 422
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 423
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 4
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .line 642
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 643
    .local v0, "current":I
    const/4 v1, 0x0

    .line 644
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 645
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v0

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_0

    .line 646
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    return v2

    .line 648
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 6

    .line 578
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_3

    .line 580
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 581
    .local v0, "current":I
    const/4 v1, 0x0

    .line 582
    .local v1, "counter":I
    const/4 v2, 0x0

    .line 583
    .local v2, "pivot":Landroid/support/constraint/solver/SolverVariable;
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_2

    .line 584
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 588
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    .line 589
    .local v3, "v":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    iget v5, v3, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v4, v5, :cond_1

    .line 590
    :cond_0
    move-object v2, v3

    .line 593
    .end local v3    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_1
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_2
    return-object v2

    .line 597
    .end local v0    # "current":I
    .end local v1    # "counter":I
    .end local v2    # "pivot":Landroid/support/constraint/solver/SolverVariable;
    :cond_3
    return-object v0
.end method

.method final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .locals 4
    .param p1, "index"    # I

    .line 607
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 608
    .local v0, "current":I
    const/4 v1, 0x0

    .line 609
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 610
    if-ne v1, p1, :cond_0

    .line 611
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    return-object v2

    .line 613
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method final getVariableValue(I)F
    .locals 3
    .param p1, "index"    # I

    .line 625
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 626
    .local v0, "current":I
    const/4 v1, 0x0

    .line 627
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 628
    if-ne v1, p1, :cond_0

    .line 629
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    return v2

    .line 631
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 4

    .line 389
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 390
    .local v0, "current":I
    const/4 v1, 0x0

    .line 391
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 392
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 393
    const/4 v2, 0x1

    return v2

    .line 395
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method invert()V
    .locals 5

    .line 404
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 405
    .local v0, "current":I
    const/4 v1, 0x0

    .line 406
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    .line 407
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v0

    .line 408
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 10

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "restrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 450
    .local v1, "unrestrictedCandidate":Landroid/support/constraint/solver/SolverVariable;
    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 451
    .local v2, "current":I
    const/4 v3, 0x0

    .line 452
    .local v3, "counter":I
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_6

    .line 453
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v4, v2

    .line 454
    .local v5, "amount":F
    const v6, 0x3a83126f    # 0.001f

    .line 455
    .local v6, "epsilon":F
    const/4 v7, 0x0

    cmpg-float v8, v5, v7

    if-gez v8, :cond_0

    .line 456
    neg-float v8, v6

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    .line 457
    aput v7, v4, v2

    .line 458
    const/4 v5, 0x0

    goto :goto_1

    .line 461
    :cond_0
    cmpg-float v8, v5, v6

    if-gez v8, :cond_1

    .line 462
    aput v7, v4, v2

    .line 463
    const/4 v5, 0x0

    .line 466
    :cond_1
    :goto_1
    cmpl-float v4, v5, v7

    if-eqz v4, :cond_5

    .line 467
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v2

    aget-object v4, v4, v8

    .line 468
    .local v4, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v8, v4, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v9, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v8, v9, :cond_3

    .line 469
    cmpg-float v7, v5, v7

    if-gez v7, :cond_2

    .line 470
    return-object v4

    .line 471
    :cond_2
    if-nez v1, :cond_5

    .line 472
    move-object v1, v4

    goto :goto_2

    .line 474
    :cond_3
    cmpg-float v7, v5, v7

    if-gez v7, :cond_5

    if-eqz v0, :cond_4

    iget v7, v4, Landroid/support/constraint/solver/SolverVariable;->strength:I

    iget v8, v0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v7, v8, :cond_5

    .line 475
    :cond_4
    move-object v0, v4

    .line 478
    .end local v4    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_5
    :goto_2
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v4, v2

    .end local v5    # "amount":F
    .end local v6    # "epsilon":F
    add-int/lit8 v3, v3, 0x1

    .line 479
    goto :goto_0

    .line 480
    :cond_6
    if-eqz v1, :cond_7

    .line 481
    return-object v1

    .line 483
    :cond_7
    return-object v0
.end method

.method public final put(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 10
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .line 116
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 118
    return-void

    .line 121
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 122
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 123
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v0, v1

    .line 124
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v4, v0, v1

    .line 125
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v2, v0, v1

    .line 126
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 127
    iget-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_1

    .line 129
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 131
    :cond_1
    return-void

    .line 133
    :cond_2
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 134
    .local v0, "current":I
    const/4 v4, -0x1

    .line 135
    .local v4, "previous":I
    const/4 v5, 0x0

    .line 136
    .local v5, "counter":I
    :goto_0
    if-eq v0, v2, :cond_5

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_5

    .line 137
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_3

    .line 138
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v1, v0

    .line 139
    return-void

    .line 141
    :cond_3
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_4

    .line 142
    move v4, v0

    .line 144
    :cond_4
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :cond_5
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v7, v6, 0x1

    .line 151
    .local v7, "availableIndice":I
    iget-boolean v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_7

    .line 154
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v8, v6

    if-ne v6, v2, :cond_6

    .line 155
    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_1

    .line 157
    :cond_6
    array-length v7, v8

    .line 160
    :cond_7
    :goto_1
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v6

    if-lt v7, v8, :cond_9

    .line 161
    iget v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    array-length v6, v6

    if-ge v8, v6, :cond_9

    .line 163
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v8, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v8

    if-ge v6, v9, :cond_9

    .line 164
    aget v8, v8, v6

    if-ne v8, v2, :cond_8

    .line 165
    move v7, v6

    .line 166
    goto :goto_3

    .line 163
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 172
    .end local v6    # "i":I
    :cond_9
    :goto_3
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v6

    if-lt v7, v8, :cond_a

    .line 173
    array-length v7, v6

    .line 174
    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 175
    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 176
    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 177
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 178
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 179
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 183
    :cond_a
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v6, v1, v7

    .line 184
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v1, v7

    .line 185
    if-eq v4, v2, :cond_b

    .line 186
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v1, v4

    aput v2, v1, v7

    .line 187
    aput v7, v1, v4

    goto :goto_4

    .line 189
    :cond_b
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v2, v1, v7

    .line 190
    iput v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 192
    :goto_4
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 193
    iget-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v1, :cond_c

    .line 195
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 197
    :cond_c
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_d

    .line 198
    iput-boolean v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 200
    :cond_d
    return-void
.end method

.method public final remove(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 7
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .line 320
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-ne v0, p1, :cond_0

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 323
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 324
    return v1

    .line 326
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 327
    .local v0, "current":I
    const/4 v3, -0x1

    .line 328
    .local v3, "previous":I
    const/4 v4, 0x0

    .line 329
    .local v4, "counter":I
    :goto_0
    if-eq v0, v2, :cond_5

    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_5

    .line 330
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    .line 331
    .local v5, "idx":I
    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_4

    .line 332
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_2

    .line 333
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_1

    .line 335
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v1, v0

    aput v6, v1, v3

    .line 337
    :goto_1
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v1, v5

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 338
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 339
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v2, v1, v0

    .line 340
    iget-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v1, :cond_3

    .line 342
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 344
    :cond_3
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v1, v1, v0

    return v1

    .line 346
    :cond_4
    move v3, v0

    .line 347
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    .end local v5    # "idx":I
    add-int/lit8 v4, v4, 0x1

    .line 348
    goto :goto_0

    .line 349
    :cond_5
    return v1
.end method

.method sizeInBytes()I
    .locals 2

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "size":I
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 657
    add-int/lit8 v0, v0, 0x24

    .line 658
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 681
    const-string v0, ""

    .line 682
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 683
    .local v1, "current":I
    const/4 v2, 0x0

    .line 684
    .local v2, "counter":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_0

    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_0
    return-object v0
.end method

.method updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 4
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .line 434
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 435
    .local v0, "current":I
    const/4 v1, 0x0

    .line 436
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    .line 437
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/SolverVariable;->addClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 438
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V
    .locals 10
    .param p1, "self"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "definition"    # Landroid/support/constraint/solver/ArrayRow;

    .line 496
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 497
    .local v0, "current":I
    const/4 v1, 0x0

    .line 498
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_2

    .line 499
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    iget-object v4, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_1

    .line 500
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    .line 501
    .local v3, "value":F
    iget-object v4, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 503
    iget-object v4, p2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 504
    .local v4, "definitionVariables":Landroid/support/constraint/solver/ArrayLinkedVariables;
    iget v5, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 505
    .local v5, "definitionCurrent":I
    const/4 v6, 0x0

    .line 506
    .local v6, "definitionCounter":I
    :goto_1
    if-eq v5, v2, :cond_0

    iget v7, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_0

    .line 507
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v7, v7, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v5

    aget-object v7, v7, v8

    .line 509
    .local v7, "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v8, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v8, v5

    .line 510
    .local v8, "definitionValue":F
    mul-float v9, v8, v3

    invoke-virtual {p0, v7, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 511
    iget-object v9, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v9, v5

    .end local v7    # "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "definitionValue":F
    add-int/lit8 v6, v6, 0x1

    .line 512
    goto :goto_1

    .line 513
    :cond_0
    iget v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v7, p2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v7, v7, v3

    add-float/2addr v2, v7

    iput v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 514
    iget-object v2, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 519
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 520
    const/4 v1, 0x0

    .line 521
    goto :goto_0

    .line 523
    .end local v3    # "value":F
    .end local v4    # "definitionVariables":Landroid/support/constraint/solver/ArrayLinkedVariables;
    .end local v5    # "definitionCurrent":I
    .end local v6    # "definitionCounter":I
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_2
    return-void
.end method

.method updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .locals 12
    .param p1, "self"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "rows"    # [Landroid/support/constraint/solver/ArrayRow;

    .line 537
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 538
    .local v0, "current":I
    const/4 v1, 0x0

    .line 539
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_2

    .line 540
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    .line 541
    .local v3, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v4, v3, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    if-eq v4, v2, :cond_1

    .line 542
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v0

    .line 543
    .local v4, "value":F
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 545
    iget v5, v3, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    aget-object v5, p2, v5

    .line 546
    .local v5, "definition":Landroid/support/constraint/solver/ArrayRow;
    iget-boolean v6, v5, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v6, :cond_0

    .line 547
    iget-object v6, v5, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 548
    .local v6, "definitionVariables":Landroid/support/constraint/solver/ArrayLinkedVariables;
    iget v7, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 549
    .local v7, "definitionCurrent":I
    const/4 v8, 0x0

    .line 550
    .local v8, "definitionCounter":I
    :goto_1
    if-eq v7, v2, :cond_0

    iget v9, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v8, v9, :cond_0

    .line 551
    iget-object v9, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v9, v9, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v10, v10, v7

    aget-object v9, v9, v10

    .line 553
    .local v9, "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v10, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v10, v10, v7

    .line 554
    .local v10, "definitionValue":F
    mul-float v11, v10, v4

    invoke-virtual {p0, v9, v11}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 555
    iget-object v11, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v7, v11, v7

    .line 556
    nop

    .end local v9    # "definitionVariable":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "definitionValue":F
    add-int/lit8 v8, v8, 0x1

    .line 557
    goto :goto_1

    .line 559
    .end local v6    # "definitionVariables":Landroid/support/constraint/solver/ArrayLinkedVariables;
    .end local v7    # "definitionCurrent":I
    .end local v8    # "definitionCounter":I
    :cond_0
    iget v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v6, v5, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float v6, v6, v4

    add-float/2addr v2, v6

    iput v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 560
    iget-object v2, v5, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 565
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 566
    const/4 v1, 0x0

    .line 567
    goto :goto_0

    .line 569
    .end local v4    # "value":F
    .end local v5    # "definition":Landroid/support/constraint/solver/ArrayRow;
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    .end local v3    # "variable":Landroid/support/constraint/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    .line 570
    goto :goto_0

    .line 571
    :cond_2
    return-void
.end method
