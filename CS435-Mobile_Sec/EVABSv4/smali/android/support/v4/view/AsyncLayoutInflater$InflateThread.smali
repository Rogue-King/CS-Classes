.class Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool<",
            "Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    .line 162
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->start()V

    .line 163
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 169
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 170
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    .line 166
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .line 223
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    nop

    .line 228
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to enqueue async inflate request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public obtainRequest()Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    .locals 2

    .line 205
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .line 206
    .local v0, "obj":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    if-nez v0, :cond_0

    .line 207
    new-instance v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    invoke-direct {v1}, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;-><init>()V

    move-object v0, v1

    .line 209
    :cond_0
    return-object v0
.end method

.method public releaseRequest(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 2
    .param p1, "obj"    # Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 214
    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    .line 215
    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 216
    const/4 v1, 0x0

    iput v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 217
    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 218
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public run()V
    .locals 0

    .line 200
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->runInner()V

    goto :goto_0
.end method

.method public runInner()V
    .locals 6

    .line 178
    const-string v0, "AsyncLayoutInflater"

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .local v1, "request":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    nop

    .line 186
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v3, v3, Landroid/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v4, v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v5, v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    goto :goto_0

    .line 188
    :catch_0
    move-exception v3

    .line 190
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v0, v0, Landroid/support/v4/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return-void

    .line 179
    .end local v1    # "request":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return-void
.end method
