.class public Lcom/google/android/gms/auth/account/WorkAccount;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final WorkAccountApi:Lcom/google/android/gms/auth/account/WorkAccountApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzegu:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzawa;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzegv:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzawa;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/account/WorkAccount;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/auth/account/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/auth/account/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/account/WorkAccount;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/auth/account/WorkAccount;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v2, Lcom/google/android/gms/auth/account/WorkAccount;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "WorkAccount.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/auth/account/WorkAccount;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzavq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavq;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/account/WorkAccount;->WorkAccountApi:Lcom/google/android/gms/auth/account/WorkAccountApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/account/WorkAccountClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/account/WorkAccountClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/account/WorkAccountClient;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/account/WorkAccountClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/account/WorkAccountClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/account/WorkAccountClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
