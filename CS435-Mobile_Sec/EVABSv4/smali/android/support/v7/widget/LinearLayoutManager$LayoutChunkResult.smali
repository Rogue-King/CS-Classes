.class public Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 2473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    .line 2480
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 2481
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 2482
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 2483
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 2484
    return-void
.end method
