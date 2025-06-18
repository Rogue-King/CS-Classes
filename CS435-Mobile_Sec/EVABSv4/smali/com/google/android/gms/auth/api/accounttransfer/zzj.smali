.class final Lcom/google/android/gms/auth/api/accounttransfer/zzj;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;


# instance fields
.field private synthetic zzejk:Lcom/google/android/gms/internal/zzawp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzawp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzejk:Lcom/google/android/gms/internal/zzawp;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzc;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzawn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzejn:Lcom/google/android/gms/internal/zzawm;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzejk:Lcom/google/android/gms/internal/zzawp;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzawn;->zza(Lcom/google/android/gms/internal/zzawl;Lcom/google/android/gms/internal/zzawp;)V

    return-void
.end method
