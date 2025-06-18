.class final Lcom/google/android/gms/internal/zzdzs;
.super Lcom/google/android/gms/internal/zzebh;

# interfaces
.implements Lcom/google/android/gms/internal/zzebj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzebh<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/firebase/auth/internal/zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzebj;"
    }
.end annotation


# instance fields
.field private final zzmqt:Lcom/google/firebase/auth/PhoneAuthCredential;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    const-string v0, "credential cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzs;->zzmqt:Lcom/google/firebase/auth/PhoneAuthCredential;

    iput-object p0, p0, Lcom/google/android/gms/internal/zzebh;->zzmrq:Lcom/google/android/gms/internal/zzebj;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzs;->zzmri:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzbtn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzs;->zzmqt:Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeaz;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrg:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrg:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrx:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrw:Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrl:Lcom/google/firebase/auth/internal/zzu;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrl:Lcom/google/firebase/auth/internal/zzu;

    invoke-interface {p2, p1}, Lcom/google/firebase/auth/internal/zzu;->onError(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzebh;->zzax(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzs;->zzmpb:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrs:Lcom/google/android/gms/internal/zzebu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdzh;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;)Lcom/google/firebase/auth/internal/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrk:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/auth/internal/zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzs;->zzmrr:Lcom/google/android/gms/internal/zzebw;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/zzebw;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v1, Lcom/google/firebase/auth/internal/zzf;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzf;-><init>(Lcom/google/firebase/auth/internal/zzk;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
