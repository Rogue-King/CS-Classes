.class final Lcom/google/android/gms/internal/zzavr;
.super Lcom/google/android/gms/common/api/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzm<",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/internal/zzawa;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzeih:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavq;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzavr;->zzeih:Z

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/api/internal/zzm;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zzm;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzawa;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/account/zzc;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzavr;->zzeih:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/account/zzc;->zzau(Z)V

    new-instance p1, Lcom/google/android/gms/internal/zzavy;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzavy;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzavy;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
