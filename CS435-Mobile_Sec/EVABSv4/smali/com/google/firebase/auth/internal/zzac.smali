.class public final Lcom/google/firebase/auth/internal/zzac;
.super Ljava/lang/Object;


# static fields
.field private static EXTRA_STATUS:Ljava/lang/String;

.field private static zzmul:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.firebase.auth.internal.STATUS"

    sput-object v0, Lcom/google/firebase/auth/internal/zzac;->EXTRA_STATUS:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzac;->zzmul:Ljava/util/Map;

    const-string v1, "auth/no-such-provider"

    const-string v2, "NO_SUCH_PROVIDER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/auth/internal/zzac;->zzmul:Ljava/util/Map;

    const-string v1, "auth/invalid-cert-hash"

    const-string v2, "INVALID_CERT_HASH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/auth/internal/zzac;->zzmul:Ljava/util/Map;

    const-string v1, "auth/network-request-failed"

    const-string v2, "WEB_NETWORK_REQUEST_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/auth/internal/zzac;->zzmul:Ljava/util/Map;

    const-string v1, "auth/web-storage-unsupported"

    const-string v2, "WEB_STORAGE_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/firebase/auth/internal/zzac;->zzo(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    sget-object v0, Lcom/google/firebase/auth/internal/zzac;->EXTRA_STATUS:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzbgq;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/internal/zzbgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method

.method public static zza(Landroid/content/Intent;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/zzac;->EXTRA_STATUS:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/zzbgq;->zza(Lcom/google/android/gms/internal/zzbgp;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static zzo(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/auth/internal/zzac;->EXTRA_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
