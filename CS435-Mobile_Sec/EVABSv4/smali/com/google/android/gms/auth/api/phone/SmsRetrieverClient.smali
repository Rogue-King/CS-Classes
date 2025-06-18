.class public abstract Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;
.super Lcom/google/android/gms/common/api/GoogleApi;

# interfaces
.implements Lcom/google/android/gms/auth/api/phone/SmsRetrieverApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;",
        "Lcom/google/android/gms/auth/api/phone/SmsRetrieverApi;"
    }
.end annotation


# static fields
.field private static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzegu:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzayb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzegv:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzayb;",
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

    sput-object v0, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/auth/api/phone/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/phone/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v2, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "SmsRetriever.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zzg;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/zzda;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zzg;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/zzda;)V

    return-void
.end method


# virtual methods
.method public abstract startSmsRetriever()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
