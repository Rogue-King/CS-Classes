.class final Lcom/google/android/gms/internal/zzavt;
.super Lcom/google/android/gms/internal/zzavw;


# instance fields
.field private synthetic zzeii:Lcom/google/android/gms/internal/zzavs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavt;->zzeii:Lcom/google/android/gms/internal/zzavs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Landroid/accounts/Account;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavt;->zzeii:Lcom/google/android/gms/internal/zzavs;

    new-instance v1, Lcom/google/android/gms/internal/zzavx;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzavq;->zzabv()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/zzavx;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
