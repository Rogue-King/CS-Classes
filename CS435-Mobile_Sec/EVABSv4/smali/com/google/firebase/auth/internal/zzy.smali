.class public final Lcom/google/firebase/auth/internal/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$zzb;


# instance fields
.field private volatile zzmug:I

.field private final zzmuh:Lcom/google/firebase/auth/internal/zzq;

.field private volatile zzmui:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/zzq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmui:Z

    iput v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmug:I

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzy;->zzmuh:Lcom/google/firebase/auth/internal/zzq;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzk;->zza(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzk;->zzaij()Lcom/google/android/gms/common/api/internal/zzk;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/auth/internal/zzz;

    invoke-direct {p2, p0}, Lcom/google/firebase/auth/internal/zzz;-><init>(Lcom/google/firebase/auth/internal/zzy;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/zzk;->zza(Lcom/google/android/gms/common/api/internal/zzl;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/internal/zzq;

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/zzq;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/internal/zzy;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/zzq;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/internal/zzy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzy;->zzmui:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/internal/zzy;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzy;->zzbur()Z

    move-result p0

    return p0
.end method

.method private final zzbur()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmug:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmui:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzc(Lcom/google/firebase/auth/internal/zzy;)Lcom/google/firebase/auth/internal/zzq;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmuh:Lcom/google/firebase/auth/internal/zzq;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmuh:Lcom/google/firebase/auth/internal/zzq;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzq;->cancel()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzebw;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebw;->zzbuf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/16 v0, 0xe10

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebw;->zzbug()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzy;->zzmuh:Lcom/google/firebase/auth/internal/zzq;

    iput-wide v2, p1, Lcom/google/firebase/auth/internal/zzq;->zzmtx:J

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/google/firebase/auth/internal/zzq;->zzmty:J

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzy;->zzbur()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzy;->zzmuh:Lcom/google/firebase/auth/internal/zzq;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzq;->zzbun()V

    :cond_2
    return-void
.end method

.method public final zzha(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmug:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/google/firebase/auth/internal/zzy;->zzmug:I

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzy;->zzbur()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmuh:Lcom/google/firebase/auth/internal/zzq;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzq;->zzbun()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmug:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzy;->zzmuh:Lcom/google/firebase/auth/internal/zzq;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzq;->cancel()V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/firebase/auth/internal/zzy;->zzmug:I

    return-void
.end method
