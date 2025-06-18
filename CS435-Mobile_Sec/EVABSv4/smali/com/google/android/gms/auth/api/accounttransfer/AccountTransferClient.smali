.class public Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;
.super Lcom/google/android/gms/common/api/GoogleApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzb;,
        Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;,
        Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/auth/api/accounttransfer/zzn;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzeiz:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzawi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzeja:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzawi;",
            "Lcom/google/android/gms/auth/api/accounttransfer/zzn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzejb:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/auth/api/accounttransfer/zzn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zzeiz:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/accounttransfer/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zzeja:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zzeja:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v2, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zzeiz:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "AccountTransfer.ACCOUNT_TRANSFER_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zzejb:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zzejb:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/zzd;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zzg;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/internal/zzda;)Lcom/google/android/gms/common/api/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzd;->zzahy()Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zzejb:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/zzd;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zzg;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/internal/zzda;)Lcom/google/android/gms/common/api/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzd;->zzahy()Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public getDeviceMetaData(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzawj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzawj;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/auth/api/accounttransfer/zzg;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/auth/api/accounttransfer/zzg;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzawj;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public notifyCompletion(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzawp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzawp;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/google/android/gms/auth/api/accounttransfer/zzj;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/auth/api/accounttransfer/zzj;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzawp;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public retrieveData(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "[B>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzawr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzawr;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/auth/api/accounttransfer/zze;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/auth/api/accounttransfer/zze;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzawr;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public sendData(Ljava/lang/String;[B)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzawt;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzawt;-><init>(Ljava/lang/String;[B)V

    new-instance p1, Lcom/google/android/gms/auth/api/accounttransfer/zzd;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/auth/api/accounttransfer/zzd;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzawt;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public showUserChallenge(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzawv;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzawv;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    new-instance p1, Lcom/google/android/gms/auth/api/accounttransfer/zzi;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/auth/api/accounttransfer/zzi;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzawv;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
