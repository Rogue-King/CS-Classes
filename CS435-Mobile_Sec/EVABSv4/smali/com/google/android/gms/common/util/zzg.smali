.class public final Lcom/google/android/gms/common/util/zzg;
.super Ljava/lang/Object;


# static fields
.field private static final zzgkk:[Ljava/lang/String;

.field private static zzgkl:Landroid/os/DropBoxManager;

.field private static zzgkm:Z

.field private static zzgkn:I

.field private static zzgko:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android."

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "com.android."

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "dalvik."

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "java."

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "javax."

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/android/gms/common/util/zzg;->zzgkk:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzg;->zzgkl:Landroid/os/DropBoxManager;

    sput-boolean v1, Lcom/google/android/gms/common/util/zzg;->zzgkm:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/util/zzg;->zzgkn:I

    sput v1, Lcom/google/android/gms/common/util/zzg;->zzgko:I

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1

    const/high16 v0, 0x20000000

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .locals 1

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
