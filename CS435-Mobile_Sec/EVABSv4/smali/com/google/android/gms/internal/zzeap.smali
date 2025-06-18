.class final Lcom/google/android/gms/internal/zzeap;
.super Lcom/google/android/gms/internal/zzebh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzebh<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzekn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    const-string v0, "password cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeap;->zzekn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeap;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeap;->zzmri:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzbtn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeap;->zzekn:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeap;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeaz;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeap;->zzmrk:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/internal/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeap;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeap;->zzmpb:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeap;->zzmrs:Lcom/google/android/gms/internal/zzebu;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;)Lcom/google/firebase/auth/internal/zzk;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/zzebw;Lcom/google/firebase/auth/FirebaseUser;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
