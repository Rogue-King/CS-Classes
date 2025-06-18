.class abstract Lcom/google/android/gms/internal/zzayf;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzayb;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private zzejm:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzayd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayf;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzayb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayf;->zzejm:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaxx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayf;->zza(Lcom/google/android/gms/internal/zzaxx;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzaxx;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected final zzh(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayf;->zzejm:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/api/internal/zzdf;->zza(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
