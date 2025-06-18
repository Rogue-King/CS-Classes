.class final Lcom/google/android/gms/internal/zzdzr;
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


# instance fields
.field private final zzmqs:Lcom/google/android/gms/internal/zzeci;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/AuthCredential;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    const-string v0, "credential cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzb;->zza(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/internal/zzeci;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzr;->zzmqs:Lcom/google/android/gms/internal/zzeci;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzr;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzr;->zzmri:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzbtn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzr;->zzmqs:Lcom/google/android/gms/internal/zzeci;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdzr;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeaz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeci;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzr;->zzmpb:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzr;->zzmrs:Lcom/google/android/gms/internal/zzebu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;)Lcom/google/firebase/auth/internal/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzr;->zzmrk:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/auth/internal/zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzr;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/zzebw;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v1, Lcom/google/firebase/auth/internal/zzf;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzf;-><init>(Lcom/google/firebase/auth/internal/zzk;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
