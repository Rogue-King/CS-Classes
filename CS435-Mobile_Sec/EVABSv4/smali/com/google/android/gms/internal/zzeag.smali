.class final Lcom/google/android/gms/internal/zzeag;
.super Lcom/google/android/gms/internal/zzebh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzebh<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/firebase/auth/internal/zza;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeag;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeag;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeaz;->zza(Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeag;->zzmpb:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeag;->zzmrs:Lcom/google/android/gms/internal/zzebu;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;Z)Lcom/google/firebase/auth/internal/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeag;->zzmrk:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/auth/internal/zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeag;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/zzebw;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v1, Lcom/google/firebase/auth/internal/zzf;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzf;-><init>(Lcom/google/firebase/auth/internal/zzk;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
