.class public abstract Lcom/google/android/gms/auth/api/signin/internal/zzs;
.super Lcom/google/android/gms/internal/zzew;

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/internal/zzr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzew;-><init>()V

    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzs;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzew;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    if-eq p1, p3, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzs;->zzact()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzs;->zzacs()V

    :goto_0
    return p3
.end method
