.class public final Lcom/google/android/gms/auth/api/zzd;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/auth/api/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static zzeix:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzaxs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzeiy:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzaxs;",
            "Lcom/google/android/gms/auth/api/zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/zzd;->zzeix:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/auth/api/zze;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/zzd;->zzeiy:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/auth/api/zzd;->zzeiy:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v2, Lcom/google/android/gms/auth/api/zzd;->zzeix:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/auth/api/zzd;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method
