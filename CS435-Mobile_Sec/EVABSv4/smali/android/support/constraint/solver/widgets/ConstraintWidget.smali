.class public Landroid/support/constraint/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;,
        Landroid/support/constraint/solver/widgets/ConstraintWidget$ContentAlignment;
    }
.end annotation


# static fields
.field private static final AUTOTAG_CENTER:Z = false

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.0f

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I


# instance fields
.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field protected mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mDrawX:I

.field private mDrawY:I

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWeight:F

.field mHorizontalWrapVisited:Z

.field mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field mMatchConstraintDefaultHeight:I

.field mMatchConstraintDefaultWidth:I

.field mMatchConstraintMaxHeight:I

.field mMatchConstraintMaxWidth:I

.field mMatchConstraintMinHeight:I

.field mMatchConstraintMinWidth:I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field private mSolverBottom:I

.field private mSolverLeft:I

.field private mSolverRight:I

.field private mSolverTop:I

.field mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWeight:F

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field mWidth:I

.field private mWrapHeight:I

.field private mWrapWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 63
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 66
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 67
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 68
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 69
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 70
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 88
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 89
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 90
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 91
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 92
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 93
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 94
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 95
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 103
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 104
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 105
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 106
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 108
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverLeft:I

    .line 109
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverTop:I

    .line 110
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverRight:I

    .line 111
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverBottom:I

    .line 114
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 115
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 118
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 119
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 120
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 121
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 124
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 125
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 128
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 141
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 142
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 145
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 157
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 159
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 160
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 174
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 175
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 178
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    .line 179
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    .line 180
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 181
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 240
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 241
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 268
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 63
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 66
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 67
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 68
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 69
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 70
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 88
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 89
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 90
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 91
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 92
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 93
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 94
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 95
    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v2, p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 103
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 104
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 105
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 106
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 108
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverLeft:I

    .line 109
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverTop:I

    .line 110
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverRight:I

    .line 111
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverBottom:I

    .line 114
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 115
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 118
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 119
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 120
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 121
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 124
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 125
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 128
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 141
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 142
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 145
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 157
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 159
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 160
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 174
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 175
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 178
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    .line 179
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    .line 180
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 181
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 252
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 253
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 254
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 255
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 256
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 257
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->forceUpdateDrawPosition()V

    .line 258
    return-void
.end method

.method private addAnchors()V
    .locals 2

    .line 298
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method private applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIII)V
    .locals 27
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "wrapContent"    # Z
    .param p3, "dimensionFixed"    # Z
    .param p4, "beginAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p5, "endAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p6, "beginPosition"    # I
    .param p7, "endPosition"    # I
    .param p8, "dimension"    # I
    .param p9, "minDimension"    # I
    .param p10, "bias"    # F
    .param p11, "useRatio"    # Z
    .param p12, "inChain"    # Z
    .param p13, "matchConstraintDefault"    # I
    .param p14, "matchMinDimension"    # I
    .param p15, "matchMaxDimension"    # I

    .line 2251
    move-object/from16 v9, p1

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p9

    move/from16 v13, p14

    move/from16 v14, p15

    move-object/from16 v15, p4

    invoke-virtual {v9, v15}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    .line 2252
    .local v8, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v7, p5

    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2253
    .local v6, "end":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2254
    .local v5, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2256
    .local v4, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 2257
    .local v3, "beginAnchorMargin":I
    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    .line 2258
    .local v2, "endAnchorMargin":I
    move-object/from16 v1, p0

    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2259
    const/4 v0, 0x0

    .line 2260
    .end local p8    # "dimension":I
    .local v0, "dimension":I
    const/4 v1, 0x1

    move/from16 v16, v1

    move v1, v0

    .end local p3    # "dimensionFixed":Z
    .local v1, "dimensionFixed":Z
    goto :goto_0

    .line 2258
    .end local v0    # "dimension":I
    .end local v1    # "dimensionFixed":Z
    .restart local p3    # "dimensionFixed":Z
    .restart local p8    # "dimension":I
    :cond_0
    move/from16 v16, p3

    move/from16 v1, p8

    .line 2262
    .end local p3    # "dimensionFixed":Z
    .end local p8    # "dimension":I
    .local v1, "dimension":I
    .local v16, "dimensionFixed":Z
    :goto_0
    if-nez v5, :cond_4

    if-nez v4, :cond_4

    .line 2263
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2264
    if-nez p11, :cond_3

    .line 2265
    if-eqz p2, :cond_1

    .line 2266
    const/4 v0, 0x1

    invoke-static {v9, v6, v8, v12, v0}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2268
    :cond_1
    if-eqz v16, :cond_2

    .line 2269
    nop

    .line 2270
    const/4 v0, 0x0

    invoke-static {v9, v6, v8, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 2269
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2272
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v6, v11}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2264
    :cond_3
    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2262
    :cond_4
    const/4 v0, 0x0

    .line 2276
    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    .line 2277
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v8, v5, v3}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2278
    if-eqz p2, :cond_5

    .line 2279
    const/4 v0, 0x1

    invoke-static {v9, v6, v8, v12, v0}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2280
    :cond_5
    if-nez p11, :cond_7

    .line 2281
    if-eqz v16, :cond_6

    .line 2282
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v1}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2284
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v6, v11}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2280
    :cond_7
    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2287
    :cond_8
    if-nez v5, :cond_c

    if-eqz v4, :cond_c

    .line 2288
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    mul-int/lit8 v7, v2, -0x1

    invoke-virtual {v0, v6, v4, v7}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2289
    if-eqz p2, :cond_9

    .line 2290
    const/4 v0, 0x1

    invoke-static {v9, v6, v8, v12, v0}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2291
    :cond_9
    if-nez p11, :cond_b

    .line 2292
    if-eqz v16, :cond_a

    .line 2293
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v1}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2295
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2291
    :cond_b
    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    goto/16 :goto_6

    .line 2299
    :cond_c
    if-eqz v16, :cond_14

    .line 2300
    if-eqz p2, :cond_d

    .line 2301
    nop

    .line 2302
    const/4 v7, 0x1

    invoke-static {v9, v6, v8, v12, v7}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 2301
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_1

    .line 2304
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v1}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2307
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v7

    if-eq v0, v7, :cond_f

    .line 2308
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    if-ne v0, v7, :cond_e

    .line 2309
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v8, v5, v3}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2310
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 2311
    .local v0, "slack":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v7

    .line 2312
    .local v7, "row":Landroid/support/constraint/solver/ArrayRow;
    move/from16 v17, v1

    .end local v1    # "dimension":I
    .local v17, "dimension":I
    mul-int/lit8 v1, v2, -0x1

    invoke-virtual {v7, v6, v4, v0, v1}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 2313
    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2314
    .end local v0    # "slack":Landroid/support/constraint/solver/SolverVariable;
    .end local v7    # "row":Landroid/support/constraint/solver/ArrayRow;
    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    move/from16 v19, v17

    goto/16 :goto_6

    .line 2315
    .end local v17    # "dimension":I
    .restart local v1    # "dimension":I
    :cond_e
    move/from16 v17, v1

    .end local v1    # "dimension":I
    .restart local v17    # "dimension":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 2316
    .restart local v0    # "slack":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 2317
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual {v1, v8, v5, v0, v3}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 2318
    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2319
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v7

    move-object/from16 p3, v0

    .end local v0    # "slack":Landroid/support/constraint/solver/SolverVariable;
    .local p3, "slack":Landroid/support/constraint/solver/SolverVariable;
    mul-int/lit8 v0, v2, -0x1

    invoke-virtual {v7, v6, v4, v0}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2320
    .end local v1    # "row":Landroid/support/constraint/solver/ArrayRow;
    .end local p3    # "slack":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v20, v2

    move v11, v3

    move-object/from16 v18, v4

    move-object v12, v5

    move-object v15, v6

    move-object v10, v8

    move/from16 v19, v17

    goto/16 :goto_6

    .line 2323
    .end local v17    # "dimension":I
    .local v1, "dimension":I
    :cond_f
    move/from16 v17, v1

    .end local v1    # "dimension":I
    .restart local v17    # "dimension":I
    if-ne v5, v4, :cond_10

    .line 2324
    const/4 v7, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 2325
    move-object/from16 v0, p1

    move/from16 v21, v17

    .end local v17    # "dimension":I
    .local v21, "dimension":I
    move-object v1, v8

    move/from16 v22, v2

    .end local v2    # "endAnchorMargin":I
    .local v22, "endAnchorMargin":I
    move-object v2, v5

    move/from16 v23, v3

    .end local v3    # "beginAnchorMargin":I
    .local v23, "beginAnchorMargin":I
    move v3, v7

    move-object v7, v4

    .end local v4    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v7, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v4, v18

    move-object/from16 v24, v5

    .end local v5    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v24, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object v5, v7

    move-object/from16 v17, v6

    .end local v6    # "end":Landroid/support/constraint/solver/SolverVariable;
    .local v17, "end":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v25, v7

    .end local v7    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v25, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v7, v19

    move-object v10, v8

    .end local v8    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v10, "begin":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v8, v20

    invoke-static/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 2324
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move-object/from16 v15, v17

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v18, v25

    goto/16 :goto_6

    .line 2327
    .end local v10    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "dimension":I
    .end local v22    # "endAnchorMargin":I
    .end local v23    # "beginAnchorMargin":I
    .end local v24    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v2    # "endAnchorMargin":I
    .restart local v3    # "beginAnchorMargin":I
    .restart local v4    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v5    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v6    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v8    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v17, "dimension":I
    :cond_10
    move/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v24, v5

    move-object v10, v8

    move/from16 v21, v17

    move-object/from16 v17, v6

    .end local v2    # "endAnchorMargin":I
    .end local v3    # "beginAnchorMargin":I
    .end local v4    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v17, "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v21    # "dimension":I
    .restart local v22    # "endAnchorMargin":I
    .restart local v23    # "beginAnchorMargin":I
    .restart local v24    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    if-nez p12, :cond_13

    .line 2328
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    .line 2330
    .local v0, "useBidirectionalError":Z
    :goto_2
    nop

    .line 2331
    move/from16 v7, v23

    move-object/from16 v8, v24

    .end local v23    # "beginAnchorMargin":I
    .end local v24    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v7, "beginAnchorMargin":I
    .local v8, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-static {v9, v10, v8, v7, v0}, Landroid/support/constraint/solver/LinearSystem;->createRowGreaterThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 2330
    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2333
    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    if-eq v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_3

    :cond_12
    const/4 v1, 0x0

    :goto_3
    move v6, v1

    .line 2335
    .end local v0    # "useBidirectionalError":Z
    .local v6, "useBidirectionalError":Z
    move/from16 v5, v22

    .end local v22    # "endAnchorMargin":I
    .local v5, "endAnchorMargin":I
    mul-int/lit8 v2, v5, -0x1

    .line 2336
    move-object/from16 v4, v17

    move-object/from16 v3, v25

    .end local v17    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v4, "end":Landroid/support/constraint/solver/SolverVariable;
    invoke-static {v9, v4, v3, v2, v6}, Landroid/support/constraint/solver/LinearSystem;->createRowLowerThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 2335
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2339
    const/16 v17, 0x0

    .line 2340
    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v8

    .end local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move v3, v7

    move-object/from16 p3, v4

    .end local v4    # "end":Landroid/support/constraint/solver/SolverVariable;
    .local p3, "end":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v4, p10

    .end local v5    # "endAnchorMargin":I
    .restart local v22    # "endAnchorMargin":I
    move-object/from16 v5, v25

    move/from16 v18, v6

    .end local v6    # "useBidirectionalError":Z
    .local v18, "useBidirectionalError":Z
    move-object/from16 v6, p3

    move v11, v7

    .end local v7    # "beginAnchorMargin":I
    .local v11, "beginAnchorMargin":I
    move/from16 v7, v22

    move-object v12, v8

    .end local v8    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v12, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v8, v17

    invoke-static/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 2339
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2343
    .end local v18    # "useBidirectionalError":Z
    move-object/from16 v15, p3

    move/from16 v19, v21

    move/from16 v20, v22

    move-object/from16 v18, v25

    goto/16 :goto_6

    .line 2327
    .end local v11    # "beginAnchorMargin":I
    .end local v12    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local p3    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v17    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v23    # "beginAnchorMargin":I
    .restart local v24    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_13
    move-object/from16 p3, v17

    move/from16 v11, v23

    move-object/from16 v12, v24

    .end local v17    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v23    # "beginAnchorMargin":I
    .end local v24    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v11    # "beginAnchorMargin":I
    .restart local v12    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p3    # "end":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v15, p3

    move/from16 v19, v21

    move/from16 v20, v22

    move-object/from16 v18, v25

    goto/16 :goto_6

    .line 2345
    .end local v10    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v11    # "beginAnchorMargin":I
    .end local v12    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "dimension":I
    .end local v22    # "endAnchorMargin":I
    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local p3    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v1    # "dimension":I
    .restart local v2    # "endAnchorMargin":I
    .local v3, "beginAnchorMargin":I
    .local v4, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v5, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v6, "end":Landroid/support/constraint/solver/SolverVariable;
    .local v8, "begin":Landroid/support/constraint/solver/SolverVariable;
    :cond_14
    move/from16 v21, v1

    move/from16 v22, v2

    move v11, v3

    move-object/from16 v25, v4

    move-object v12, v5

    move-object/from16 p3, v6

    move-object v10, v8

    .end local v1    # "dimension":I
    .end local v2    # "endAnchorMargin":I
    .end local v3    # "beginAnchorMargin":I
    .end local v4    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v11    # "beginAnchorMargin":I
    .restart local v12    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v21    # "dimension":I
    .restart local v22    # "endAnchorMargin":I
    .restart local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p3    # "end":Landroid/support/constraint/solver/SolverVariable;
    const/4 v0, 0x3

    if-eqz p11, :cond_15

    .line 2346
    invoke-virtual {v9, v10, v12, v11, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2347
    move/from16 v8, v22

    .end local v22    # "endAnchorMargin":I
    .local v8, "endAnchorMargin":I
    mul-int/lit8 v2, v8, -0x1

    move-object/from16 v7, p3

    move-object/from16 v6, v25

    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local p3    # "end":Landroid/support/constraint/solver/SolverVariable;
    .local v6, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v7, "end":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v9, v7, v6, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2348
    const/16 v17, 0x1

    .line 2349
    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v12

    move v3, v11

    move/from16 v4, p10

    move-object v5, v6

    move-object v15, v6

    .end local v6    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v15, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object v6, v7

    move-object/from16 v25, v15

    move-object v15, v7

    .end local v7    # "end":Landroid/support/constraint/solver/SolverVariable;
    .local v15, "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move v7, v8

    move/from16 v26, v8

    .end local v8    # "endAnchorMargin":I
    .local v26, "endAnchorMargin":I
    move/from16 v8, v17

    invoke-static/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 2348
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v19, v21

    move-object/from16 v18, v25

    move/from16 v20, v26

    goto/16 :goto_6

    .line 2351
    .end local v15    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v26    # "endAnchorMargin":I
    .restart local v22    # "endAnchorMargin":I
    .restart local p3    # "end":Landroid/support/constraint/solver/SolverVariable;
    :cond_15
    move-object/from16 v15, p3

    move/from16 v26, v22

    .end local v22    # "endAnchorMargin":I
    .end local p3    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v15    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v26    # "endAnchorMargin":I
    if-nez p12, :cond_1c

    .line 2352
    const/4 v1, 0x2

    move/from16 v8, p13

    const/4 v2, 0x1

    if-ne v8, v2, :cond_19

    .line 2353
    move/from16 v7, v21

    .end local v21    # "dimension":I
    .local v7, "dimension":I
    if-le v13, v7, :cond_16

    .line 2354
    move/from16 v2, p14

    .end local v7    # "dimension":I
    .local v2, "dimension":I
    goto :goto_4

    .line 2353
    .end local v2    # "dimension":I
    .restart local v7    # "dimension":I
    :cond_16
    move v2, v7

    .line 2356
    .end local v7    # "dimension":I
    .restart local v2    # "dimension":I
    :goto_4
    if-lez v14, :cond_18

    .line 2357
    if-ge v14, v2, :cond_17

    .line 2358
    move/from16 v2, p15

    move v7, v2

    goto :goto_5

    .line 2360
    :cond_17
    invoke-virtual {v9, v15, v10, v14, v0}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2363
    :cond_18
    move v7, v2

    .end local v2    # "dimension":I
    .restart local v7    # "dimension":I
    :goto_5
    invoke-virtual {v9, v15, v10, v7, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2364
    invoke-virtual {v9, v10, v12, v11, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2365
    move/from16 v6, v26

    .end local v26    # "endAnchorMargin":I
    .local v6, "endAnchorMargin":I
    neg-int v0, v6

    move-object/from16 v5, v25

    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v5, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v9, v15, v5, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2366
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v12

    move v3, v11

    move/from16 v4, p10

    .end local v5    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v22, v6

    .end local v6    # "endAnchorMargin":I
    .restart local v22    # "endAnchorMargin":I
    move-object v6, v15

    move/from16 v18, v7

    .end local v7    # "dimension":I
    .local v18, "dimension":I
    move/from16 v7, v22

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    move/from16 v19, v18

    move/from16 v20, v22

    move-object/from16 v18, v25

    goto/16 :goto_6

    .line 2369
    .end local v18    # "dimension":I
    .end local v22    # "endAnchorMargin":I
    .restart local v21    # "dimension":I
    .restart local v26    # "endAnchorMargin":I
    :cond_19
    move/from16 v7, v21

    move/from16 v22, v26

    .end local v21    # "dimension":I
    .end local v26    # "endAnchorMargin":I
    .restart local v7    # "dimension":I
    .restart local v22    # "endAnchorMargin":I
    if-nez v13, :cond_1a

    if-nez v14, :cond_1a

    .line 2370
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, v10, v12, v11}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2371
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    move/from16 v8, v22

    .end local v22    # "endAnchorMargin":I
    .restart local v8    # "endAnchorMargin":I
    mul-int/lit8 v2, v8, -0x1

    move-object/from16 v6, v25

    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v6, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v0, v15, v6, v2}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    goto :goto_6

    .line 2369
    .end local v6    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "endAnchorMargin":I
    .restart local v22    # "endAnchorMargin":I
    .restart local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_1a
    move/from16 v8, v22

    move-object/from16 v6, v25

    .line 2373
    .end local v22    # "endAnchorMargin":I
    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v6    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v8    # "endAnchorMargin":I
    if-lez v14, :cond_1b

    .line 2374
    invoke-virtual {v9, v15, v10, v14, v0}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2376
    :cond_1b
    invoke-virtual {v9, v10, v12, v11, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2377
    neg-int v0, v8

    invoke-virtual {v9, v15, v6, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2378
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v12

    move v3, v11

    move/from16 v4, p10

    move-object v5, v6

    move-object/from16 v18, v6

    .end local v6    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v18, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object v6, v15

    move/from16 v19, v7

    .end local v7    # "dimension":I
    .local v19, "dimension":I
    move v7, v8

    move/from16 v20, v8

    .end local v8    # "endAnchorMargin":I
    .local v20, "endAnchorMargin":I
    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_6

    .line 2351
    .end local v18    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v19    # "dimension":I
    .end local v20    # "endAnchorMargin":I
    .restart local v21    # "dimension":I
    .restart local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v26    # "endAnchorMargin":I
    :cond_1c
    move/from16 v19, v21

    move-object/from16 v18, v25

    move/from16 v20, v26

    .line 2384
    .end local v21    # "dimension":I
    .end local v25    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v26    # "endAnchorMargin":I
    .restart local v18    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v19    # "dimension":I
    .restart local v20    # "endAnchorMargin":I
    :goto_6
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 1
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .line 1958
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 1959
    return-void
.end method

.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 44
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "group"    # I

    .line 1967
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    const/4 v0, 0x0

    .line 1968
    .local v0, "left":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 1969
    .local v1, "right":Landroid/support/constraint/solver/SolverVariable;
    const/4 v2, 0x0

    .line 1970
    .local v2, "top":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 1971
    .local v3, "bottom":Landroid/support/constraint/solver/SolverVariable;
    const/4 v4, 0x0

    .line 1972
    .local v4, "baseline":Landroid/support/constraint/solver/SolverVariable;
    const v12, 0x7fffffff

    if-eq v13, v12, :cond_0

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v5, v13, :cond_1

    .line 1973
    :cond_0
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 1975
    :cond_1
    if-eq v13, v12, :cond_2

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v5, v13, :cond_3

    .line 1976
    :cond_2
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 1978
    :cond_3
    if-eq v13, v12, :cond_5

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v5, v13, :cond_4

    goto :goto_0

    :cond_4
    move-object v11, v2

    goto :goto_1

    .line 1979
    :cond_5
    :goto_0
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    move-object v11, v2

    .line 1981
    .end local v2    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v11, "top":Landroid/support/constraint/solver/SolverVariable;
    :goto_1
    if-eq v13, v12, :cond_7

    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v2, v13, :cond_6

    goto :goto_2

    :cond_6
    move-object v10, v3

    goto :goto_3

    .line 1982
    :cond_7
    :goto_2
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    move-object v10, v3

    .line 1984
    .end local v3    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .local v10, "bottom":Landroid/support/constraint/solver/SolverVariable;
    :goto_3
    if-eq v13, v12, :cond_9

    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v2, v13, :cond_8

    goto :goto_4

    :cond_8
    move-object v9, v4

    goto :goto_5

    .line 1985
    :cond_9
    :goto_4
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    move-object v9, v4

    .line 1988
    .end local v4    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .local v9, "baseline":Landroid/support/constraint/solver/SolverVariable;
    :goto_5
    const/4 v2, 0x0

    .line 1989
    .local v2, "inHorizontalChain":Z
    const/4 v3, 0x0

    .line 1991
    .local v3, "inVerticalChain":Z
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1c

    .line 1993
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_a

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v4, v5, :cond_b

    :cond_a
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_c

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v4, v5, :cond_c

    .line 1995
    :cond_b
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4, v15, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 1996
    const/4 v2, 0x1

    .line 1999
    :cond_c
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_d

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v4, v5, :cond_e

    :cond_d
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_f

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v4, v5, :cond_f

    .line 2001
    :cond_e
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4, v15, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 2002
    const/4 v3, 0x1

    .line 2011
    :cond_f
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_15

    if-nez v2, :cond_15

    .line 2013
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_11

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v4, v5, :cond_10

    goto :goto_6

    .line 2019
    :cond_10
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_12

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v5, :cond_12

    .line 2021
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V

    goto :goto_7

    .line 2015
    :cond_11
    :goto_6
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2016
    .local v4, "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v5

    .line 2017
    .local v5, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 2018
    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2019
    .end local v4    # "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "row":Landroid/support/constraint/solver/ArrayRow;
    :cond_12
    nop

    .line 2024
    :goto_7
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_14

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v4, v5, :cond_13

    goto :goto_8

    .line 2030
    :cond_13
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_15

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v5, :cond_15

    .line 2032
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V

    goto :goto_9

    .line 2026
    :cond_14
    :goto_8
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2027
    .local v4, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v5

    .line 2028
    .restart local v5    # "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 2029
    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2036
    .end local v4    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "row":Landroid/support/constraint/solver/ArrayRow;
    :cond_15
    :goto_9
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1b

    if-nez v3, :cond_1b

    .line 2038
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_17

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v4, v5, :cond_16

    goto :goto_a

    .line 2044
    :cond_16
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_18

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v5, :cond_18

    .line 2046
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V

    goto :goto_b

    .line 2040
    :cond_17
    :goto_a
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2041
    .local v4, "parentTop":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v5

    .line 2042
    .restart local v5    # "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    invoke-virtual {v5, v11, v4, v6, v7}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 2043
    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2044
    .end local v4    # "parentTop":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "row":Landroid/support/constraint/solver/ArrayRow;
    :cond_18
    nop

    .line 2048
    :goto_b
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1a

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v4, v5, :cond_19

    goto :goto_c

    .line 2054
    :cond_19
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1b

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v5, :cond_1b

    .line 2056
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V

    goto :goto_d

    .line 2050
    :cond_1a
    :goto_c
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2051
    .local v4, "parentBottom":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v5

    .line 2052
    .restart local v5    # "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    invoke-virtual {v5, v4, v10, v6, v7}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 2053
    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2061
    .end local v4    # "parentBottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "row":Landroid/support/constraint/solver/ArrayRow;
    :cond_1b
    :goto_d
    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_e

    .line 1991
    :cond_1c
    move/from16 v19, v2

    move/from16 v20, v3

    .line 2061
    .end local v2    # "inHorizontalChain":Z
    .end local v3    # "inVerticalChain":Z
    .local v19, "inHorizontalChain":Z
    .local v20, "inVerticalChain":Z
    :goto_e
    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2062
    .local v2, "width":I
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_1d

    .line 2063
    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 2065
    :cond_1d
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2066
    .local v3, "height":I
    iget v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_1e

    .line 2067
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 2071
    :cond_1e
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_1f

    const/4 v4, 0x1

    goto :goto_f

    :cond_1f
    const/4 v4, 0x0

    .line 2072
    .local v4, "horizontalDimensionFixed":Z
    :goto_f
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_20

    const/4 v5, 0x1

    goto :goto_10

    :cond_20
    const/4 v5, 0x0

    .line 2074
    .local v5, "verticalDimensionFixed":Z
    :goto_10
    if-nez v4, :cond_22

    iget-object v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_22

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_22

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_21

    iget-object v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_22

    .line 2076
    :cond_21
    const/4 v4, 0x1

    .line 2078
    :cond_22
    if-nez v5, :cond_25

    iget-object v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_25

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_25

    .line 2079
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_23

    iget-object v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_25

    .line 2081
    :cond_23
    iget v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-eqz v6, :cond_24

    iget-object v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_25

    iget-object v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_24

    iget-object v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_25

    .line 2084
    :cond_24
    const/4 v5, 0x1

    .line 2091
    :cond_25
    const/4 v6, 0x0

    .line 2092
    .local v6, "useRatio":Z
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 2093
    .local v7, "dimensionRatioSide":I
    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 2094
    .local v8, "dimensionRatio":F
    iget v12, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/16 v21, 0x0

    move-object/from16 v22, v11

    .end local v11    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v22, "top":Landroid/support/constraint/solver/SolverVariable;
    cmpl-float v12, v12, v21

    if-lez v12, :cond_2b

    iget v12, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v11, 0x8

    if-eq v12, v11, :cond_2b

    .line 2095
    iget-object v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v23, 0x3f800000    # 1.0f

    if-ne v11, v12, :cond_28

    iget-object v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_28

    .line 2097
    const/4 v6, 0x1

    .line 2098
    if-eqz v4, :cond_26

    if-nez v5, :cond_26

    .line 2099
    const/4 v7, 0x0

    move/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v4

    move/from16 v27, v5

    move/from16 v23, v6

    move v12, v7

    move/from16 v28, v8

    goto/16 :goto_11

    .line 2100
    :cond_26
    if-nez v4, :cond_2b

    if-eqz v5, :cond_2b

    .line 2101
    const/4 v7, 0x1

    .line 2102
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_27

    .line 2104
    div-float v23, v23, v8

    move/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v4

    move/from16 v27, v5

    move v12, v7

    move/from16 v28, v23

    move/from16 v23, v6

    .end local v8    # "dimensionRatio":F
    .local v23, "dimensionRatio":F
    goto/16 :goto_11

    .line 2102
    .end local v23    # "dimensionRatio":F
    .restart local v8    # "dimensionRatio":F
    :cond_27
    move/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v4

    move/from16 v27, v5

    move/from16 v23, v6

    move v12, v7

    move/from16 v28, v8

    goto :goto_11

    .line 2107
    :cond_28
    iget-object v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_29

    .line 2108
    const/4 v7, 0x0

    .line 2109
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v11, v11

    mul-float v11, v11, v8

    float-to-int v2, v11

    .line 2110
    const/4 v4, 0x1

    move/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v4

    move/from16 v27, v5

    move/from16 v23, v6

    move v12, v7

    move/from16 v28, v8

    goto :goto_11

    .line 2111
    :cond_29
    iget-object v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_2b

    .line 2112
    const/4 v7, 0x1

    .line 2113
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2a

    .line 2115
    div-float v8, v23, v8

    .line 2117
    :cond_2a
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v11, v11

    mul-float v11, v11, v8

    float-to-int v3, v11

    .line 2118
    const/4 v5, 0x1

    move/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v4

    move/from16 v27, v5

    move/from16 v23, v6

    move v12, v7

    move/from16 v28, v8

    goto :goto_11

    .line 2122
    :cond_2b
    move/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v4

    move/from16 v27, v5

    move/from16 v23, v6

    move v12, v7

    move/from16 v28, v8

    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "horizontalDimensionFixed":Z
    .end local v5    # "verticalDimensionFixed":Z
    .end local v6    # "useRatio":Z
    .end local v7    # "dimensionRatioSide":I
    .end local v8    # "dimensionRatio":F
    .local v12, "dimensionRatioSide":I
    .local v23, "useRatio":Z
    .local v24, "width":I
    .local v25, "horizontalDimensionFixed":Z
    .local v26, "height":I
    .local v27, "verticalDimensionFixed":Z
    .local v28, "dimensionRatio":F
    :goto_11
    if-eqz v23, :cond_2d

    if-eqz v12, :cond_2c

    const/4 v2, -0x1

    if-ne v12, v2, :cond_2d

    :cond_2c
    const/4 v2, 0x1

    goto :goto_12

    :cond_2d
    const/4 v2, 0x0

    :goto_12
    move/from16 v29, v2

    .line 2126
    .local v29, "useHorizontalRatio":Z
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2e

    instance-of v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_13

    :cond_2e
    const/4 v2, 0x0

    .line 2128
    .local v2, "wrapContent":Z
    :goto_13
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v11, 0x2

    const/4 v8, 0x3

    if-eq v3, v11, :cond_33

    const v7, 0x7fffffff

    if-eq v13, v7, :cond_30

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v3, v13, :cond_2f

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v3, v13, :cond_2f

    goto :goto_14

    :cond_2f
    move-object/from16 v21, v0

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move/from16 v40, v12

    move-object/from16 v39, v22

    const/16 v18, 0x0

    move-object/from16 v22, v1

    goto/16 :goto_16

    .line 2130
    :cond_30
    :goto_14
    if-eqz v29, :cond_32

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_32

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_32

    .line 2131
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2132
    .local v6, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2133
    .local v5, "end":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2134
    .local v4, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 2135
    .local v3, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    invoke-virtual {v14, v6, v4, v7, v8}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2136
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    const/16 v21, -0x1

    mul-int/lit8 v7, v7, -0x1

    invoke-virtual {v14, v5, v3, v7, v8}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2137
    if-nez v19, :cond_31

    .line 2138
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iget-object v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    const/16 v32, 0x4

    move-object/from16 v33, v3

    .end local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v33, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v3, p1

    move-object/from16 v34, v4

    .end local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v34, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object v4, v6

    move-object/from16 v35, v5

    .end local v5    # "end":Landroid/support/constraint/solver/SolverVariable;
    .local v35, "end":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v5, v34

    move-object/from16 v36, v6

    .end local v6    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v36, "begin":Landroid/support/constraint/solver/SolverVariable;
    move v6, v7

    const v16, 0x7fffffff

    const/16 v18, 0x0

    move v7, v8

    move-object/from16 v8, v33

    move-object/from16 v37, v9

    .end local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .local v37, "baseline":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v9, v35

    move-object/from16 v38, v10

    .end local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .local v38, "bottom":Landroid/support/constraint/solver/SolverVariable;
    move v10, v11

    move-object/from16 v39, v22

    .end local v22    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v39, "top":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v11, v32

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_15

    .line 2137
    .end local v33    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v34    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v35    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v36    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v5    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v6    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v22    # "top":Landroid/support/constraint/solver/SolverVariable;
    :cond_31
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v39, v22

    const v16, 0x7fffffff

    const/16 v18, 0x0

    .line 2141
    .end local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    :goto_15
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move/from16 v40, v12

    goto :goto_16

    .line 2130
    .end local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v22    # "top":Landroid/support/constraint/solver/SolverVariable;
    :cond_32
    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v39, v22

    const v16, 0x7fffffff

    const/16 v18, 0x0

    .line 2142
    .end local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    add-int v7, v6, v24

    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iget v10, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move-object/from16 v21, v0

    .end local v0    # "left":Landroid/support/constraint/solver/SolverVariable;
    .local v21, "left":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, p0

    move-object/from16 v22, v1

    .end local v1    # "right":Landroid/support/constraint/solver/SolverVariable;
    .local v22, "right":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v1, p1

    move/from16 v17, v3

    move/from16 v3, v25

    move/from16 v30, v8

    move/from16 v8, v24

    move/from16 v31, v11

    move/from16 v11, v29

    move/from16 v40, v12

    .end local v12    # "dimensionRatioSide":I
    .local v40, "dimensionRatioSide":I
    move/from16 v12, v19

    move/from16 v13, v31

    move/from16 v14, v30

    move/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIII)V

    goto :goto_16

    .line 2128
    .end local v21    # "left":Landroid/support/constraint/solver/SolverVariable;
    .end local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v40    # "dimensionRatioSide":I
    .restart local v0    # "left":Landroid/support/constraint/solver/SolverVariable;
    .restart local v1    # "right":Landroid/support/constraint/solver/SolverVariable;
    .restart local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v12    # "dimensionRatioSide":I
    .local v22, "top":Landroid/support/constraint/solver/SolverVariable;
    :cond_33
    move-object/from16 v21, v0

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move/from16 v40, v12

    move-object/from16 v39, v22

    const/16 v18, 0x0

    move-object/from16 v22, v1

    .line 2148
    .end local v0    # "left":Landroid/support/constraint/solver/SolverVariable;
    .end local v1    # "right":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v12    # "dimensionRatioSide":I
    .restart local v21    # "left":Landroid/support/constraint/solver/SolverVariable;
    .local v22, "right":Landroid/support/constraint/solver/SolverVariable;
    .restart local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v40    # "dimensionRatioSide":I
    :goto_16
    move-object/from16 v15, p0

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 2149
    return-void

    .line 2152
    :cond_34
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_35

    instance-of v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_17

    :cond_35
    const/4 v0, 0x0

    :goto_17
    move v2, v0

    .line 2155
    if-eqz v23, :cond_37

    move/from16 v14, v40

    const/4 v13, 0x1

    .end local v40    # "dimensionRatioSide":I
    .local v14, "dimensionRatioSide":I
    if-eq v14, v13, :cond_36

    const/4 v0, -0x1

    if-ne v14, v0, :cond_38

    goto :goto_18

    :cond_36
    const/4 v0, -0x1

    :goto_18
    const/16 v18, 0x1

    goto :goto_19

    .end local v14    # "dimensionRatioSide":I
    .restart local v40    # "dimensionRatioSide":I
    :cond_37
    move/from16 v14, v40

    const/4 v0, -0x1

    const/4 v13, 0x1

    .end local v40    # "dimensionRatioSide":I
    .restart local v14    # "dimensionRatioSide":I
    :cond_38
    :goto_19
    move/from16 v30, v18

    .line 2157
    .local v30, "useVerticalRatio":Z
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_40

    .line 2158
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2159
    .local v1, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v12, 0x5

    move/from16 v11, p2

    const v10, 0x7fffffff

    if-eq v11, v10, :cond_3a

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v3, v11, :cond_39

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v3, v11, :cond_39

    goto :goto_1a

    :cond_39
    move-object/from16 v9, p1

    move-object/from16 v7, v37

    move-object/from16 v8, v39

    goto :goto_1b

    .line 2160
    :cond_3a
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v3

    move-object/from16 v9, p1

    move-object/from16 v7, v37

    move-object/from16 v8, v39

    .end local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v7, "baseline":Landroid/support/constraint/solver/SolverVariable;
    .local v8, "top":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v9, v7, v8, v3, v12}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2162
    :goto_1b
    move/from16 v6, v26

    .line 2163
    .local v6, "originalHeight":I
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_3b

    .line 2164
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 2165
    .end local v26    # "height":I
    .local v3, "height":I
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move/from16 v26, v3

    .line 2167
    .end local v3    # "height":I
    .restart local v26    # "height":I
    :cond_3b
    if-eq v11, v10, :cond_3d

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v3, v11, :cond_3c

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v3, v11, :cond_3c

    goto :goto_1c

    :cond_3c
    move-object/from16 v32, v7

    move-object v15, v8

    move-object v1, v9

    move/from16 v43, v14

    move-object/from16 v14, v38

    goto/16 :goto_1e

    .line 2168
    :cond_3d
    :goto_1c
    if-eqz v30, :cond_3f

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_3f

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_3f

    .line 2169
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    .line 2170
    .local v12, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2171
    .restart local v5    # "end":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2172
    .restart local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 2173
    .local v3, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v10, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    const/4 v11, 0x3

    invoke-virtual {v9, v12, v4, v10, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2174
    iget-object v10, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    mul-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v5, v3, v10, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2175
    if-nez v20, :cond_3e

    .line 2176
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iget v10, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget-object v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    const/16 v16, 0x4

    move-object/from16 v17, v3

    .end local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v17, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v3, p1

    move-object/from16 v18, v4

    .end local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v18, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object v4, v12

    move-object/from16 v31, v5

    .end local v5    # "end":Landroid/support/constraint/solver/SolverVariable;
    .local v31, "end":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v5, v18

    move/from16 v41, v6

    .end local v6    # "originalHeight":I
    .local v41, "originalHeight":I
    move v6, v0

    move-object/from16 v32, v7

    .end local v7    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .local v32, "baseline":Landroid/support/constraint/solver/SolverVariable;
    move v7, v10

    move-object v0, v8

    .end local v8    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v0, "top":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v8, v17

    move-object v10, v9

    move-object/from16 v9, v31

    move v10, v11

    move/from16 v11, v16

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1d

    .line 2175
    .end local v0    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v17    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v31    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v32    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v41    # "originalHeight":I
    .restart local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v5    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v6    # "originalHeight":I
    .restart local v7    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v8    # "top":Landroid/support/constraint/solver/SolverVariable;
    :cond_3e
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v31, v5

    move/from16 v41, v6

    move-object/from16 v32, v7

    move-object v0, v8

    .line 2179
    .end local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "originalHeight":I
    .end local v7    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v12    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v0    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v32    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v41    # "originalHeight":I
    :goto_1d
    move-object/from16 v1, p1

    move-object v15, v0

    move/from16 v43, v14

    move-object/from16 v14, v38

    goto :goto_1e

    .line 2168
    .end local v0    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v32    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v41    # "originalHeight":I
    .restart local v6    # "originalHeight":I
    .restart local v7    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v8    # "top":Landroid/support/constraint/solver/SolverVariable;
    :cond_3f
    move/from16 v41, v6

    move-object/from16 v32, v7

    move-object v0, v8

    .line 2180
    .end local v6    # "originalHeight":I
    .end local v7    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v0    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v32    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v41    # "originalHeight":I
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    add-int v7, v6, v26

    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iget v10, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move-object v3, v0

    .end local v0    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v3, "top":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, p0

    move-object/from16 v16, v1

    .end local v1    # "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v16, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v1, p1

    move-object/from16 v42, v3

    .end local v3    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v42, "top":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v3, v27

    move/from16 v17, v5

    move-object/from16 v5, v16

    move/from16 v18, v8

    move/from16 v8, v26

    move/from16 v31, v11

    move/from16 v11, v30

    move/from16 v12, v20

    move/from16 v13, v31

    move/from16 v43, v14

    .end local v14    # "dimensionRatioSide":I
    .local v43, "dimensionRatioSide":I
    move/from16 v14, v18

    move/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIII)V

    .line 2183
    move-object/from16 v14, v38

    move/from16 v0, v41

    move-object/from16 v15, v42

    const/4 v3, 0x5

    .end local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v41    # "originalHeight":I
    .end local v42    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v0, "originalHeight":I
    .local v14, "bottom":Landroid/support/constraint/solver/SolverVariable;
    .local v15, "top":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v1, v14, v15, v0, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2186
    .end local v0    # "originalHeight":I
    .end local v16    # "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v34, v2

    move-object/from16 v38, v14

    move-object/from16 v39, v15

    move/from16 v2, p2

    goto/16 :goto_21

    .line 2187
    .end local v15    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v32    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v43    # "dimensionRatioSide":I
    .local v14, "dimensionRatioSide":I
    .restart local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    :cond_40
    move-object/from16 v1, p1

    move/from16 v43, v14

    move-object/from16 v32, v37

    move-object/from16 v14, v38

    move-object/from16 v15, v39

    .end local v37    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v14, "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v15    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v32    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v43    # "dimensionRatioSide":I
    move/from16 v13, p2

    const v12, 0x7fffffff

    if-eq v13, v12, :cond_42

    move-object/from16 v11, p0

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v3, v13, :cond_41

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v3, v13, :cond_41

    goto :goto_1f

    :cond_41
    move/from16 v34, v2

    move-object v0, v11

    move v2, v13

    move-object/from16 v38, v14

    move-object/from16 v39, v15

    goto/16 :goto_21

    :cond_42
    move-object/from16 v11, p0

    .line 2188
    :goto_1f
    if-eqz v30, :cond_44

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_44

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_44

    .line 2189
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 2190
    .local v10, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 2191
    .local v9, "end":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    .line 2192
    .local v8, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    .line 2193
    .local v7, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    const/4 v6, 0x3

    invoke-virtual {v1, v10, v8, v3, v6}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2194
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v9, v7, v3, v6}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2195
    if-nez v20, :cond_43

    .line 2196
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iget v5, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v16

    const/16 v17, 0x4

    move-object/from16 v3, p1

    move-object v4, v10

    move/from16 v18, v5

    move-object v5, v8

    move v6, v0

    move-object v0, v7

    .end local v7    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v0, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v7, v18

    move-object/from16 v18, v8

    .end local v8    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object v8, v0

    move-object/from16 v31, v9

    .end local v9    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v31    # "end":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v33, v10

    .end local v10    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v33, "begin":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v10, v16

    move-object/from16 v16, v0

    move-object v0, v11

    .end local v0    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v16, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v11, v17

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_20

    .line 2195
    .end local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v31    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v33    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v7    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v8    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v9    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "begin":Landroid/support/constraint/solver/SolverVariable;
    :cond_43
    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move-object/from16 v31, v9

    move-object/from16 v33, v10

    move-object v0, v11

    .line 2199
    .end local v7    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "begin":Landroid/support/constraint/solver/SolverVariable;
    :goto_20
    move/from16 v34, v2

    move v2, v13

    move-object/from16 v38, v14

    move-object/from16 v39, v15

    goto :goto_21

    .line 2188
    :cond_44
    move-object v0, v11

    .line 2200
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    add-int v10, v9, v26

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iget v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iget v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v18, v3

    move-object/from16 v3, p0

    move/from16 v17, v4

    move-object/from16 v4, p1

    move/from16 v16, v5

    move v5, v2

    move/from16 v31, v6

    move/from16 v6, v27

    move/from16 v33, v11

    move/from16 v11, v26

    move/from16 v34, v2

    const v2, 0x7fffffff

    .end local v2    # "wrapContent":Z
    .local v34, "wrapContent":Z
    move/from16 v12, v33

    move v2, v13

    move/from16 v13, v31

    move-object/from16 v38, v14

    .end local v14    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v14, v30

    move-object/from16 v39, v15

    .end local v15    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v15, v20

    invoke-direct/range {v3 .. v18}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIII)V

    .line 2207
    :goto_21
    if-eqz v23, :cond_4b

    .line 2208
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v3

    .line 2209
    .local v3, "row":Landroid/support/constraint/solver/ArrayRow;
    const v4, 0x7fffffff

    if-eq v2, v4, :cond_46

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v4, v2, :cond_45

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v4, v2, :cond_45

    goto :goto_22

    :cond_45
    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v14, v38

    move-object/from16 v13, v39

    move/from16 v4, v43

    goto/16 :goto_25

    .line 2210
    :cond_46
    :goto_22
    move/from16 v4, v43

    .end local v43    # "dimensionRatioSide":I
    .local v4, "dimensionRatioSide":I
    if-nez v4, :cond_47

    .line 2211
    move-object v5, v3

    move-object/from16 v6, v22

    move-object/from16 v7, v21

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    move/from16 v10, v28

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v14, v38

    move-object/from16 v13, v39

    goto/16 :goto_25

    .line 2212
    :cond_47
    const/4 v5, 0x1

    if-ne v4, v5, :cond_48

    .line 2213
    move-object v5, v3

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    move-object/from16 v8, v22

    move-object/from16 v9, v21

    move/from16 v10, v28

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v14, v38

    move-object/from16 v13, v39

    goto :goto_25

    .line 2215
    :cond_48
    iget v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v5, :cond_49

    .line 2216
    move-object/from16 v11, v21

    move-object/from16 v12, v22

    const/4 v6, 0x3

    .end local v21    # "left":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "right":Landroid/support/constraint/solver/SolverVariable;
    .local v11, "left":Landroid/support/constraint/solver/SolverVariable;
    .local v12, "right":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v1, v12, v11, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_23

    .line 2215
    .end local v11    # "left":Landroid/support/constraint/solver/SolverVariable;
    .end local v12    # "right":Landroid/support/constraint/solver/SolverVariable;
    .restart local v21    # "left":Landroid/support/constraint/solver/SolverVariable;
    .restart local v22    # "right":Landroid/support/constraint/solver/SolverVariable;
    :cond_49
    move-object/from16 v11, v21

    move-object/from16 v12, v22

    const/4 v6, 0x3

    .line 2218
    .end local v21    # "left":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "right":Landroid/support/constraint/solver/SolverVariable;
    .restart local v11    # "left":Landroid/support/constraint/solver/SolverVariable;
    .restart local v12    # "right":Landroid/support/constraint/solver/SolverVariable;
    :goto_23
    iget v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v5, :cond_4a

    .line 2219
    move-object/from16 v14, v38

    move-object/from16 v13, v39

    .end local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v13, "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v14    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v1, v14, v13, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_24

    .line 2218
    .end local v13    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    :cond_4a
    move-object/from16 v14, v38

    move-object/from16 v13, v39

    .line 2221
    .end local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v13    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v14    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    :goto_24
    const/4 v15, 0x4

    .line 2222
    .local v15, "strength":I
    move-object v5, v3

    move-object v6, v12

    move-object v7, v11

    move-object v8, v14

    move-object v9, v13

    move/from16 v10, v28

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    .line 2223
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2224
    .local v5, "error1":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2225
    .local v6, "error2":Landroid/support/constraint/solver/SolverVariable;
    iput v15, v5, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 2226
    iput v15, v6, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 2227
    invoke-virtual {v3, v5, v6}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 2228
    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_25

    .line 2207
    .end local v3    # "row":Landroid/support/constraint/solver/ArrayRow;
    .end local v4    # "dimensionRatioSide":I
    .end local v5    # "error1":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "error2":Landroid/support/constraint/solver/SolverVariable;
    .end local v11    # "left":Landroid/support/constraint/solver/SolverVariable;
    .end local v12    # "right":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v15    # "strength":I
    .restart local v21    # "left":Landroid/support/constraint/solver/SolverVariable;
    .restart local v22    # "right":Landroid/support/constraint/solver/SolverVariable;
    .restart local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v43    # "dimensionRatioSide":I
    :cond_4b
    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v14, v38

    move-object/from16 v13, v39

    move/from16 v4, v43

    .line 2232
    .end local v21    # "left":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "right":Landroid/support/constraint/solver/SolverVariable;
    .end local v38    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v39    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v43    # "dimensionRatioSide":I
    .restart local v4    # "dimensionRatioSide":I
    .restart local v11    # "left":Landroid/support/constraint/solver/SolverVariable;
    .restart local v12    # "right":Landroid/support/constraint/solver/SolverVariable;
    .restart local v13    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v14    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    :goto_25
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .locals 6
    .param p1, "constraintFrom"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1424
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 1425
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 6
    .param p1, "constraintFrom"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I

    .line 1409
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 1411
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 7
    .param p1, "constraintFrom"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 1441
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1443
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 19
    .param p1, "constraintFrom"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .param p6, "creator"    # I

    .line 1459
    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p6

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v12, 0x0

    if-ne v0, v1, :cond_e

    .line 1462
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_9

    .line 1463
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    .line 1464
    .local v13, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    .line 1465
    .local v14, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    .line 1466
    .local v15, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v16

    .line 1467
    .local v16, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v17, 0x0

    .line 1468
    .local v17, "centerX":Z
    const/16 v18, 0x0

    .line 1469
    .local v18, "centerY":Z
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v14, :cond_1

    .line 1470
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1473
    :cond_1
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1475
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1477
    const/16 v17, 0x1

    .line 1479
    :cond_2
    :goto_0
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    if-eqz v16, :cond_4

    .line 1480
    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 1483
    :cond_4
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1485
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1487
    const/16 v18, 0x1

    .line 1489
    :cond_5
    :goto_1
    if-eqz v17, :cond_6

    if-eqz v18, :cond_6

    .line 1490
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1491
    .local v1, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1492
    .end local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_3

    :cond_6
    if-eqz v17, :cond_7

    .line 1493
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1494
    .restart local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .end local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_2

    .line 1495
    :cond_7
    if-eqz v18, :cond_8

    .line 1496
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1497
    .restart local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto :goto_3

    .line 1495
    .end local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_8
    :goto_2
    nop

    .line 1499
    .end local v13    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v14    # "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v15    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v16    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v17    # "centerX":Z
    .end local v18    # "centerY":Z
    :goto_3
    move-object/from16 v4, p5

    goto/16 :goto_a

    :cond_9
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v1, :cond_c

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_a

    goto :goto_4

    .line 1507
    :cond_a
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v1, :cond_b

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_d

    .line 1509
    :cond_b
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1511
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1513
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1514
    .restart local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1515
    .end local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, p5

    goto/16 :goto_a

    .line 1501
    :cond_c
    :goto_4
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1503
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1506
    .restart local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1507
    .end local v1    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_d
    move-object/from16 v4, p5

    goto/16 :goto_a

    .line 1516
    .end local p0    # "this":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_e
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_10

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v1, :cond_f

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_10

    .line 1519
    :cond_f
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1520
    .local v1, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1521
    .local v2, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1522
    .local v3, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v1, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1523
    invoke-virtual {v3, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1524
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1525
    .local v4, "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1526
    .end local v1    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, p5

    goto/16 :goto_a

    :cond_10
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_12

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v1, :cond_11

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_12

    .line 1529
    :cond_11
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1530
    .local v1, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1531
    .local v2, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1532
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1533
    .local v3, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1534
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1535
    .local v4, "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1536
    .end local v1    # "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, p5

    goto/16 :goto_a

    :cond_12
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_13

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_13

    .line 1539
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1540
    .local v1, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1541
    .local v2, "leftTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v1, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1542
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1543
    .local v3, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1544
    .local v4, "rightTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1545
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1546
    .local v5, "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1547
    .end local v1    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "leftTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "rightTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, p5

    goto/16 :goto_a

    :cond_13
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_14

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_14

    .line 1550
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1551
    .local v1, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1552
    .local v2, "topTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v1, v2, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1553
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1554
    .local v3, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1555
    .local v4, "bottomTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1556
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1557
    .local v5, "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1558
    .end local v1    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "topTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "bottomTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v4, p5

    goto/16 :goto_a

    .line 1559
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1560
    .local v1, "fromAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1561
    .local v2, "toAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1564
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_17

    .line 1565
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1566
    .local v3, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1567
    .local v4, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v3, :cond_15

    .line 1568
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1570
    :cond_15
    if-eqz v4, :cond_16

    .line 1571
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1573
    :cond_16
    const/4 v3, 0x0

    .line 1574
    .end local v4    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local p4    # "margin":I
    .local v3, "margin":I
    goto/16 :goto_9

    .end local v3    # "margin":I
    .restart local p4    # "margin":I
    :cond_17
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_1c

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_18

    goto :goto_7

    .line 1600
    :cond_18
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_1a

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_19

    goto :goto_6

    :cond_19
    :goto_5
    goto :goto_8

    .line 1602
    :cond_1a
    :goto_6
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1603
    .local v3, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v2, :cond_1b

    .line 1604
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1606
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1607
    .local v4, "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1608
    .local v5, "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1609
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1610
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_8

    .line 1576
    .end local v3    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1c
    :goto_7
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1577
    .local v3, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v3, :cond_1d

    .line 1578
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1580
    :cond_1d
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1581
    .local v4, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    if-eq v5, v2, :cond_1e

    .line 1582
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1584
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1585
    .local v5, "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1586
    .local v6, "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1587
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1588
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_5

    .line 1624
    .end local v3    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v6    # "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1f
    :goto_8
    move/from16 v3, p4

    .end local p4    # "margin":I
    .local v3, "margin":I
    :goto_9
    move-object/from16 v4, p5

    invoke-virtual {v1, v2, v3, v4, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z

    .line 1625
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectedTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_b

    .line 1561
    .end local v3    # "margin":I
    .restart local p4    # "margin":I
    :cond_20
    move-object/from16 v4, p5

    .line 1628
    .end local v1    # "fromAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "toAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_a
    move/from16 v3, p4

    .end local p4    # "margin":I
    .restart local v3    # "margin":I
    :goto_b
    return-void

    .line 1503
    .end local v3    # "margin":I
    .end local p1    # "constraintFrom":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .end local p2    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local p3    # "constraintTo":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .end local p5    # "strength":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .end local p6    # "creator":I
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_d

    :goto_c
    throw v1

    :goto_d
    goto :goto_c
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V
    .locals 6
    .param p1, "from"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p3, "margin"    # I

    .line 1388
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1389
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)V
    .locals 6
    .param p1, "from"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p3, "margin"    # I
    .param p4, "creator"    # I

    .line 1384
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1385
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 8
    .param p1, "from"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p3, "margin"    # I
    .param p4, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .param p5, "creator"    # I

    .line 1393
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1394
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    move-object v1, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1396
    :cond_0
    return-void
.end method

.method public connectedTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "source"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1356
    return-void
.end method

.method public disconnectUnlockedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 6
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1780
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1781
    .local v0, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "anchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1782
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1783
    .local v3, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1784
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1785
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1781
    .end local v3    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1788
    .end local v1    # "i":I
    .end local v2    # "anchorsSize":I
    :cond_1
    return-void
.end method

.method public disconnectWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1765
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1766
    .local v0, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "anchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1767
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1768
    .local v3, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1769
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1766
    .end local v3    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1772
    .end local v1    # "i":I
    .end local v2    # "anchorsSize":I
    :cond_1
    return-void
.end method

.method public forceUpdateDrawPosition()V
    .locals 5

    .line 893
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 894
    .local v0, "left":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 895
    .local v1, "top":I
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v2, v3

    .line 896
    .local v2, "right":I
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v3, v4

    .line 897
    .local v3, "bottom":I
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 898
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 899
    sub-int v4, v2, v0

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 900
    sub-int v4, v3, v1

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 901
    return-void
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2
    .param p1, "anchorType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1797
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1823
    const/4 v0, 0x0

    return-object v0

    .line 1820
    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1817
    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1814
    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1811
    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1808
    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1805
    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1802
    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1799
    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 1

    .line 784
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBottom()I
    .locals 2

    .line 746
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 1

    .line 1284
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionRatio()F
    .locals 1

    .line 1082
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 1

    .line 1091
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getDrawBottom()I
    .locals 2

    .line 663
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawHeight()I
    .locals 1

    .line 654
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return v0
.end method

.method public getDrawRight()I
    .locals 2

    .line 672
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawWidth()I
    .locals 1

    .line 650
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    return v0
.end method

.method public getDrawX()I
    .locals 2

    .line 637
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawY()I
    .locals 2

    .line 646
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 616
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 617
    const/4 v0, 0x0

    return v0

    .line 619
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .locals 1

    .line 756
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 7

    .line 1887
    const/4 v0, 0x0

    .line 1888
    .local v0, "found":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1889
    move-object v1, p0

    .line 1891
    .local v1, "tmp":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_0
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1892
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1893
    .local v2, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1894
    .local v4, "targetOwner":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_1
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 1895
    .local v5, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 1896
    move-object v0, v1

    .line 1897
    goto :goto_5

    .line 1899
    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1900
    .local v3, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v1, :cond_4

    .line 1901
    move-object v0, v1

    goto :goto_4

    .line 1903
    :cond_4
    move-object v1, v5

    .line 1905
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4
    goto :goto_0

    .line 1907
    .end local v1    # "tmp":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public getHorizontalChainStyle()I
    .locals 1

    .line 1322
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    .line 1832
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    return-object v0
.end method

.method public getInternalDrawBottom()I
    .locals 2

    .line 531
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getInternalDrawRight()I
    .locals 2

    .line 527
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method getInternalDrawX()I
    .locals 1

    .line 519
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    return v0
.end method

.method getInternalDrawY()I
    .locals 1

    .line 523
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 719
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 710
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 701
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getOptimizerWrapHeight()I
    .locals 3

    .line 584
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 585
    .local v0, "h":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2

    .line 586
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 587
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 588
    :cond_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v1, :cond_1

    .line 589
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 590
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    .line 592
    :cond_1
    const/4 v0, 0x0

    .line 594
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 595
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 598
    :cond_2
    return v0
.end method

.method public getOptimizerWrapWidth()I
    .locals 3

    .line 566
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 567
    .local v0, "w":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2

    .line 568
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 569
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 570
    :cond_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v1, :cond_1

    .line 571
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 572
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    .line 574
    :cond_1
    const/4 v0, 0x0

    .line 576
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 577
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 580
    :cond_2
    return v0
.end method

.method public getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 399
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getRight()I
    .locals 2

    .line 737
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRootWidgetContainer()Landroid/support/constraint/solver/widgets/WidgetContainer;
    .locals 2

    .line 383
    move-object v0, p0

    .line 384
    .local v0, "root":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_0
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v1, :cond_1

    .line 388
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/WidgetContainer;

    return-object v1

    .line 390
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getRootX()I
    .locals 2

    .line 682
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 2

    .line 692
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 728
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 1

    .line 766
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 7

    .line 1930
    const/4 v0, 0x0

    .line 1931
    .local v0, "found":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1932
    move-object v1, p0

    .line 1933
    .local v1, "tmp":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_0
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1934
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1935
    .local v2, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1936
    .local v4, "targetOwner":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_1
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 1937
    .local v5, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 1938
    move-object v0, v1

    .line 1939
    goto :goto_5

    .line 1941
    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1942
    .local v3, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v1, :cond_4

    .line 1943
    move-object v0, v1

    goto :goto_4

    .line 1945
    :cond_4
    move-object v1, v5

    .line 1947
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4
    goto :goto_0

    .line 1950
    .end local v1    # "tmp":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public getVerticalChainStyle()I
    .locals 1

    .line 1342
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    .line 1841
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 444
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 559
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 560
    const/4 v0, 0x0

    return v0

    .line 562
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getWrapHeight()I
    .locals 1

    .line 628
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    return v0
.end method

.method public getWrapWidth()I
    .locals 1

    .line 607
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 541
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 550
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasAncestor(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 4
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 356
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 357
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 358
    return v1

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 361
    return v3

    .line 363
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 364
    if-ne v0, p1, :cond_2

    .line 365
    return v1

    .line 367
    :cond_2
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-ne v0, v2, :cond_3

    .line 369
    return v1

    .line 371
    :cond_3
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_4
    return v3
.end method

.method public hasBaseline()Z
    .locals 1

    .line 775
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 9
    .param p1, "startType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "endType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "goneMargin"    # I

    .line 1369
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1370
    .local v7, "startAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    .line 1371
    .local v8, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, v8

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1373
    return-void
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .line 1874
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 1876
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1878
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .line 1917
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 1919
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1921
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInsideConstraintLayout()Z
    .locals 3

    .line 336
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 337
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 338
    return v1

    .line 340
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 341
    instance-of v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_1

    .line 342
    const/4 v1, 0x1

    return v1

    .line 344
    :cond_1
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_2
    return v1
.end method

.method public isRoot()Z
    .locals 1

    .line 316
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRootContainer()Z
    .locals 1

    .line 326
    instance-of v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 5

    .line 185
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 186
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 187
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 188
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 189
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 190
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 191
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 192
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 195
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 196
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 197
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 198
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 199
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 200
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 201
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 202
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 203
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 204
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 205
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 206
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 207
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 208
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 209
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 210
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 211
    sget v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 212
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 213
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 214
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 215
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 216
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 217
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 218
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 220
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 221
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 222
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 223
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 224
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 225
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 226
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    .line 227
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    .line 228
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 229
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 230
    return-void
.end method

.method public resetAllConstraints()V
    .locals 2

    .line 1634
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1635
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1636
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1637
    instance-of v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1638
    return-void

    .line 1640
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2

    .line 1641
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1642
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_0

    .line 1643
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1644
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1647
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_4

    .line 1648
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1649
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 1650
    :cond_3
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1651
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1654
    :cond_4
    :goto_1
    return-void
.end method

.method public resetAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .locals 10
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1663
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1664
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1665
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1666
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    return-void

    .line 1671
    .end local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1672
    .local v0, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1673
    .local v1, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1674
    .local v2, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1675
    .local v3, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1676
    .local v4, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1677
    .local v5, "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1679
    .local v6, "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/high16 v7, 0x3f000000    # 0.5f

    if-ne p1, v4, :cond_3

    .line 1680
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1681
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 1682
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1683
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1685
    :cond_1
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1686
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_2

    .line 1687
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1688
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1690
    :cond_2
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1691
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_1

    .line 1692
    :cond_3
    if-ne p1, v5, :cond_5

    .line 1693
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1694
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 1695
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1696
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1698
    :cond_4
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    .line 1699
    :cond_5
    if-ne p1, v6, :cond_7

    .line 1700
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1701
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_6

    .line 1702
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1703
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1705
    :cond_6
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    .line 1706
    :cond_7
    if-eq p1, v0, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_0

    .line 1710
    :cond_8
    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_b

    .line 1711
    :cond_9
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 1712
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_1

    .line 1707
    :cond_a
    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 1708
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1715
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1716
    return-void
.end method

.method public resetAnchors()V
    .locals 4

    .line 1722
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 1723
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 1724
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1725
    .local v1, "parentContainer":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1726
    return-void

    .line 1729
    .end local v1    # "parentContainer":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mAnchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1730
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1731
    .local v3, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1729
    .end local v3    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1733
    .end local v1    # "i":I
    .end local v2    # "mAnchorsSize":I
    :cond_1
    return-void
.end method

.method public resetAnchors(I)V
    .locals 5
    .param p1, "connectionCreator"    # I

    .line 1739
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 1740
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 1741
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1742
    .local v1, "parentContainer":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1743
    return-void

    .line 1746
    .end local v1    # "parentContainer":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mAnchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1747
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1748
    .local v3, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 1749
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isVerticalAnchor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1750
    sget v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto :goto_1

    .line 1752
    :cond_1
    sget v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1754
    :goto_1
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1746
    .end local v3    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1757
    .end local v1    # "i":I
    .end local v2    # "mAnchorsSize":I
    :cond_3
    return-void
.end method

.method public resetGroups()V
    .locals 4

    .line 288
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 289
    .local v0, "numAnchors":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 290
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const v3, 0x7fffffff

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 1
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 274
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 275
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 276
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 277
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 278
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 279
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 280
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 281
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 282
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 0
    .param p1, "baseline"    # I

    .line 1249
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1250
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "companion"    # Ljava/lang/Object;

    .line 1259
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1260
    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 1
    .param p1, "skip"    # I

    .line 1271
    if-ltz p1, :cond_0

    .line 1272
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0

    .line 1274
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1276
    :goto_0
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 460
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V
    .locals 7
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "name"    # Ljava/lang/String;

    .line 480
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 482
    .local v0, "left":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 483
    .local v1, "top":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 484
    .local v2, "right":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 485
    .local v3, "bottom":Landroid/support/constraint/solver/SolverVariable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".right"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bottom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 489
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_0

    .line 490
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 491
    .local v4, "baseline":Landroid/support/constraint/solver/SolverVariable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".baseline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 493
    .end local v4    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    :cond_0
    return-void
.end method

.method public setDimension(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1165
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1166
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1167
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1169
    :cond_0
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1170
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_1

    .line 1171
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1173
    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 0
    .param p1, "ratio"    # F
    .param p2, "dimensionRatioSide"    # I

    .line 1072
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1073
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1074
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 12
    .param p1, "ratio"    # Ljava/lang/String;

    .line 1010
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1014
    :cond_0
    const/4 v1, -0x1

    .line 1015
    .local v1, "dimensionRatioSide":I
    const/4 v2, 0x0

    .line 1016
    .local v2, "dimensionRatio":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1017
    .local v3, "len":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1018
    .local v4, "commaIndex":I
    const/4 v5, 0x1

    if-lez v4, :cond_3

    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_3

    .line 1019
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1020
    .local v6, "dimension":Ljava/lang/String;
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1021
    const/4 v1, 0x0

    goto :goto_0

    .line 1022
    :cond_1
    const-string v7, "H"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1023
    const/4 v1, 0x1

    .line 1025
    :cond_2
    :goto_0
    nop

    .end local v6    # "dimension":Ljava/lang/String;
    add-int/2addr v4, v5

    .line 1026
    goto :goto_1

    .line 1027
    :cond_3
    const/4 v4, 0x0

    .line 1029
    :goto_1
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1031
    .local v6, "colonIndex":I
    if-ltz v6, :cond_7

    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_7

    .line 1032
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1033
    .local v7, "nominator":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1034
    .local v8, "denominator":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1036
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1037
    .local v9, "nominatorValue":F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1038
    .local v10, "denominatorValue":F
    cmpl-float v11, v9, v0

    if-lez v11, :cond_5

    cmpl-float v11, v10, v0

    if-lez v11, :cond_5

    .line 1039
    if-ne v1, v5, :cond_4

    .line 1040
    div-float v5, v10, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v2, v5

    goto :goto_2

    .line 1042
    :cond_4
    div-float v5, v9, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 1047
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :cond_5
    :goto_2
    goto :goto_3

    .line 1045
    :catch_0
    move-exception v5

    .line 1049
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v8    # "denominator":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_4

    .line 1050
    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1051
    .local v5, "r":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 1053
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v7

    .line 1056
    goto :goto_4

    .line 1054
    :catch_1
    move-exception v7

    .line 1060
    .end local v5    # "r":Ljava/lang/String;
    :cond_8
    :goto_4
    cmpl-float v0, v2, v0

    if-lez v0, :cond_9

    .line 1061
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1062
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1064
    :cond_9
    return-void

    .line 1011
    .end local v1    # "dimensionRatioSide":I
    .end local v2    # "dimensionRatio":F
    .end local v3    # "len":I
    .end local v4    # "commaIndex":I
    .end local v6    # "colonIndex":I
    :cond_a
    :goto_5
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1012
    return-void
.end method

.method public setDrawHeight(I)V
    .locals 0
    .param p1, "drawHeight"    # I

    .line 951
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 952
    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 910
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 911
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 912
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 913
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 914
    return-void
.end method

.method public setDrawWidth(I)V
    .locals 0
    .param p1, "drawWidth"    # I

    .line 942
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 943
    return-void
.end method

.method public setDrawX(I)V
    .locals 1
    .param p1, "x"    # I

    .line 922
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 923
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 924
    return-void
.end method

.method public setDrawY(I)V
    .locals 1
    .param p1, "y"    # I

    .line 932
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 933
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 934
    return-void
.end method

.method public setFrame(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1184
    sub-int v0, p3, p1

    .line 1185
    .local v0, "w":I
    sub-int v1, p4, p2

    .line 1187
    .local v1, "h":I
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1188
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1190
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1191
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1192
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1193
    return-void

    .line 1197
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v0, v2, :cond_1

    .line 1198
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1200
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v1, v2, :cond_2

    .line 1201
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1204
    :cond_2
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1205
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1207
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v3, :cond_3

    .line 1208
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1210
    :cond_3
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_4

    .line 1211
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1213
    :cond_4
    return-void
.end method

.method public setGoneMargin(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 2
    .param p1, "type"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "goneMargin"    # I

    .line 853
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    .line 863
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 865
    goto :goto_0

    .line 859
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 861
    goto :goto_0

    .line 855
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 857
    nop

    .line 871
    :goto_0
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "h"    # I

    .line 972
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 973
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 974
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 976
    :cond_0
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0
    .param p1, "horizontalBiasPercent"    # F

    .line 1101
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1102
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0
    .param p1, "horizontalChainStyle"    # I

    .line 1312
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1313
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1222
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1223
    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1224
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1225
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1227
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1850
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1851
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 1852
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1854
    :cond_0
    return-void
.end method

.method public setHorizontalMatchStyle(III)V
    .locals 0
    .param p1, "horizontalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 986
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 987
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 988
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 989
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 0
    .param p1, "horizontalWeight"    # F

    .line 1293
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    .line 1294
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .line 1133
    if-gez p1, :cond_0

    .line 1134
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0

    .line 1136
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1138
    :goto_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .line 1120
    if-gez p1, :cond_0

    .line 1121
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0

    .line 1123
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1125
    :goto_0
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 842
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 843
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 844
    return-void
.end method

.method public setOrigin(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 831
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 832
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 833
    return-void
.end method

.method public setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 408
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 409
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 426
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0
    .param p1, "verticalBiasPercent"    # F

    .line 1111
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1112
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0
    .param p1, "verticalChainStyle"    # I

    .line 1332
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1333
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .line 1236
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1237
    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1238
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 1239
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1241
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1862
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1863
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 1864
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1866
    :cond_0
    return-void
.end method

.method public setVerticalMatchStyle(III)V
    .locals 0
    .param p1, "verticalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 999
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1000
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1001
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1002
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 0
    .param p1, "verticalWeight"    # F

    .line 1302
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    .line 1303
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 435
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 436
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "w"    # I

    .line 960
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 961
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 962
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 964
    :cond_0
    return-void
.end method

.method public setWrapHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .line 1155
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 1156
    return-void
.end method

.method public setWrapWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .line 1146
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 1147
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .line 812
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 813
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .line 821
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 822
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wrap: ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawPosition()V
    .locals 5

    .line 879
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 880
    .local v0, "left":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 881
    .local v1, "top":I
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v2, v3

    .line 882
    .local v2, "right":I
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v3, v4

    .line 883
    .local v3, "bottom":I
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 884
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 885
    sub-int v4, v2, v0

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 886
    sub-int v4, v3, v1

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 887
    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 1
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .line 2417
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 2418
    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 4
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "group"    # I

    .line 2392
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 2393
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 2394
    .local v0, "left":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 2395
    .local v1, "top":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 2396
    .local v2, "right":I
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 2397
    .local v3, "bottom":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 2398
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 2399
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverLeft:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverTop:I

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverRight:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    goto :goto_0

    .line 2401
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v0, p2, :cond_2

    .line 2402
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverLeft:I

    .line 2404
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v0, p2, :cond_3

    .line 2405
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverTop:I

    .line 2407
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v0, p2, :cond_4

    .line 2408
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverRight:I

    .line 2410
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-ne v0, p2, :cond_5

    .line 2411
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverBottom:I

    .line 2414
    :cond_5
    :goto_0
    return-void
.end method
