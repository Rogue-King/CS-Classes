.class final Lcom/google/android/gms/auth/api/signin/internal/zzh;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# instance fields
.field private synthetic zzenr:Lcom/google/android/gms/auth/api/signin/internal/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzenr:Lcom/google/android/gms/auth/api/signin/internal/zzg;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzenr:Lcom/google/android/gms/auth/api/signin/internal/zzg;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zzbq(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzenr:Lcom/google/android/gms/auth/api/signin/internal/zzg;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzenq:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzenr:Lcom/google/android/gms/auth/api/signin/internal/zzg;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
