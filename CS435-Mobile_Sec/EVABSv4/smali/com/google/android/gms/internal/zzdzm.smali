.class final Lcom/google/android/gms/internal/zzdzm;
.super Lcom/google/android/gms/internal/zzebh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzebh<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/internal/zzt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzm;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzm;->zzmri:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzbtn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzm;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzeaz;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzm;->zzmrk:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/internal/zzt;

    invoke-interface {v0}, Lcom/google/firebase/auth/internal/zzt;->zzbtk()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
