.class final Lcom/google/android/gms/internal/zzaxc;
.super Lcom/google/android/gms/internal/zzaxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaxg<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzelu:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxc;->zzelu:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaxg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaxn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzaxf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzaxf;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaxp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxc;->zzelu:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaxp;-><init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzaxn;->zza(Lcom/google/android/gms/internal/zzaxl;Lcom/google/android/gms/internal/zzaxp;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
