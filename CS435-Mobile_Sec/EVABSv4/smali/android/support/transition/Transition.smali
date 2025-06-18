.class public abstract Landroid/support/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Transition$EpicenterCallback;,
        Landroid/support/transition/Transition$ArrayListManager;,
        Landroid/support/transition/Transition$AnimationInfo;,
        Landroid/support/transition/Transition$TransitionListener;,
        Landroid/support/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/support/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroid/support/transition/TransitionSet;

.field private mPathMotion:Landroid/support/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroid/support/transition/TransitionPropagation;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Landroid/support/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 169
    new-instance v0, Landroid/support/transition/Transition$1;

    invoke-direct {v0}, Landroid/support/transition/Transition$1;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    .line 203
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    .line 181
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 182
    iput-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 186
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 196
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 197
    iput-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 198
    sget-object v1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 207
    iput-object v0, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 233
    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    .line 181
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 182
    iput-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 186
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 196
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 197
    iput-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 198
    sget-object v1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 207
    iput-object v0, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 233
    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 273
    sget-object v0, Landroid/support/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    .line 275
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, -0x1

    const-string v4, "duration"

    const/4 v5, 0x1

    invoke-static {v0, v2, v4, v5, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    int-to-long v4, v4

    .line 277
    .local v4, "duration":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    .line 278
    invoke-virtual {p0, v4, v5}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 280
    :cond_0
    const/4 v8, 0x2

    const-string v9, "startDelay"

    invoke-static {v0, v2, v9, v8, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v8, v3

    .line 282
    .local v8, "startDelay":J
    cmp-long v3, v8, v6

    if-lez v3, :cond_1

    .line 283
    invoke-virtual {p0, v8, v9}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    .line 285
    :cond_1
    const-string v3, "interpolator"

    invoke-static {v0, v2, v3, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 287
    .local v1, "resId":I
    if-lez v1, :cond_2

    .line 288
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 290
    :cond_2
    const/4 v3, 0x3

    const-string v6, "matchOrder"

    invoke-static {v0, v2, v6, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "matchOrder":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 293
    invoke-static {v3}, Landroid/support/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/support/transition/Transition;->setMatchOrder([I)V

    .line 295
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    return-void
.end method

.method static synthetic access$000(Landroid/support/transition/Transition;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/transition/Transition;

    .line 118
    iget-object v0, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 642
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 643
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 644
    .local v1, "start":Landroid/support/transition/TransitionValues;
    iget-object v3, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v1    # "start":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 652
    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 653
    .local v1, "end":Landroid/support/transition/TransitionValues;
    iget-object v3, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 654
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v1    # "end":Landroid/support/transition/TransitionValues;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V
    .locals 9
    .param p0, "transitionValuesMaps"    # Landroid/support/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 1529
    iget-object v0, p0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1531
    .local v0, "id":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 1532
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1534
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1536
    :cond_0
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1539
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1540
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1541
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1543
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1545
    :cond_2
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1550
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1551
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1552
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1553
    .local v5, "itemId":J
    iget-object v7, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_5

    .line 1555
    iget-object v7, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1556
    .local v7, "alreadyMatched":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1557
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1558
    iget-object v8, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v8, v5, v6, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1560
    .end local v7    # "alreadyMatched":Landroid/view/View;
    :cond_4
    goto :goto_2

    .line 1561
    :cond_5
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1562
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v5, v6, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1566
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "itemId":J
    :cond_6
    :goto_2
    return-void
.end method

.method private static alreadyContains([II)Z
    .locals 3
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .line 526
    aget v0, p0, p1

    .line 527
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 528
    aget v2, p0, v1

    if-ne v2, v0, :cond_0

    .line 529
    const/4 v2, 0x1

    return v2

    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1596
    if-nez p1, :cond_0

    .line 1597
    return-void

    .line 1599
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1600
    .local v0, "id":I
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1601
    return-void

    .line 1603
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1604
    return-void

    .line 1606
    :cond_2
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1607
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1608
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1609
    iget-object v3, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1610
    return-void

    .line 1608
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1614
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1615
    new-instance v1, Landroid/support/transition/TransitionValues;

    invoke-direct {v1}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1616
    .local v1, "values":Landroid/support/transition/TransitionValues;
    iput-object p1, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1617
    if-eqz p2, :cond_5

    .line 1618
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_1

    .line 1620
    :cond_5
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1622
    :goto_1
    iget-object v2, v1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1624
    if-eqz p2, :cond_6

    .line 1625
    iget-object v2, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_2

    .line 1627
    :cond_6
    iget-object v2, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1630
    .end local v1    # "values":Landroid/support/transition/TransitionValues;
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1632
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1633
    return-void

    .line 1635
    :cond_8
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1636
    return-void

    .line 1638
    :cond_9
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 1639
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1640
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_b

    .line 1641
    iget-object v3, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1642
    return-void

    .line 1640
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1646
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_b
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1647
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1648
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1647
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1651
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_c
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 1
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1306
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_1

    .line 1307
    if-eqz p3, :cond_0

    .line 1308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1310
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1313
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1157
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 1158
    if-eqz p2, :cond_0

    .line 1159
    invoke-static {p0, p1}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 1161
    :cond_0
    invoke-static {p0, p1}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1164
    :cond_1
    :goto_0
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1389
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    if-eqz p2, :cond_1

    .line 1390
    if-eqz p3, :cond_0

    .line 1391
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1393
    :cond_0
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1396
    :cond_1
    :goto_0
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1321
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_1

    .line 1322
    if-eqz p3, :cond_0

    .line 1323
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1325
    :cond_0
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1328
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static getRunningAnimators()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 855
    sget-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 856
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_0

    .line 857
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 858
    sget-object v1, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 860
    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 2
    .param p0, "match"    # I

    .line 522
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 3
    .param p0, "oldValues"    # Landroid/support/transition/TransitionValues;
    .param p1, "newValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1861
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1863
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1865
    const/4 v2, 0x0

    .local v2, "changed":Z
    goto :goto_1

    .line 1866
    .end local v2    # "changed":Z
    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 1871
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .restart local v2    # "changed":Z
    goto :goto_1

    .line 1868
    .end local v2    # "changed":Z
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1878
    .restart local v2    # "changed":Z
    :goto_1
    return v2
.end method

.method private matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 589
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 590
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 591
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 592
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 594
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 596
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 597
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 598
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 542
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 543
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 545
    .local v2, "end":Landroid/support/transition/TransitionValues;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 547
    .local v3, "start":Landroid/support/transition/TransitionValues;
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "end":Landroid/support/transition/TransitionValues;
    .end local v3    # "start":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 552
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 562
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 563
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 564
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 565
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 567
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 568
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 569
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 570
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 571
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 616
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startNames":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 617
    .local v0, "numStartNames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 618
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 619
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 621
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 623
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 624
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 625
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .locals 5
    .param p1, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValuesMaps;

    .line 662
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 663
    .local v0, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p2, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 665
    .local v1, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 666
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 679
    :cond_0
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V

    goto :goto_1

    .line 675
    :cond_1
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 677
    goto :goto_1

    .line 671
    :cond_2
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 673
    goto :goto_1

    .line 668
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 669
    nop

    .line 665
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    .end local v2    # "i":I
    :cond_4
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 685
    return-void
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 7
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 303
    .local v1, "matches":[I
    const/4 v2, 0x0

    .line 304
    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 305
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "token":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 307
    const/4 v4, 0x3

    aput v4, v1, v2

    goto :goto_1

    .line 308
    :cond_0
    const-string v4, "instance"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    aput v5, v1, v2

    goto :goto_1

    .line 310
    :cond_1
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    const/4 v4, 0x2

    aput v4, v1, v2

    goto :goto_1

    .line 312
    :cond_2
    const-string v4, "itemId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    const/4 v4, 0x4

    aput v4, v1, v2

    goto :goto_1

    .line 314
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 316
    array-length v4, v1

    sub-int/2addr v4, v5

    new-array v4, v4, [I

    .line 317
    .local v4, "smallerMatches":[I
    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    move-object v1, v4

    .line 319
    nop

    .end local v4    # "smallerMatches":[I
    add-int/lit8 v2, v2, -0x1

    .line 320
    nop

    .line 323
    :goto_1
    nop

    .end local v3    # "token":Ljava/lang/String;
    add-int/2addr v2, v5

    .line 324
    goto :goto_0

    .line 321
    .restart local v3    # "token":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown match type in matchOrder: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 325
    .end local v3    # "token":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 892
    .local p2, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_0

    .line 894
    new-instance v0, Landroid/support/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/Transition$2;-><init>(Landroid/support/transition/Transition;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    invoke-virtual {p0, p1}, Landroid/support/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 908
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;

    .line 2031
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2034
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .line 1020
    if-lez p1, :cond_0

    .line 1021
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 996
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetType"    # Ljava/lang/Class;

    .line 1075
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1078
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1045
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1048
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1893
    if-nez p1, :cond_0

    .line 1894
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    goto :goto_0

    .line 1896
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1897
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1899
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1900
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1902
    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1903
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1905
    :cond_3
    new-instance v0, Landroid/support/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/support/transition/Transition$3;-><init>(Landroid/support/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1912
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1914
    :goto_0
    return-void
.end method

.method protected cancel()V
    .locals 5

    .line 2006
    iget-object v0, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2007
    .local v0, "numAnimators":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2008
    iget-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 2009
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 2007
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2011
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2012
    iget-object v1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2013
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2014
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2015
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 2016
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/support/transition/Transition;)V

    .line 2015
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2019
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroid/support/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 2178
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2179
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    .line 2180
    .local v0, "propertyNames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2181
    return-void

    .line 2183
    :cond_0
    const/4 v1, 0x1

    .line 2184
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2185
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2186
    const/4 v1, 0x0

    .line 2187
    goto :goto_1

    .line 2184
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2190
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2191
    iget-object v2, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v2, p1}, Landroid/support/transition/TransitionPropagation;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 2194
    .end local v0    # "propertyNames":[Ljava/lang/String;
    .end local v1    # "containsAll":Z
    :cond_3
    return-void
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .line 1466
    invoke-virtual {p0, p2}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 1467
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1468
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1469
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1508
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_7

    .line 1470
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1471
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1472
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1473
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 1474
    new-instance v3, Landroid/support/transition/TransitionValues;

    invoke-direct {v3}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1475
    .local v3, "values":Landroid/support/transition/TransitionValues;
    iput-object v2, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1476
    if-eqz p2, :cond_4

    .line 1477
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_2

    .line 1479
    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1481
    :goto_2
    iget-object v4, v3, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1483
    if-eqz p2, :cond_5

    .line 1484
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_3

    .line 1486
    :cond_5
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1470
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "values":Landroid/support/transition/TransitionValues;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1490
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1491
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1492
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/support/transition/TransitionValues;

    invoke-direct {v2}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1493
    .local v2, "values":Landroid/support/transition/TransitionValues;
    iput-object v1, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1494
    if-eqz p2, :cond_8

    .line 1495
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_5

    .line 1497
    :cond_8
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1499
    :goto_5
    iget-object v3, v2, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1501
    if-eqz p2, :cond_9

    .line 1502
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_6

    .line 1504
    :cond_9
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1490
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1510
    .end local v0    # "i":I
    :cond_a
    :goto_7
    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 1511
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 1512
    .local v0, "numOverrides":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1513
    .local v1, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_b

    .line 1514
    iget-object v3, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1515
    .local v3, "fromName":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    .end local v3    # "fromName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1517
    .end local v2    # "i":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    if-ge v2, v0, :cond_d

    .line 1518
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1519
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_c

    .line 1520
    iget-object v4, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1521
    .local v4, "toName":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "toName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1525
    .end local v0    # "numOverrides":I
    .end local v1    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 1
    .param p1, "start"    # Z

    .line 1574
    if-eqz p1, :cond_0

    .line 1575
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1576
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1577
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto :goto_0

    .line 1579
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1580
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1581
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 1583
    :goto_0
    return-void
.end method

.method public clone()Landroid/support/transition/Transition;
    .locals 3

    .line 2213
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    .line 2214
    .local v1, "clone":Landroid/support/transition/Transition;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2215
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 2216
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 2217
    iput-object v0, v1, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2218
    iput-object v0, v1, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2219
    return-object v1

    .line 2220
    .end local v1    # "clone":Landroid/support/transition/Transition;
    :catch_0
    move-exception v1

    .line 2221
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 705
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    .line 706
    .local v8, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 707
    .local v0, "minStartDelay":J
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v2

    .line 708
    .local v9, "startDelays":Landroid/util/SparseIntArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 709
    .local v10, "startValuesListCount":I
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_11

    .line 710
    move-object/from16 v12, p4

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 711
    .local v2, "start":Landroid/support/transition/TransitionValues;
    move-object/from16 v13, p5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 712
    .local v3, "end":Landroid/support/transition/TransitionValues;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 713
    const/4 v2, 0x0

    move-object v14, v2

    goto :goto_1

    .line 715
    :cond_0
    move-object v14, v2

    .end local v2    # "start":Landroid/support/transition/TransitionValues;
    .local v14, "start":Landroid/support/transition/TransitionValues;
    :goto_1
    if-eqz v3, :cond_1

    iget-object v2, v3, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 716
    const/4 v3, 0x0

    move-object v15, v3

    goto :goto_2

    .line 718
    :cond_1
    move-object v15, v3

    .end local v3    # "end":Landroid/support/transition/TransitionValues;
    .local v15, "end":Landroid/support/transition/TransitionValues;
    :goto_2
    if-nez v14, :cond_2

    if-nez v15, :cond_2

    .line 719
    move/from16 v18, v10

    move/from16 v19, v11

    goto/16 :goto_c

    .line 722
    :cond_2
    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    invoke-virtual {v6, v14, v15}, Landroid/support/transition/Transition;->isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    :goto_4
    move/from16 v16, v2

    .line 723
    .local v16, "isChanged":Z
    if-eqz v16, :cond_f

    .line 742
    invoke-virtual {v6, v7, v14, v15}, Landroid/support/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    .line 743
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_e

    .line 746
    const/4 v3, 0x0

    .line 747
    .local v3, "infoValues":Landroid/support/transition/TransitionValues;
    if-eqz v15, :cond_c

    .line 748
    iget-object v4, v15, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 749
    .local v4, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v5

    .line 750
    .local v5, "properties":[Ljava/lang/String;
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    move-object/from16 v17, v2

    .end local v2    # "animator":Landroid/animation/Animator;
    .local v17, "animator":Landroid/animation/Animator;
    array-length v2, v5

    if-lez v2, :cond_a

    .line 751
    new-instance v2, Landroid/support/transition/TransitionValues;

    invoke-direct {v2}, Landroid/support/transition/TransitionValues;-><init>()V

    move-object v3, v2

    .line 752
    iput-object v4, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 753
    move-object/from16 v2, p3

    move/from16 v18, v10

    .end local v10    # "startValuesListCount":I
    .local v18, "startValuesListCount":I
    iget-object v10, v2, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/transition/TransitionValues;

    .line 754
    .local v10, "newValues":Landroid/support/transition/TransitionValues;
    if-eqz v10, :cond_6

    .line 755
    const/16 v19, 0x0

    move/from16 v2, v19

    .local v2, "j":I
    :goto_5
    array-length v12, v5

    if-ge v2, v12, :cond_5

    .line 756
    iget-object v12, v3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v13, v5, v2

    move/from16 v19, v11

    .end local v11    # "i":I
    .local v19, "i":I
    iget-object v11, v10, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v20, v10

    .end local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .local v20, "newValues":Landroid/support/transition/TransitionValues;
    aget-object v10, v5, v2

    .line 757
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 756
    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v11, v19

    move-object/from16 v10, v20

    goto :goto_5

    .end local v19    # "i":I
    .end local v20    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v11    # "i":I
    :cond_5
    move-object/from16 v20, v10

    move/from16 v19, v11

    .end local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v11    # "i":I
    .restart local v19    # "i":I
    .restart local v20    # "newValues":Landroid/support/transition/TransitionValues;
    goto :goto_6

    .line 754
    .end local v2    # "j":I
    .end local v19    # "i":I
    .end local v20    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v11    # "i":I
    :cond_6
    move-object/from16 v20, v10

    move/from16 v19, v11

    .line 760
    .end local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v11    # "i":I
    .restart local v19    # "i":I
    .restart local v20    # "newValues":Landroid/support/transition/TransitionValues;
    :goto_6
    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 761
    .local v2, "numExistingAnims":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_7
    if-ge v10, v2, :cond_9

    .line 762
    invoke-virtual {v8, v10}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 763
    .local v11, "anim":Landroid/animation/Animator;
    invoke-virtual {v8, v11}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/transition/Transition$AnimationInfo;

    .line 764
    .local v12, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v13, v12, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    if-eqz v13, :cond_7

    iget-object v13, v12, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-ne v13, v4, :cond_7

    iget-object v13, v12, Landroid/support/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 765
    move/from16 v21, v2

    .end local v2    # "numExistingAnims":I
    .local v21, "numExistingAnims":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 766
    iget-object v2, v12, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    invoke-virtual {v2, v3}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 768
    const/4 v2, 0x0

    .line 769
    .end local v17    # "animator":Landroid/animation/Animator;
    .local v2, "animator":Landroid/animation/Animator;
    goto :goto_9

    .line 764
    .end local v21    # "numExistingAnims":I
    .local v2, "numExistingAnims":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    :cond_7
    move/from16 v21, v2

    .line 761
    .end local v2    # "numExistingAnims":I
    .end local v11    # "anim":Landroid/animation/Animator;
    .end local v12    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .restart local v21    # "numExistingAnims":I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v21

    goto :goto_7

    .end local v21    # "numExistingAnims":I
    .restart local v2    # "numExistingAnims":I
    :cond_9
    move/from16 v21, v2

    .end local v2    # "numExistingAnims":I
    .restart local v21    # "numExistingAnims":I
    move-object/from16 v2, v17

    goto :goto_9

    .line 750
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .end local v20    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v21    # "numExistingAnims":I
    .local v10, "startValuesListCount":I
    .local v11, "i":I
    :cond_a
    move/from16 v18, v10

    move/from16 v19, v11

    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    goto :goto_8

    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .local v2, "animator":Landroid/animation/Animator;
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_b
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .line 774
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v5    # "properties":[Ljava/lang/String;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    :goto_8
    move-object/from16 v2, v17

    .end local v17    # "animator":Landroid/animation/Animator;
    .restart local v2    # "animator":Landroid/animation/Animator;
    :goto_9
    move-object v10, v2

    move-object v12, v3

    move-object v11, v4

    goto :goto_a

    .line 775
    .end local v4    # "view":Landroid/view/View;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_c
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    iget-object v2, v14, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object v11, v2

    move-object v12, v3

    move-object/from16 v10, v17

    .line 777
    .end local v3    # "infoValues":Landroid/support/transition/TransitionValues;
    .end local v17    # "animator":Landroid/animation/Animator;
    .local v10, "animator":Landroid/animation/Animator;
    .local v11, "view":Landroid/view/View;
    .local v12, "infoValues":Landroid/support/transition/TransitionValues;
    :goto_a
    if-eqz v10, :cond_10

    .line 778
    iget-object v2, v6, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    if-eqz v2, :cond_d

    .line 779
    invoke-virtual {v2, v7, v6, v14, v15}, Landroid/support/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J

    move-result-wide v2

    .line 780
    .local v2, "delay":J
    iget-object v4, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v5, v2

    invoke-virtual {v9, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide/from16 v20, v0

    goto :goto_b

    .line 778
    .end local v2    # "delay":J
    :cond_d
    move-wide/from16 v20, v0

    .line 783
    .end local v0    # "minStartDelay":J
    .local v20, "minStartDelay":J
    :goto_b
    new-instance v13, Landroid/support/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v4

    move-object v0, v13

    move-object v1, v11

    move-object/from16 v3, p0

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/support/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/Transition;Landroid/support/transition/WindowIdImpl;Landroid/support/transition/TransitionValues;)V

    .line 785
    .local v0, "info":Landroid/support/transition/Transition$AnimationInfo;
    invoke-virtual {v8, v10, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v1, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v0, v20

    goto :goto_c

    .line 743
    .end local v12    # "infoValues":Landroid/support/transition/TransitionValues;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .end local v20    # "minStartDelay":J
    .local v0, "minStartDelay":J
    .local v2, "animator":Landroid/animation/Animator;
    .local v10, "startValuesListCount":I
    .local v11, "i":I
    :cond_e
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    goto :goto_c

    .line 723
    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_f
    move/from16 v18, v10

    move/from16 v19, v11

    .line 709
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .end local v14    # "start":Landroid/support/transition/TransitionValues;
    .end local v15    # "end":Landroid/support/transition/TransitionValues;
    .end local v16    # "isChanged":Z
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    :cond_10
    :goto_c
    add-int/lit8 v11, v19, 0x1

    move/from16 v10, v18

    .end local v19    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_0

    .end local v18    # "startValuesListCount":I
    .restart local v10    # "startValuesListCount":I
    :cond_11
    move/from16 v18, v10

    move/from16 v19, v11

    .line 791
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v18    # "startValuesListCount":I
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    .line 792
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 793
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 794
    .local v3, "index":I
    iget-object v4, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 795
    .local v4, "animator":Landroid/animation/Animator;
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-long v10, v5

    sub-long/2addr v10, v0

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 796
    .local v10, "delay":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 792
    .end local v3    # "index":I
    .end local v4    # "animator":Landroid/animation/Animator;
    .end local v10    # "delay":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 799
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected end()V
    .locals 5

    .line 1952
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1953
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_5

    .line 1954
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1955
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1956
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1957
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1958
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1959
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/support/transition/Transition;)V

    .line 1958
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1962
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 1963
    iget-object v2, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1964
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1965
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1962
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1968
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1969
    iget-object v2, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1970
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1971
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1968
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1974
    .end local v0    # "i":I
    :cond_4
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1976
    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1297
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1298
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1267
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1268
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 1380
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1381
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1215
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1216
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1189
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1190
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 1353
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1354
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .line 1241
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/support/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1242
    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1985
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1986
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1987
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_1

    .line 1988
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1989
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1990
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$AnimationInfo;

    .line 1991
    .local v4, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1992
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1993
    .local v5, "anim":Landroid/animation/Animator;
    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 1989
    .end local v4    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1997
    .end local v2    # "windowId":Landroid/support/transition/WindowIdImpl;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 352
    iget-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1

    .line 2135
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_0

    .line 2136
    const/4 v0, 0x0

    return-object v0

    .line 2138
    :cond_0
    invoke-virtual {v0, p0}, Landroid/support/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/support/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroid/support/transition/Transition$EpicenterCallback;
    .locals 1

    .line 2122
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 407
    iget-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .line 1680
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1683
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1684
    .local v0, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1685
    return-object v1

    .line 1687
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1688
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1689
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 1690
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 1691
    .local v5, "values":Landroid/support/transition/TransitionValues;
    if-nez v5, :cond_3

    .line 1692
    return-object v1

    .line 1694
    :cond_3
    iget-object v6, v5, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v6, p1, :cond_4

    .line 1695
    move v3, v4

    .line 1696
    goto :goto_2

    .line 1689
    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1699
    .end local v4    # "i":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 1700
    .local v1, "values":Landroid/support/transition/TransitionValues;
    if-ltz v3, :cond_7

    .line 1701
    if-eqz p2, :cond_6

    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1702
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 1704
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2239
    iget-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroid/support/transition/PathMotion;
    .locals 1

    .line 2092
    iget-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroid/support/transition/TransitionPropagation;
    .locals 1

    .line 2170
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 379
    iget-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1454
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1661
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1662
    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1664
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 1665
    .local v0, "valuesMaps":Landroid/support/transition/TransitionValuesMaps;
    :goto_0
    iget-object v1, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    return-object v1
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 6
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 1834
    const/4 v0, 0x0

    .line 1837
    .local v0, "valuesChanged":Z
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1838
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1839
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1840
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1841
    .local v4, "property":Ljava/lang/String;
    invoke-static {p1, p2, v4}, Landroid/support/transition/Transition;->isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1842
    const/4 v0, 0x1

    .line 1843
    goto :goto_1

    .line 1840
    .end local v4    # "property":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_3

    .line 1847
    :cond_2
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1848
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroid/support/transition/Transition;->isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1849
    const/4 v0, 0x1

    .line 1850
    goto :goto_3

    .line 1852
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 1855
    .end local v1    # "properties":[Ljava/lang/String;
    :cond_4
    :goto_3
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 813
    .local v0, "targetId":I
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    return v2

    .line 816
    :cond_0
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    return v2

    .line 819
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 820
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 821
    .local v1, "numTypes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 822
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 823
    .local v4, "type":Ljava/lang/Class;
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 824
    return v2

    .line 821
    .end local v4    # "type":Ljava/lang/Class;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 828
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_3
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 829
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 830
    return v2

    .line 833
    :cond_4
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 834
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 835
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 836
    :cond_6
    return v3

    .line 838
    :cond_7
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 841
    :cond_8
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 842
    return v3

    .line 844
    :cond_9
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 845
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 846
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 847
    return v3

    .line 845
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 851
    .end local v1    # "i":I
    :cond_b
    return v2

    .line 839
    :cond_c
    :goto_2
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1716
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    if-nez v0, :cond_3

    .line 1717
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1718
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1719
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1720
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1721
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$AnimationInfo;

    .line 1722
    .local v4, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1723
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1724
    .local v5, "anim":Landroid/animation/Animator;
    invoke-static {v5}, Landroid/support/transition/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    .line 1720
    .end local v4    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1727
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1728
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1729
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1730
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1731
    .local v4, "numListeners":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 1732
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionPause(Landroid/support/transition/Transition;)V

    .line 1731
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1735
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v4    # "numListeners":I
    .end local v5    # "i":I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 1737
    .end local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    .end local v2    # "windowId":Landroid/support/transition/WindowIdImpl;
    :cond_3
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1781
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->matchStartAndEnd(Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    .line 1783
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1784
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1785
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1786
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 1787
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1788
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_4

    .line 1789
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$AnimationInfo;

    .line 1790
    .local v5, "oldInfo":Landroid/support/transition/Transition$AnimationInfo;
    if-eqz v5, :cond_4

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    .line 1791
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1792
    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    .line 1793
    .local v6, "oldValues":Landroid/support/transition/TransitionValues;
    iget-object v7, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 1794
    .local v7, "oldView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/support/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v9

    .line 1795
    .local v9, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p0, v7, v8}, Landroid/support/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v10

    .line 1796
    .local v10, "endValues":Landroid/support/transition/TransitionValues;
    if-nez v9, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    iget-object v11, v5, Landroid/support/transition/Transition$AnimationInfo;->mTransition:Landroid/support/transition/Transition;

    .line 1797
    invoke-virtual {v11, v6, v10}, Landroid/support/transition/Transition;->isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 1798
    .local v8, "cancel":Z
    :goto_1
    if-eqz v8, :cond_4

    .line 1799
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    .line 1808
    :cond_2
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1803
    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1786
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroid/support/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroid/support/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v10    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1815
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v7, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1816
    invoke-virtual {p0}, Landroid/support/transition/Transition;->runAnimators()V

    .line 1817
    return-void
.end method

.method public removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;

    .line 2047
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2048
    return-object p0

    .line 2050
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2051
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2052
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2054
    :cond_1
    return-object p0
.end method

.method public removeTarget(I)Landroid/support/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .line 1110
    if-lez p1, :cond_0

    .line 1111
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1113
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 1094
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1095
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    .line 1146
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1149
    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1128
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1131
    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1748
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_3

    .line 1749
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    if-nez v0, :cond_2

    .line 1750
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1751
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1752
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1753
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1754
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$AnimationInfo;

    .line 1755
    .local v4, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1756
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1757
    .local v5, "anim":Landroid/animation/Animator;
    invoke-static {v5}, Landroid/support/transition/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    .line 1753
    .end local v4    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1760
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1761
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1762
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1763
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1764
    .local v4, "numListeners":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 1765
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionResume(Landroid/support/transition/Transition;)V

    .line 1764
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1769
    .end local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    .end local v2    # "windowId":Landroid/support/transition/WindowIdImpl;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v4    # "numListeners":I
    .end local v5    # "i":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 1771
    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 874
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 875
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 877
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    iget-object v1, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 881
    .local v2, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 882
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 883
    invoke-direct {p0, v2, v0}, Landroid/support/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    .line 885
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_0
    goto :goto_0

    .line 886
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 887
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    .line 888
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0
    .param p1, "canRemoveViews"    # Z

    .line 2202
    iput-boolean p1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 2203
    return-void
.end method

.method public setDuration(J)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "duration"    # J

    .line 339
    iput-wide p1, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 340
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1, "epicenterCallback"    # Landroid/support/transition/Transition$EpicenterCallback;

    .line 2107
    iput-object p1, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    .line 2108
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 393
    iput-object p1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 394
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 4
    .param p1, "matches"    # [I

    .line 505
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 508
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 509
    aget v1, p1, v0

    .line 510
    .local v1, "match":I
    invoke-static {v1}, Landroid/support/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    invoke-static {p1, v0}, Landroid/support/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    .end local v1    # "match":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .restart local v1    # "match":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 517
    .end local v0    # "i":I
    .end local v1    # "match":I
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    goto :goto_2

    .line 506
    :cond_4
    :goto_1
    sget-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 519
    :goto_2
    return-void
.end method

.method public setPathMotion(Landroid/support/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroid/support/transition/PathMotion;

    .line 2074
    if-nez p1, :cond_0

    .line 2075
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    goto :goto_0

    .line 2077
    :cond_0
    iput-object p1, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 2079
    :goto_0
    return-void
.end method

.method public setPropagation(Landroid/support/transition/TransitionPropagation;)V
    .locals 0
    .param p1, "transitionPropagation"    # Landroid/support/transition/TransitionPropagation;

    .line 2153
    iput-object p1, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    .line 2154
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 2197
    iput-object p1, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2198
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "startDelay"    # J

    .line 366
    iput-wide p1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 367
    return-object p0
.end method

.method protected start()V
    .locals 4

    .line 1925
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_1

    .line 1926
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1927
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1928
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1929
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1930
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1931
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionStart(Landroid/support/transition/Transition;)V

    .line 1930
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1934
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1936
    :cond_1
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1937
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2207
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "indent"    # Ljava/lang/String;

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2245
    .local v0, "result":Ljava/lang/String;
    iget-wide v1, p0, Landroid/support/transition/Transition;->mDuration:J

    const-wide/16 v3, -0x1

    const-string v5, ") "

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    .line 2246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dur("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Landroid/support/transition/Transition;->mDuration:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2248
    :cond_0
    iget-wide v1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1

    .line 2249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dly("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/transition/Transition;->mStartDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2251
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_2

    .line 2252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "interp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2254
    :cond_2
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 2255
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tgts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_5

    .line 2257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2258
    if-lez v1, :cond_4

    .line 2259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2261
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2264
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2265
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 2266
    if-lez v1, :cond_6

    .line 2267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2272
    .end local v1    # "i":I
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2274
    :cond_8
    return-object v0
.end method
