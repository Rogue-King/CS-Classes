.class final Lcom/google/android/gms/auth/api/signin/internal/zzl;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# instance fields
.field private synthetic zzent:Lcom/google/android/gms/auth/api/signin/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzent:Lcom/google/android/gms/auth/api/signin/internal/zzk;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzj(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzl;->zzent:Lcom/google/android/gms/auth/api/signin/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
