.class public final Lcom/google/android/gms/auth/api/Auth;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
    }
.end annotation


# static fields
.field public static final CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

.field public static final GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

.field public static final PROXY_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/auth/api/zzf;",
            ">;"
        }
    .end annotation
.end field

.field public static final ProxyApi:Lcom/google/android/gms/auth/api/proxy/ProxyApi;

.field public static final zzeik:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzaxi;",
            ">;"
        }
    .end annotation
.end field

.field private static zzeil:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzawd;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzeim:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/auth/api/signin/internal/zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzein:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzaxi;",
            "Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzeio:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzawd;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzeip:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/auth/api/signin/internal/zze;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static zzeiq:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static zzeir:Lcom/google/android/gms/internal/zzawb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzeik:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzeil:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzeim:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/auth/api/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzein:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/auth/api/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzeio:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/auth/api/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzeip:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v0, Lcom/google/android/gms/auth/api/zzd;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->PROXY_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->zzein:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->zzeik:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "Auth.CREDENTIALS_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->zzeip:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->zzeim:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->zzeio:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->zzeil:Lcom/google/android/gms/common/api/Api$zzf;

    const-string v3, "Auth.ACCOUNT_STATUS_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzeiq:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzayh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzayh;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->ProxyApi:Lcom/google/android/gms/auth/api/proxy/ProxyApi;

    new-instance v0, Lcom/google/android/gms/internal/zzawz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawz;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    new-instance v0, Lcom/google/android/gms/internal/zzawc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->zzeir:Lcom/google/android/gms/internal/zzawb;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
