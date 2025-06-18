.class final Lcom/google/android/gms/internal/zzaxa;
.super Lcom/google/android/gms/internal/zzaxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaxg<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzels:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxa;->zzels:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaxg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaxn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzaxb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzaxb;-><init>(Lcom/google/android/gms/internal/zzaxa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxa;->zzels:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzaxn;->zza(Lcom/google/android/gms/internal/zzaxl;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawy;->zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzawy;

    move-result-object p1

    return-object p1
.end method
