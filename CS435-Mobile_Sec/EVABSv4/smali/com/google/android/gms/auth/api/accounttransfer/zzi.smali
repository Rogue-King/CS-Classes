.class final Lcom/google/android/gms/auth/api/accounttransfer/zzi;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;


# instance fields
.field private synthetic zzejj:Lcom/google/android/gms/internal/zzawv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzawv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzi;->zzejj:Lcom/google/android/gms/internal/zzawv;

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

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzi;->zzejn:Lcom/google/android/gms/internal/zzawm;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzi;->zzejj:Lcom/google/android/gms/internal/zzawv;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzawn;->zza(Lcom/google/android/gms/internal/zzawl;Lcom/google/android/gms/internal/zzawv;)V

    return-void
.end method
