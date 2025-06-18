.class final Lcom/google/android/gms/internal/zzeas;
.super Lcom/google/android/gms/internal/zzebh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzebh<",
        "Ljava/lang/String;",
        "Lcom/google/firebase/auth/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzhxo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    const-string v0, "code cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeas;->zzhxo:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeas;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeas;->zzhxo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeas;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzeaz;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 2

    new-instance v0, Lcom/google/firebase/auth/internal/zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeas;->zzmru:Lcom/google/android/gms/internal/zzecc;

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/zzc;-><init>(Lcom/google/android/gms/internal/zzecc;)V

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzc;->getOperation()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x445b

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebh;->zzax(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeas;->zzmru:Lcom/google/android/gms/internal/zzecc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecc;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
