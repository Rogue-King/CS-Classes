.class final Lcom/google/android/gms/internal/zzaxb;
.super Lcom/google/android/gms/internal/zzawx;


# instance fields
.field private synthetic zzelt:Lcom/google/android/gms/internal/zzaxa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxb;->zzelt:Lcom/google/android/gms/internal/zzaxa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawx;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxb;->zzelt:Lcom/google/android/gms/internal/zzaxa;

    new-instance v1, Lcom/google/android/gms/internal/zzawy;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzawy;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxb;->zzelt:Lcom/google/android/gms/internal/zzaxa;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawy;->zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzawy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
