.class public final Lcom/google/android/gms/internal/zzebb;
.super Ljava/lang/Object;


# static fields
.field private static zzegu:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzeau;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmre:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzeau;",
            "Lcom/google/android/gms/internal/zzebd;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzmrf:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/internal/zzebd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzebb;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzebc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzebc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzebb;->zzmre:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/internal/zzebb;->zzmre:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzebb;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "InternalFirebaseAuth.FIREBASE_AUTH_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzebb;->zzmrf:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzebd;)Lcom/google/android/gms/internal/zzdzh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdzh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzebd;)V

    return-object v0
.end method
