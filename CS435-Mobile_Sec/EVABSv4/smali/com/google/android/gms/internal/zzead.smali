.class final Lcom/google/android/gms/internal/zzead;
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
.field private zzeia:Ljava/lang/String;

.field private zzmqw:Lcom/google/firebase/auth/ActionCodeSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebh;-><init>(I)V

    const-string v0, "token cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzead;->zzeia:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzead;->zzmqw:Lcom/google/firebase/auth/ActionCodeSettings;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzead;->zzmrj:Lcom/google/android/gms/internal/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzead;->zzeia:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzead;->zzmqw:Lcom/google/firebase/auth/ActionCodeSettings;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzead;->zzmrh:Lcom/google/android/gms/internal/zzebk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeaz;->zza(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Lcom/google/android/gms/internal/zzeax;)V

    return-void
.end method

.method public final zzbtu()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzebh;->zzbh(Ljava/lang/Object;)V

    return-void
.end method
