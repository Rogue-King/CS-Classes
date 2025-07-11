.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field final mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

.field mRootName:Ljava/lang/String;

.field private mStrokePaint:Landroid/graphics/Paint;

.field final mVGTargetsMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1072
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 1083
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1084
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1085
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1086
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1087
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1088
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1090
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    .line 1093
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1094
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1095
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 1096
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .locals 3
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 1083
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1084
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1085
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1086
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1087
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1088
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1090
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    .line 1118
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1119
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1120
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 1121
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1122
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1123
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1124
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1125
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    .line 1126
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1127
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1128
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1055
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .line 1055
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1055
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .line 1055
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private static cross(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .line 1258
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 18
    .param p1, "currentGroup"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "currentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .line 1139
    move-object/from16 v7, p1

    invoke-static/range {p1 .. p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1141
    invoke-static/range {p1 .. p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$300(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1144
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 1147
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_0
    iget-object v0, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1148
    iget-object v0, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1149
    .local v10, "child":Ljava/lang/Object;
    instance-of v0, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v0, :cond_0

    .line 1150
    move-object v0, v10

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1151
    .local v0, "childGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    invoke-static/range {p1 .. p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v12, v0

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .end local v0    # "childGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    goto :goto_1

    .line 1153
    :cond_0
    instance-of v0, v10, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    if-eqz v0, :cond_1

    .line 1154
    move-object v11, v10

    check-cast v11, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    .line 1155
    .local v11, "childPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawPath(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 1153
    .end local v11    # "childPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_1
    :goto_1
    nop

    .line 1147
    .end local v10    # "child":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1159
    .end local v9    # "i":I
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 1160
    return-void
.end method

.method private drawPath(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 18
    .param p1, "vGroup"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "vPath"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .line 1169
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move/from16 v4, p4

    int-to-float v5, v4

    iget v6, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    div-float/2addr v5, v6

    .line 1170
    .local v5, "scaleX":F
    move/from16 v6, p5

    int-to-float v7, v6

    iget v8, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    div-float/2addr v7, v8

    .line 1171
    .local v7, "scaleY":F
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1172
    .local v8, "minScale":F
    invoke-static/range {p1 .. p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v9

    .line 1174
    .local v9, "groupStackedMatrix":Landroid/graphics/Matrix;
    iget-object v10, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1175
    iget-object v10, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v5, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1178
    invoke-direct {v0, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v10

    .line 1179
    .local v10, "matrixScale":F
    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    if-nez v12, :cond_0

    .line 1181
    return-void

    .line 1183
    :cond_0
    iget-object v12, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v12}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->toPath(Landroid/graphics/Path;)V

    .line 1184
    iget-object v12, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1186
    .local v12, "path":Landroid/graphics/Path;
    iget-object v13, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->isClipPath()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1189
    iget-object v11, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget-object v13, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1190
    iget-object v11, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_2

    .line 1192
    :cond_1
    move-object v13, v1

    check-cast v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 1193
    .local v13, "fullPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
    iget v14, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    cmpl-float v14, v14, v11

    if-nez v14, :cond_2

    iget v14, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v16

    if-eqz v14, :cond_5

    .line 1194
    :cond_2
    iget v14, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iget v11, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    add-float/2addr v14, v11

    const/high16 v11, 0x3f800000    # 1.0f

    rem-float/2addr v14, v11

    .line 1195
    .local v14, "start":F
    iget v15, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iget v1, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    add-float/2addr v15, v1

    rem-float/2addr v15, v11

    .line 1197
    .local v15, "end":F
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    if-nez v1, :cond_3

    .line 1198
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 1200
    :cond_3
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v11, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v1, v11, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1202
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    .line 1203
    .local v1, "len":F
    mul-float v14, v14, v1

    .line 1204
    mul-float v15, v15, v1

    .line 1205
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 1206
    cmpl-float v4, v14, v15

    if-lez v4, :cond_4

    .line 1207
    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v11, 0x1

    invoke-virtual {v4, v14, v1, v12, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1208
    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "len":F
    .local v17, "len":F
    invoke-virtual {v4, v1, v15, v12, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0

    .line 1210
    .end local v17    # "len":F
    .restart local v1    # "len":F
    :cond_4
    move/from16 v17, v1

    const/4 v1, 0x0

    const/4 v11, 0x1

    .end local v1    # "len":F
    .restart local v17    # "len":F
    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4, v14, v15, v12, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1212
    :goto_0
    invoke-virtual {v12, v1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1214
    .end local v14    # "start":F
    .end local v15    # "end":F
    .end local v17    # "len":F
    :cond_5
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v12, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1216
    iget v1, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    if-eqz v1, :cond_8

    .line 1217
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    .line 1218
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1219
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1220
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1223
    :cond_6
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1224
    .local v1, "fillPaint":Landroid/graphics/Paint;
    iget v4, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    iget v11, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    invoke-static {v4, v11}, Landroid/support/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1225
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1226
    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget v11, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    if-nez v11, :cond_7

    sget-object v11, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_1

    :cond_7
    sget-object v11, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_1
    invoke-virtual {v4, v11}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1228
    iget-object v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1231
    .end local v1    # "fillPaint":Landroid/graphics/Paint;
    :cond_8
    iget v1, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    if-eqz v1, :cond_c

    .line 1232
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_9

    .line 1233
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1234
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1235
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1238
    :cond_9
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1239
    .local v1, "strokePaint":Landroid/graphics/Paint;
    iget-object v4, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    if-eqz v4, :cond_a

    .line 1240
    iget-object v4, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1243
    :cond_a
    iget-object v4, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    if-eqz v4, :cond_b

    .line 1244
    iget-object v4, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1247
    :cond_b
    iget v4, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1248
    iget v4, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    iget v11, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    invoke-static {v4, v11}, Landroid/support/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1249
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1250
    mul-float v4, v8, v10

    .line 1251
    .local v4, "finalStrokeScale":F
    iget v11, v13, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    mul-float v11, v11, v4

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1252
    iget-object v11, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1255
    .end local v1    # "strokePaint":Landroid/graphics/Paint;
    .end local v4    # "finalStrokeScale":F
    .end local v13    # "fullPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
    :cond_c
    :goto_2
    return-void
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 10
    .param p1, "groupStackedMatrix"    # Landroid/graphics/Matrix;

    .line 1272
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 1273
    .local v0, "unitVectors":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1274
    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-double v5, v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1275
    .local v2, "scaleX":F
    const/4 v3, 0x2

    aget v5, v0, v3

    float-to-double v5, v5

    const/4 v7, 0x3

    aget v8, v0, v7

    float-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 1276
    .local v5, "scaleY":F
    aget v1, v0, v1

    aget v4, v0, v4

    aget v3, v0, v3

    aget v6, v0, v7

    invoke-static {v1, v4, v3, v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->cross(FFFF)F

    move-result v1

    .line 1278
    .local v1, "crossProduct":F
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1280
    .local v3, "maxScale":F
    const/4 v4, 0x0

    .line 1281
    .local v4, "matrixScale":F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    .line 1282
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v4, v6, v3

    .line 1287
    :cond_0
    return v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "filter"    # Landroid/graphics/ColorFilter;

    .line 1164
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    sget-object v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1165
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .line 1114
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .line 1103
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 1109
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 1110
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 1099
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1100
    return-void
.end method
