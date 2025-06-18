.class final Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzems:I

.field public static final enum zzemt:I

.field public static final enum zzemu:I

.field public static final enum zzemv:I

.field private static final synthetic zzemw:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzems:I

    const/4 v1, 0x2

    sput v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzemt:I

    const/4 v2, 0x3

    sput v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzemu:I

    const/4 v3, 0x4

    sput v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzemv:I

    new-array v3, v3, [I

    sget v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzems:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzemt:I

    aput v4, v3, v0

    sget v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzemu:I

    aput v0, v3, v1

    sget v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzemv:I

    aput v0, v3, v2

    sput-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzemw:[I

    return-void
.end method

.method public static values$50KLMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UPRDECNM2TBKD0NM2S395TPMIPRED5N2UHRFDTJMOPAJD5JMSIBE8DM6IPBEEGI4IRBGDHIMQPBEEHGN8QBFDOTG____0()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzemw:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
