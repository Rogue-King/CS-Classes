.class final Lcom/google/android/gms/internal/zzdzn;
.super Lcom/google/android/gms/internal/zzebh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzebh<",
        "Lcom/google/firebase/auth/ProviderQueryResult;",
        "Lcom/google/firebase/auth/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzemh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    const-string v0, "email cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzn;->zzemh:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzn;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzn;->zzemh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzn;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzeaz;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 2

    new-instance v0, Lcom/google/firebase/auth/internal/zzo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzn;->zzmrt:Lcom/google/android/gms/internal/zzebs;

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/zzo;-><init>(Lcom/google/android/gms/internal/zzebs;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
