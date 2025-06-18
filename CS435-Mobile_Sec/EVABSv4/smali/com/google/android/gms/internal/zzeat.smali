.class final Lcom/google/android/gms/internal/zzeat;
.super Lcom/google/android/gms/internal/zzebh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzebh<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzmrb:Lcom/google/android/gms/internal/zzece;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzece;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzece;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeat;->zzmrb:Lcom/google/android/gms/internal/zzece;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeat;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeat;->zzmrb:Lcom/google/android/gms/internal/zzece;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeat;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzeaz;->zza(Lcom/google/android/gms/internal/zzece;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 0

    return-void
.end method
