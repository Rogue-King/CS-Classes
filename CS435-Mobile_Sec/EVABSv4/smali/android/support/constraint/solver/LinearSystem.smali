.class public Landroid/support/constraint/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# static fields
.field private static final DEBUG:Z = false

.field private static POOL_SIZE:I


# instance fields
.field private TABLE_SIZE:I

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroid/support/constraint/solver/Cache;

.field private mGoal:Landroid/support/constraint/solver/Goal;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field private mNumRows:I

.field private mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field private mRows:[Landroid/support/constraint/solver/ArrayRow;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field private tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/16 v0, 0x3e8

    sput v0, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 49
    new-instance v2, Landroid/support/constraint/solver/Goal;

    invoke-direct {v2}, Landroid/support/constraint/solver/Goal;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    .line 51
    const/16 v2, 0x20

    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    .line 52
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    .line 53
    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 56
    new-array v1, v2, [Z

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 59
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 60
    iput v2, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    .line 64
    sget v1, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    new-array v1, v1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 65
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    .line 67
    new-array v0, v2, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    .line 70
    new-array v0, v2, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 71
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->releaseRows()V

    .line 72
    new-instance v0, Landroid/support/constraint/solver/Cache;

    invoke-direct {v0}, Landroid/support/constraint/solver/Cache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    .line 73
    return-void
.end method

.method private acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 4
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .line 235
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v0}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    .line 236
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 237
    new-instance v1, Landroid/support/constraint/solver/SolverVariable;

    invoke-direct {v1, p1}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;)V

    move-object v0, v1

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 240
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->setType(Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 242
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    sget v2, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    if-lt v1, v2, :cond_1

    .line 243
    mul-int/lit8 v2, v2, 0x2

    sput v2, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    .line 244
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    sget v2, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 246
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    aput-object v0, v1, v2

    .line 247
    return-object v0
.end method

.method private addError(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 2
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .line 189
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 190
    .local v0, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 192
    .local v1, "error2":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 193
    return-void
.end method

.method private addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V
    .locals 1
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "sign"    # I

    .line 196
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 197
    .local v0, "error":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v0, p2}, Landroid/support/constraint/solver/ArrayRow;->addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 198
    return-void
.end method

.method private computeValues()V
    .locals 4

    .line 680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_0

    .line 681
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 682
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    iget-object v2, v1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v3, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 680
    .end local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 9
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/LinearSystem;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p6, "variableD"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "marginB"    # I
    .param p8, "withError"    # Z

    .line 1015
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    .line 1016
    .local v8, "row":Landroid/support/constraint/solver/ArrayRow;
    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/constraint/solver/ArrayRow;->createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 1018
    if-eqz p8, :cond_0

    .line 1019
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 1020
    .local v0, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 1021
    .local v1, "error2":Landroid/support/constraint/solver/SolverVariable;
    const/4 v2, 0x4

    iput v2, v0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 1022
    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 1023
    invoke-virtual {v8, v0, v1}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 1037
    .end local v0    # "error1":Landroid/support/constraint/solver/SolverVariable;
    .end local v1    # "error2":Landroid/support/constraint/solver/SolverVariable;
    :cond_0
    return-object v8
.end method

.method public static createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 2
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/LinearSystem;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "percent"    # F
    .param p5, "withError"    # Z

    .line 948
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 949
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    if-eqz p5, :cond_0

    .line 950
    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addError(Landroid/support/constraint/solver/ArrayRow;)V

    .line 952
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionPercent(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    return-object v1
.end method

.method public static createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 2
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/LinearSystem;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .line 919
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 920
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 921
    if-eqz p4, :cond_0

    .line 922
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    .line 933
    :cond_0
    return-object v0
.end method

.method public static createRowGreaterThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 4
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/LinearSystem;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .line 960
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 961
    .local v0, "slack":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 962
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 963
    if-eqz p4, :cond_0

    .line 964
    iget-object v2, v1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v2

    .line 965
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    .line 978
    .end local v2    # "slackValue":F
    :cond_0
    return-object v1
.end method

.method public static createRowLowerThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 4
    .param p0, "linearSystem"    # Landroid/support/constraint/solver/LinearSystem;
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .line 986
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 987
    .local v0, "slack":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 988
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 989
    if-eqz p4, :cond_0

    .line 990
    iget-object v2, v1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v2

    .line 991
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    .line 1004
    .end local v2    # "slackValue":F
    :cond_0
    return-object v1
.end method

.method private createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .line 201
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    .line 202
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 204
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 205
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 206
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 207
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 208
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 209
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 212
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 214
    return-object v0
.end method

.method private displayRows()V
    .locals 5

    .line 692
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 693
    const-string v0, ""

    .line 694
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_0

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    iget-object v1, v1, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method private displaySolverVariables()V
    .locals 5

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display Rows ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") :\n\t | C | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-gt v1, v2, :cond_0

    .line 780
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 781
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    .end local v2    # "v":Landroid/support/constraint/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method private enforceBFS(Landroid/support/constraint/solver/Goal;)I
    .locals 17
    .param p1, "goal"    # Landroid/support/constraint/solver/Goal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 552
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 558
    .local v1, "tries":I
    const/4 v2, 0x0

    .line 559
    .local v2, "infeasibleSystem":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 560
    iget-object v4, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 561
    .local v4, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v6, v4, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_0

    .line 562
    goto :goto_1

    .line 564
    :cond_0
    iget-object v6, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_1

    .line 565
    const/4 v2, 0x1

    .line 566
    goto :goto_2

    .line 559
    .end local v4    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-eqz v2, :cond_e

    .line 579
    const/4 v3, 0x0

    .line 580
    .local v3, "done":Z
    const/4 v1, 0x0

    .line 581
    :goto_3
    if-nez v3, :cond_d

    .line 582
    add-int/lit8 v1, v1, 0x1

    .line 586
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 587
    .local v4, "min":F
    const/4 v6, 0x0

    .line 588
    .local v6, "strength":I
    const/4 v7, -0x1

    .line 589
    .local v7, "pivotRowIndex":I
    const/4 v8, -0x1

    .line 591
    .local v8, "pivotColumnIndex":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    iget v10, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v9, v10, :cond_a

    .line 592
    iget-object v10, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v10, v10, v9

    .line 593
    .local v10, "current":Landroid/support/constraint/solver/ArrayRow;
    iget-object v11, v10, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 594
    .local v11, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v12, v11, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v13, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v12, v13, :cond_3

    .line 597
    goto :goto_8

    .line 599
    :cond_3
    iget v12, v10, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    cmpg-float v12, v12, v5

    if-gez v12, :cond_9

    .line 604
    const/4 v12, 0x1

    .local v12, "j":I
    :goto_5
    iget v13, v0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-ge v12, v13, :cond_9

    .line 605
    iget-object v13, v0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v13, v13, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v13, v13, v12

    .line 606
    .local v13, "candidate":Landroid/support/constraint/solver/SolverVariable;
    iget-object v14, v10, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v14, v13}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v14

    .line 607
    .local v14, "a_j":F
    cmpg-float v15, v14, v5

    if-gtz v15, :cond_4

    .line 608
    goto :goto_7

    .line 613
    :cond_4
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_6
    const/4 v5, 0x6

    if-ge v15, v5, :cond_8

    .line 614
    iget-object v5, v13, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v5, v5, v15

    div-float/2addr v5, v14

    .line 615
    .local v5, "value":F
    cmpg-float v16, v5, v4

    if-gez v16, :cond_5

    if-eq v15, v6, :cond_6

    :cond_5
    if-le v15, v6, :cond_7

    .line 616
    :cond_6
    move v4, v5

    .line 617
    move v7, v9

    .line 618
    move v8, v12

    .line 619
    move v6, v15

    .line 613
    .end local v5    # "value":F
    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_6

    .line 604
    .end local v13    # "candidate":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "a_j":F
    .end local v15    # "k":I
    :cond_8
    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 591
    .end local v10    # "current":Landroid/support/constraint/solver/ArrayRow;
    .end local v11    # "variable":Landroid/support/constraint/solver/SolverVariable;
    .end local v12    # "j":I
    :cond_9
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto :goto_4

    .line 626
    .end local v9    # "i":I
    :cond_a
    const/4 v5, -0x1

    if-eq v7, v5, :cond_c

    .line 628
    iget-object v9, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v9, v9, v7

    .line 633
    .local v9, "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    iget-object v10, v9, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput v5, v10, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 634
    iget-object v5, v0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v5, v5, v8

    invoke-virtual {v9, v5}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 635
    iget-object v5, v9, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput v7, v5, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 637
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    iget v10, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v5, v10, :cond_b

    .line 638
    iget-object v10, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v10, v10, v5

    invoke-virtual {v10, v9}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    .line 637
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 641
    .end local v5    # "i":I
    :cond_b
    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Landroid/support/constraint/solver/Goal;->updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V

    .line 646
    .end local v9    # "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    goto :goto_a

    .line 647
    :cond_c
    move-object/from16 v5, p1

    const/4 v3, 0x1

    .line 649
    .end local v4    # "min":F
    .end local v6    # "strength":I
    .end local v7    # "pivotRowIndex":I
    .end local v8    # "pivotColumnIndex":I
    :goto_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 581
    :cond_d
    move-object/from16 v5, p1

    goto :goto_b

    .line 571
    .end local v3    # "done":Z
    :cond_e
    move-object/from16 v5, p1

    .line 659
    :goto_b
    const/4 v2, 0x0

    .line 660
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    iget v4, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_11

    .line 661
    iget-object v4, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 662
    .local v4, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v6, v4, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_f

    .line 663
    const/4 v7, 0x0

    goto :goto_d

    .line 665
    :cond_f
    iget-object v6, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_10

    .line 667
    const/4 v2, 0x1

    .line 668
    goto :goto_e

    .line 660
    .end local v4    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_10
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 676
    .end local v3    # "i":I
    :cond_11
    :goto_e
    return v1
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I

    .line 789
    mul-int/lit8 v0, p1, 0x4

    div-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x400

    .line 790
    .local v0, "mb":I
    const-string v1, ""

    if-lez v0, :cond_0

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Mb"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 793
    :cond_0
    mul-int/lit8 v2, p1, 0x4

    div-int/lit16 v2, v2, 0x400

    .line 794
    .local v2, "kb":I
    if-lez v2, :cond_1

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Kb"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 797
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private increaseTableSize()V
    .locals 3

    .line 83
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    .line 84
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 85
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 86
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 87
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    .line 88
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    .line 89
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    iget-object v0, v0, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    return-void
.end method

.method private optimize(Landroid/support/constraint/solver/Goal;)I
    .locals 12
    .param p1, "goal"    # Landroid/support/constraint/solver/Goal;

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "done":Z
    const/4 v1, 0x0

    .line 439
    .local v1, "tries":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-ge v2, v3, :cond_0

    .line 440
    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 444
    .local v2, "tested":I
    :goto_1
    if-nez v0, :cond_9

    .line 445
    add-int/lit8 v1, v1, 0x1

    .line 450
    invoke-virtual {p1}, Landroid/support/constraint/solver/Goal;->getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 454
    .local v3, "pivotCandidate":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v3, :cond_2

    .line 455
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v5, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    .line 456
    const/4 v3, 0x0

    goto :goto_2

    .line 458
    :cond_1
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v5, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 459
    add-int/lit8 v2, v2, 0x1

    .line 460
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-lt v2, v4, :cond_2

    .line 461
    const/4 v0, 0x1

    .line 466
    :cond_2
    :goto_2
    if-eqz v3, :cond_8

    .line 480
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 481
    .local v4, "min":F
    const/4 v5, -0x1

    .line 483
    .local v5, "pivotRowIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget v7, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v6, v7, :cond_5

    .line 484
    iget-object v7, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v7, v7, v6

    .line 485
    .local v7, "current":Landroid/support/constraint/solver/ArrayRow;
    iget-object v8, v7, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 486
    .local v8, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget-object v9, v8, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v10, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_3

    .line 488
    goto :goto_4

    .line 490
    :cond_3
    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/ArrayRow;->hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 493
    iget-object v9, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v9, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v9

    .line 494
    .local v9, "a_j":F
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_4

    .line 495
    iget v10, v7, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    neg-float v10, v10

    div-float/2addr v10, v9

    .line 496
    .local v10, "value":F
    cmpg-float v11, v10, v4

    if-gez v11, :cond_4

    .line 497
    move v4, v10

    .line 498
    move v5, v6

    .line 483
    .end local v7    # "current":Landroid/support/constraint/solver/ArrayRow;
    .end local v8    # "variable":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "a_j":F
    .end local v10    # "value":F
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 506
    .end local v6    # "i":I
    :cond_5
    const/4 v6, -0x1

    if-le v5, v6, :cond_7

    .line 511
    iget-object v7, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v7, v7, v5

    .line 512
    .local v7, "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    iget-object v8, v7, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput v6, v8, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 513
    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 514
    iget-object v6, v7, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iput v5, v6, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 516
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    iget v8, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v6, v8, :cond_6

    .line 517
    iget-object v8, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v8, v8, v6

    invoke-virtual {v8, v7}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    .line 516
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 520
    .end local v6    # "i":I
    :cond_6
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/Goal;->updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V

    .line 526
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->enforceBFS(Landroid/support/constraint/solver/Goal;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    goto :goto_6

    .line 527
    :catch_0
    move-exception v6

    .line 528
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "pivotEquation":Landroid/support/constraint/solver/ArrayRow;
    :goto_6
    goto :goto_7

    .line 534
    :cond_7
    const/4 v0, 0x1

    .line 537
    .end local v4    # "min":F
    .end local v5    # "pivotRowIndex":I
    :goto_7
    goto :goto_8

    .line 540
    :cond_8
    const/4 v0, 0x1

    .line 542
    .end local v3    # "pivotCandidate":Landroid/support/constraint/solver/SolverVariable;
    :goto_8
    goto/16 :goto_1

    .line 543
    :cond_9
    return v1
.end method

.method private releaseRows()V
    .locals 4

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 97
    aget-object v1, v1, v0

    .line 98
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    if-eqz v1, :cond_0

    .line 99
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 96
    .end local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 2
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .line 345
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-lez v0, :cond_0

    .line 346
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V

    .line 347
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v0, v0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 10
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "m1"    # I
    .param p4, "bias"    # F
    .param p5, "c"    # Landroid/support/constraint/solver/SolverVariable;
    .param p6, "d"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "m2"    # I
    .param p8, "strength"    # I

    .line 856
    move/from16 v0, p8

    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v9

    .line 857
    .local v9, "row":Landroid/support/constraint/solver/ArrayRow;
    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/support/constraint/solver/ArrayRow;->createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 858
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 859
    .local v1, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 860
    .local v2, "error2":Landroid/support/constraint/solver/SolverVariable;
    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 861
    iput v0, v2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 862
    invoke-virtual {v9, v1, v2}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 863
    move-object v3, p0

    invoke-virtual {p0, v9}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 864
    return-void
.end method

.method public addConstraint(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 5
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .line 358
    if-nez p1, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_2

    .line 362
    :cond_1
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 368
    :cond_2
    iget-boolean v0, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v0, :cond_3

    .line 370
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V

    .line 373
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->ensurePositiveConstant()V

    .line 380
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->pickRowVariable()V

    .line 382
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->hasKeyVariable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 392
    return-void

    .line 395
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 396
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 398
    :cond_4
    iget-boolean v0, p1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v0, :cond_5

    .line 399
    invoke-virtual {p1}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    .line 401
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aput-object p1, v0, v1

    .line 402
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 403
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 405
    iget-object v0, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v0, v0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 406
    .local v0, "count":I
    if-lez v0, :cond_9

    .line 407
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    array-length v2, v1

    if-ge v2, v0, :cond_6

    .line 408
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    goto :goto_0

    .line 410
    :cond_6
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    .line 412
    .local v1, "clients":[Landroid/support/constraint/solver/ArrayRow;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_7

    .line 413
    iget-object v3, p1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v3, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 415
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_9

    .line 416
    aget-object v3, v1, v2

    .line 417
    .local v3, "client":Landroid/support/constraint/solver/ArrayRow;
    if-ne v3, p1, :cond_8

    .line 418
    goto :goto_3

    .line 420
    :cond_8
    iget-object v4, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v4, v3, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V

    .line 421
    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    .line 415
    .end local v3    # "client":Landroid/support/constraint/solver/ArrayRow;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 429
    .end local v1    # "clients":[Landroid/support/constraint/solver/ArrayRow;
    .end local v2    # "i":I
    :cond_9
    return-void
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;
    .locals 3
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .line 877
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 878
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 879
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 880
    .local v1, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 881
    .local v2, "error2":Landroid/support/constraint/solver/SolverVariable;
    iput p4, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 882
    iput p4, v2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 883
    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 884
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 885
    return-object v0
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;I)V
    .locals 3
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # I

    .line 897
    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 898
    .local v0, "idx":I
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 899
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 900
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    iget-boolean v2, v1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v2, :cond_0

    .line 901
    int-to-float v2, p2

    iput v2, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 903
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v2

    .line 904
    .local v2, "newRow":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v2, p1, p2}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 905
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 907
    .end local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    .end local v2    # "newRow":Landroid/support/constraint/solver/ArrayRow;
    :goto_0
    goto :goto_1

    .line 908
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 909
    .restart local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v1, p1, p2}, Landroid/support/constraint/solver/ArrayRow;->createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 910
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 912
    .end local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    :goto_1
    return-void
.end method

.method public addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 2
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .line 815
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 816
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 817
    .local v1, "slack":Landroid/support/constraint/solver/SolverVariable;
    iput p4, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 818
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 819
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 820
    return-void
.end method

.method public addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 2
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .line 833
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 834
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {p0}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 835
    .local v1, "slack":Landroid/support/constraint/solver/SolverVariable;
    iput p4, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 836
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 837
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 838
    return-void
.end method

.method public createErrorVariable()Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    .line 218
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    .line 219
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 221
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 222
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 223
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 224
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 225
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 226
    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;
    .locals 4
    .param p1, "anchor"    # Ljava/lang/Object;

    .line 137
    if-nez p1, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    .line 141
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 143
    :cond_1
    const/4 v0, 0x0

    .line 144
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    instance-of v1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5

    .line 145
    move-object v1, p1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 146
    if-nez v0, :cond_2

    .line 147
    move-object v1, p1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 148
    move-object v1, p1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 150
    :cond_2
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    if-gt v1, v3, :cond_3

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v3, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    .line 153
    :cond_3
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-eq v1, v2, :cond_4

    .line 154
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 156
    :cond_4
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 157
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 158
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 159
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v1, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 160
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 163
    :cond_5
    return-object v0
.end method

.method public createRow()Landroid/support/constraint/solver/ArrayRow;
    .locals 3

    .line 167
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v0}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/ArrayRow;

    .line 168
    .local v0, "row":Landroid/support/constraint/solver/ArrayRow;
    if-nez v0, :cond_0

    .line 169
    new-instance v1, Landroid/support/constraint/solver/ArrayRow;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-direct {v1, v2}, Landroid/support/constraint/solver/ArrayRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    move-object v0, v1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayRow;->reset()V

    .line 173
    :goto_0
    return-object v0
.end method

.method public createSlackVariable()Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    .line 177
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_0

    .line 178
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 180
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 181
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 182
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 183
    iget v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 184
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 185
    return-object v0
.end method

.method displayReadableRows()V
    .locals 5

    .line 705
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 706
    const-string v0, ""

    .line 707
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    if-eqz v1, :cond_1

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method displaySystemInformations()V
    .locals 7

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "count":I
    const/4 v1, 0x0

    .line 755
    .local v1, "rowSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v2, v3, :cond_1

    .line 756
    iget-object v3, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    .line 757
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v3

    add-int/2addr v1, v3

    .line 755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 761
    .local v2, "actualRowSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_3

    .line 762
    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v5, v4, v3

    if-eqz v5, :cond_2

    .line 763
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v2, v4

    .line 761
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 767
    .end local v3    # "i":I
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Linear System -> Table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    mul-int v5, v5, v5

    .line 768
    invoke-direct {p0, v5}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") -- row sizes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-direct {p0, v1}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", actual size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-direct {p0, v2}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rows: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cols: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " occupied cells, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 767
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 5

    .line 719
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 720
    const-string v0, ""

    .line 721
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_1

    .line 722
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v2, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v4, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v2, v4, :cond_0

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    iget-object v1, v1, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public getCache()Landroid/support/constraint/solver/Cache;
    .locals 1

    .line 801
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    return-object v0
.end method

.method getGoal()Landroid/support/constraint/solver/Goal;
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 4

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "actualRowSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_1

    .line 737
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 738
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v2

    add-int/2addr v0, v2

    .line 736
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getNumEquations()I
    .locals 1

    .line 745
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    return v0
.end method

.method public getNumVariables()I
    .locals 1

    .line 747
    iget v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 3
    .param p1, "anchor"    # Ljava/lang/Object;

    .line 273
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 274
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v0, :cond_0

    .line 275
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 277
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method getRow(I)Landroid/support/constraint/solver/ArrayRow;
    .locals 1
    .param p1, "n"    # I

    .line 261
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 265
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 266
    .local v0, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 267
    const/4 v1, 0x0

    return v1

    .line 269
    :cond_0
    iget v1, v0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    return v1
.end method

.method getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .line 288
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    .line 292
    .local v0, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-nez v0, :cond_1

    .line 293
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 295
    :cond_1
    return-object v0
.end method

.method public minimize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearSystem;->minimizeGoal(Landroid/support/constraint/solver/Goal;)V

    .line 317
    return-void
.end method

.method minimizeGoal(Landroid/support/constraint/solver/Goal;)V
    .locals 0
    .param p1, "goal"    # Landroid/support/constraint/solver/Goal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/Goal;->updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V

    .line 327
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->enforceBFS(Landroid/support/constraint/solver/Goal;)I

    .line 332
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearSystem;->optimize(Landroid/support/constraint/solver/Goal;)I

    .line 337
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->computeValues()V

    .line 338
    return-void
.end method

.method rebuildGoalFromErrors()V
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/Goal;->updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V

    .line 310
    return-void
.end method

.method public reset()V
    .locals 3

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v1, v0

    .line 111
    .local v1, "variable":Landroid/support/constraint/solver/SolverVariable;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 109
    .end local v1    # "variable":Landroid/support/constraint/solver/SolverVariable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/constraint/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    .line 118
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v1, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 122
    :cond_2
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 123
    iget-object v1, p0, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    iget-object v1, v1, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 124
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_3

    .line 126
    iget-object v2, p0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Landroid/support/constraint/solver/LinearSystem;->releaseRows()V

    .line 129
    iput v0, p0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 130
    return-void
.end method
