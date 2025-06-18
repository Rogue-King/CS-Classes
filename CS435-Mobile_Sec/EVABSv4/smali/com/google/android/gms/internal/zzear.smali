.class final Lcom/google/android/gms/internal/zzear;
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
.field private final zzmra:Lcom/google/firebase/auth/UserProfileChangeRequest;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    const-string v0, "request cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/UserProfileChangeRequest;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzear;->zzmra:Lcom/google/firebase/auth/UserProfileChangeRequest;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzear;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzear;->zzmri:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzbtn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzear;->zzmra:Lcom/google/firebase/auth/UserProfileChangeRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzear;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeaz;->zza(Ljava/lang/String;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzear;->zzmrk:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/internal/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzear;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzear;->zzmpb:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzear;->zzmrs:Lcom/google/android/gms/internal/zzebu;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;)Lcom/google/firebase/auth/internal/zzk;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/zzebw;Lcom/google/firebase/auth/FirebaseUser;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
