.class abstract Lcom/google/android/gms/internal/zzebh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzebh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SuccessT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzleo:Z

.field protected zzmpb:Lcom/google/firebase/FirebaseApp;

.field protected zzmpu:Ljava/lang/String;

.field protected final zzmrg:I

.field protected final zzmrh:Lcom/google/android/gms/internal/zzebk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzebk;"
        }
    .end annotation
.end field

.field protected zzmri:Lcom/google/firebase/auth/FirebaseUser;

.field protected zzmrj:Lcom/google/android/gms/internal/zzeaz;

.field protected zzmrk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected zzmrl:Lcom/google/firebase/auth/internal/zzu;

.field protected zzmrm:Lcom/google/android/gms/internal/zzebg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzebg<",
            "TSuccessT;>;"
        }
    .end annotation
.end field

.field protected final zzmrn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private zzmro:Landroid/app/Activity;

.field protected zzmrp:Ljava/util/concurrent/Executor;

.field protected zzmrq:Lcom/google/android/gms/internal/zzebj;

.field protected zzmrr:Lcom/google/android/gms/internal/zzebw;

.field protected zzmrs:Lcom/google/android/gms/internal/zzebu;

.field protected zzmrt:Lcom/google/android/gms/internal/zzebs;

.field protected zzmru:Lcom/google/android/gms/internal/zzecc;

.field protected zzmrv:Ljava/lang/String;

.field protected zzmrw:Lcom/google/firebase/auth/PhoneAuthCredential;

.field zzmrx:Z

.field private zzmry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSuccessT;"
        }
    .end annotation
.end field

.field private zzmrz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzebk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzebk;-><init>(Lcom/google/android/gms/internal/zzebh;Lcom/google/android/gms/internal/zzebi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrn:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmrg:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzebh;->zzbub()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebh;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzebh;->zzay(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzebh;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzebh;->zzleo:Z

    return p1
.end method

.method private final zzay(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrl:Lcom/google/firebase/auth/internal/zzu;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/internal/zzu;->onError(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method

.method private final zzbub()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzebh;->zzbtu()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebh;->zzleo:Z

    const-string v1, "no success or failure set on method implementation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract dispatch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzebh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/zzebh<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrn:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebh;->zzmrn:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzebh;->zzmro:Landroid/app/Activity;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmro:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmrn:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzebh$zza;->zza(Landroid/app/Activity;Ljava/util/List;)V

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmrp:Ljava/util/concurrent/Executor;

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzu;",
            ")",
            "Lcom/google/android/gms/internal/zzebh<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external failure callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzu;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmrl:Lcom/google/firebase/auth/internal/zzu;

    return-object p0
.end method

.method public final zzax(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebh;->zzleo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrx:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmrz:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrm:Lcom/google/android/gms/internal/zzebg;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzebg;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/android/gms/internal/zzebh<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmrk:Ljava/lang/Object;

    return-object p0
.end method

.method public final zzbh(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccessT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebh;->zzleo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrx:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmry:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrm:Lcom/google/android/gms/internal/zzebg;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzebg;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public abstract zzbtu()V
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            ")",
            "Lcom/google/android/gms/internal/zzebh<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmpb:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method public final zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/internal/zzebh<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/FirebaseUser;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebh;->zzmri:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method
