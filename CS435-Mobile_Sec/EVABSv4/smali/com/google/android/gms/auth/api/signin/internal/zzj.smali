.class final Lcom/google/android/gms/auth/api/signin/internal/zzj;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# instance fields
.field private synthetic zzens:Lcom/google/android/gms/auth/api/signin/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzj;->zzens:Lcom/google/android/gms/auth/api/signin/internal/zzi;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzi(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzj;->zzens:Lcom/google/android/gms/auth/api/signin/internal/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
