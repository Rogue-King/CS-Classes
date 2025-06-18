.class final Lcom/google/android/gms/internal/zzayj;
.super Lcom/google/android/gms/internal/zzaxr;


# instance fields
.field private synthetic zzeme:Lcom/google/android/gms/internal/zzayi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayj;->zzeme:Lcom/google/android/gms/internal/zzayi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaxr;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayj;->zzeme:Lcom/google/android/gms/internal/zzayi;

    new-instance v1, Lcom/google/android/gms/internal/zzayk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzayk;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
