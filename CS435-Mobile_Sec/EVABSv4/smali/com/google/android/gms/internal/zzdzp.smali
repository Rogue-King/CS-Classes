.class final Lcom/google/android/gms/internal/zzdzp;
.super Lcom/google/android/gms/internal/zzebh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzebh<",
        "Lcom/google/firebase/auth/GetTokenResult;",
        "Lcom/google/firebase/auth/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzmqq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    const-string v0, "refresh token cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzp;->zzmqq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzp;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzp;->zzmqq:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzp;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzeaz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzp;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebw;->zzbue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzp;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzp;->zzmqq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzebw;->zzpf(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzp;->zzmrk:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/internal/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzp;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzp;->zzmri:Lcom/google/firebase/auth/FirebaseUser;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/zzebw;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v0, Lcom/google/firebase/auth/GetTokenResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzp;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzebw;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/GetTokenResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
