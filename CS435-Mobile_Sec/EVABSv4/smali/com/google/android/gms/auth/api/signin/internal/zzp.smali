.class public final Lcom/google/android/gms/auth/api/signin/internal/zzp;
.super Ljava/lang/Object;


# static fields
.field private static zzenv:Lcom/google/android/gms/auth/api/signin/internal/zzp;


# instance fields
.field private zzenw:Lcom/google/android/gms/auth/api/signin/internal/zzaa;

.field private zzenx:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private zzeny:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenv:Lcom/google/android/gms/auth/api/signin/internal/zzp;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzaa;->zzbs(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzaa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenw:Lcom/google/android/gms/auth/api/signin/internal/zzaa;

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenw:Lcom/google/android/gms/auth/api/signin/internal/zzaa;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzaa;->zzacx()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenx:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenw:Lcom/google/android/gms/auth/api/signin/internal/zzaa;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzaa;->zzacy()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzeny:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized zzbq(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzp;
    .locals 1

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zzp;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzp;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzp;
    .locals 2

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zzp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenv:Lcom/google/android/gms/auth/api/signin/internal/zzp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzp;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenv:Lcom/google/android/gms/auth/api/signin/internal/zzp;

    :cond_0
    sget-object p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenv:Lcom/google/android/gms/auth/api/signin/internal/zzp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenw:Lcom/google/android/gms/auth/api/signin/internal/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzaa;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenx:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzeny:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenw:Lcom/google/android/gms/auth/api/signin/internal/zzaa;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "defaultGoogleSignInAccount"

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zzaa;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzaa;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenx:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzeny:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzacp()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzenx:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacq()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzeny:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
