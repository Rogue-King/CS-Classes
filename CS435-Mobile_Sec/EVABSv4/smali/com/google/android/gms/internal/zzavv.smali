.class final Lcom/google/android/gms/internal/zzavv;
.super Lcom/google/android/gms/internal/zzavw;


# instance fields
.field private synthetic zzeij:Lcom/google/android/gms/internal/zzavu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavv;->zzeij:Lcom/google/android/gms/internal/zzavu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzat(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavv;->zzeij:Lcom/google/android/gms/internal/zzavu;

    new-instance v1, Lcom/google/android/gms/internal/zzavz;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzavq;->zzabv()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzavz;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
