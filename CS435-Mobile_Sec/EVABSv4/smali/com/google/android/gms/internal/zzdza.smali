.class public abstract Lcom/google/android/gms/internal/zzdza;
.super Ljava/lang/Object;


# static fields
.field private static zzehr:Lcom/google/android/gms/internal/zzbhf;


# instance fields
.field private zzmqf:Lcom/google/android/gms/internal/zzdzb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbhf;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FirebaseAuth: "

    aput-object v3, v1, v2

    const-string v2, "BiChannelGoogleApi"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzbhf;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdza;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzbtr()Lcom/google/android/gms/internal/zzdzb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdza;->zzmqf:Lcom/google/android/gms/internal/zzdzb;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdza;->zzbtq()Lcom/google/android/gms/internal/zzdzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdza;->zzmqf:Lcom/google/android/gms/internal/zzdzb;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdza;->zzmqf:Lcom/google/android/gms/internal/zzdzb;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/common/api/GoogleApi;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdza;->zzbtr()Lcom/google/android/gms/internal/zzdzb;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzdzb;->zzmqi:Lcom/google/android/gms/internal/zzdzg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzdzg;->zzd(Lcom/google/android/gms/internal/zzdzf;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzdza;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzdzb;->zzmqh:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "getGoogleApiForMethod() returned Fallback: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbhf;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/zzdzb;->zzmqh:Lcom/google/android/gms/common/api/GoogleApi;

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzdza;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzdzb;->zzmqg:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "getGoogleApiForMethod() returned Gms: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbhf;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/zzdzb;->zzmqg:Lcom/google/android/gms/common/api/GoogleApi;

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzdzf<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzc(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/common/api/GoogleApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzdzf<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzc(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/common/api/GoogleApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method abstract zzbtq()Lcom/google/android/gms/internal/zzdzb;
.end method
