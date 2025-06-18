.class final Lcom/google/android/gms/auth/api/signin/internal/zzg;
.super Lcom/google/android/gms/auth/api/signin/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zzm<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic zzenq:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzenq:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zze;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zzv;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzh;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzg;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzenq:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzv;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzt;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
