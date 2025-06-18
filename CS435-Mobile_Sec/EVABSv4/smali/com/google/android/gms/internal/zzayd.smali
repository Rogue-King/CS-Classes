.class final Lcom/google/android/gms/internal/zzayd;
.super Lcom/google/android/gms/internal/zzayf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayc;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzayf;-><init>(Lcom/google/android/gms/internal/zzayd;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzaxx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaye;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaye;-><init>(Lcom/google/android/gms/internal/zzayd;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzaxx;->zza(Lcom/google/android/gms/internal/zzaxz;)V

    return-void
.end method
