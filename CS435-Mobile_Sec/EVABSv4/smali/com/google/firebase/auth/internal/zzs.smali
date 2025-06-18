.class final Lcom/google/firebase/auth/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zzmub:Lcom/google/firebase/auth/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzs;->zzmub:Lcom/google/firebase/auth/internal/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    instance-of p1, p1, Lcom/google/firebase/FirebaseNetworkException;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/firebase/auth/internal/zzq;->zzbup()Lcom/google/android/gms/internal/zzbhf;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failure to refresh token; scheduling refresh after failure"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzbhf;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzs;->zzmub:Lcom/google/firebase/auth/internal/zzr;

    iget-object p1, p1, Lcom/google/firebase/auth/internal/zzr;->zzmua:Lcom/google/firebase/auth/internal/zzq;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzq;->zzbuo()V

    :cond_0
    return-void
.end method
