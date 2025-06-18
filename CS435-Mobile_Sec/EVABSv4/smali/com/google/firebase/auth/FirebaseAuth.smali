.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/internal/InternalTokenProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$zzb;,
        Lcom/google/firebase/auth/FirebaseAuth$zza;,
        Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;,
        Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;
    }
.end annotation


# static fields
.field private static zzimu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ">;"
        }
    .end annotation
.end field

.field private static zzmpk:Lcom/google/firebase/auth/FirebaseAuth;


# instance fields
.field private zzmmu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzmpb:Lcom/google/firebase/FirebaseApp;

.field private zzmpc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzmpd:Lcom/google/android/gms/internal/zzdzh;

.field private zzmpe:Lcom/google/firebase/auth/FirebaseUser;

.field private final zzmpf:Ljava/lang/Object;

.field private zzmpg:Ljava/lang/String;

.field private zzmph:Lcom/google/firebase/auth/internal/zzx;

.field private zzmpi:Lcom/google/firebase/auth/internal/zzy;

.field private zzmpj:Lcom/google/firebase/auth/internal/zzaa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/FirebaseAuth;->zzimu:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzebe;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzebe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebe;->zzbtz()Lcom/google/android/gms/internal/zzebd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzebb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzebd;)Lcom/google/android/gms/internal/zzdzh;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/internal/zzx;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->zzbsv()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/auth/internal/zzx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdzh;Lcom/google/firebase/auth/internal/zzx;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdzh;Lcom/google/firebase/auth/internal/zzx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpf:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdzh;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzx;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmph:Lcom/google/firebase/auth/internal/zzx;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmmu:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpc:Ljava/util/List;

    invoke-static {}, Lcom/google/firebase/auth/internal/zzaa;->zzbus()Lcom/google/firebase/auth/internal/zzaa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpj:Lcom/google/firebase/auth/internal/zzaa;

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmph:Lcom/google/firebase/auth/internal/zzx;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzx;->zzbuq()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmph:Lcom/google/firebase/auth/internal/zzx;

    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/internal/zzx;->zzh(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebw;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/zzebw;Z)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method private final declared-synchronized zza(Lcom/google/firebase/auth/internal/zzy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpi:Lcom/google/firebase/auth/internal/zzy;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, p1}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/FirebaseApp$zzb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static declared-synchronized zzb(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 3

    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->zzbsv()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/auth/FirebaseAuth;->zzimu:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/firebase/auth/internal/zzj;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/internal/zzj;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/internal/InternalTokenProvider;)V

    sget-object p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpk:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez p0, :cond_0

    sput-object v2, Lcom/google/firebase/auth/FirebaseAuth;->zzmpk:Lcom/google/firebase/auth/FirebaseAuth;

    :cond_0
    sget-object p0, Lcom/google/firebase/auth/FirebaseAuth;->zzimu:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmmu:Ljava/util/List;

    return-object p0
.end method

.method private final zzb(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 4

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying id token listeners about user ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Notifying id token listeners about a sign-out event."

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzbto()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    new-instance v0, Lcom/google/firebase/internal/zzc;

    invoke-direct {v0, p1}, Lcom/google/firebase/internal/zzc;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpj:Lcom/google/firebase/auth/internal/zzaa;

    new-instance v1, Lcom/google/firebase/auth/zzk;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/zzk;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/internal/zzc;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/internal/zzaa;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized zzbtj()Lcom/google/firebase/auth/internal/zzy;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpi:Lcom/google/firebase/auth/internal/zzy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/auth/internal/zzy;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/zzy;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/internal/zzy;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpi:Lcom/google/firebase/auth/internal/zzy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzc(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpc:Ljava/util/List;

    return-object p0
.end method

.method private final zzc(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 3

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notifying auth state listeners about user ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Notifying auth state listeners about a sign-out event."

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpj:Lcom/google/firebase/auth/internal/zzaa;

    new-instance v0, Lcom/google/firebase/auth/zzl;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/zzl;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/internal/zzaa;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method


# virtual methods
.method public addAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpj:Lcom/google/firebase/auth/internal/zzaa;

    new-instance v1, Lcom/google/firebase/auth/zzj;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzj;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzaa;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addIdTokenListener(Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmmu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpj:Lcom/google/firebase/auth/internal/zzaa;

    new-instance v1, Lcom/google/firebase/auth/zzi;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzi;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzaa;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public applyActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzdzh;->zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public checkActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzdzh;->zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public confirmPasswordReset(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public fetchProvidersForEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ProviderQueryResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public fetchSignInMethodsForEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/SignInMethodQueryResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpg:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSignInWithEmailLink(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->isSignInWithEmailLink(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIdTokenListener(Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmmu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->sendPasswordResetEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->build()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpg:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zzpa(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zzhc(I)V

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public sendSignInLinkToEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpg:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zzpa(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setFirebaseUIVersion(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdzh;->setFirebaseUIVersion(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpg:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public signInAnonymously()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    check-cast v0, Lcom/google/firebase/auth/internal/zzk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzk;->zzco(Z)V

    new-instance v1, Lcom/google/firebase/auth/internal/zzf;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzf;-><init>(Lcom/google/firebase/auth/internal/zzk;)V

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzbth()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->getPassword()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithCustomToken(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithEmailLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/firebase/auth/EmailAuthProvider;->getCredentialWithLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signOut()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzbti()V

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpi:Lcom/google/firebase/auth/internal/zzy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzy;->cancel()V

    :cond_0
    return-void
.end method

.method public useAppLanguage()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzebf;->zzbua()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpg:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public verifyPasswordResetCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzdzh;->zze(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpg:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->build()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zzpa(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->getSignInMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p2}, Lcom/google/firebase/auth/EmailAuthCredential;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/firebase/auth/EmailAuthCredential;->getPassword()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p2, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    check-cast p2, Lcom/google/firebase/auth/PhoneAuthCredential;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4457

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeaw;->zzaw(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->zzbtm()Lcom/google/android/gms/internal/zzebw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebw;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    new-instance p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebw;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/firebase/auth/GetTokenResult;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebw;->zzbue()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/auth/zzm;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/zzm;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/zzebw;Z)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->zzbtm()Lcom/google/android/gms/internal/zzebw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebw;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzebw;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    if-nez v1, :cond_3

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/auth/FirebaseUser;->zzck(Z)Lcom/google/firebase/auth/FirebaseUser;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/auth/FirebaseUser;->zzar(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    :goto_2
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmph:Lcom/google/firebase/auth/internal/zzx;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1, v3}, Lcom/google/firebase/auth/internal/zzx;->zzg(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/zzebw;)V

    :cond_5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_7
    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmph:Lcom/google/firebase/auth/internal/zzx;

    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/auth/internal/zzx;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/zzebw;)V

    :cond_8
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzbtj()Lcom/google/firebase/auth/internal/zzy;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zzbtm()Lcom/google/android/gms/internal/zzebw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/internal/zzy;->zzc(Lcom/google/android/gms/internal/zzebw;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;Z)V
    .locals 12

    move-object v0, p0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-object/from16 v4, p4

    invoke-virtual {v1, p2, p3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-ltz v3, :cond_0

    const-wide/16 v1, 0x78

    cmp-long v3, v4, v1

    if-gtz v3, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/zzece;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpg:Ljava/lang/String;

    move-object v2, v8

    move-object v3, p1

    move/from16 v6, p8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzece;-><init>(Ljava/lang/String;JZLjava/lang/String;)V

    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzece;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->getSignInMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p2}, Lcom/google/firebase/auth/EmailAuthCredential;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/firebase/auth/EmailAuthCredential;->getPassword()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p2, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzbti()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmph:Lcom/google/firebase/auth/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/auth/internal/zzx;->clear(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmph:Lcom/google/firebase/auth/internal/zzx;

    const-string v2, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/internal/zzx;->clear(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseUser;)V

    invoke-direct {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseUser;)V

    return-void
.end method

.method public final zzc(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzdzh;->zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzcj(Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpe:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpb:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzmpd:Lcom/google/android/gms/internal/zzdzh;

    new-instance v1, Lcom/google/firebase/auth/zzn;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzn;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzt;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
