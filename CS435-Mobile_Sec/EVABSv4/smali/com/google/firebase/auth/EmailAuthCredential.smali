.class public Lcom/google/firebase/auth/EmailAuthCredential;
.super Lcom/google/firebase/auth/AuthCredential;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzehr:Lcom/google/android/gms/internal/zzbhf;


# instance fields
.field private zzekn:Ljava/lang/String;

.field private zzemh:Ljava/lang/String;

.field private final zzmoy:Ljava/lang/String;

.field private zzmoz:Ljava/lang/String;

.field private zzmpa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/auth/zzf;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzf;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/EmailAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/internal/zzbhf;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "EmailAuthCredential"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzbhf;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/auth/EmailAuthCredential;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/auth/EmailAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/auth/AuthCredential;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzemh:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create an EmailAuthCredential without a password or emailLink."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzekn:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmoy:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmoz:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmpa:Z

    return-void
.end method

.method public static isSignInWithEmailLink(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/auth/EmailAuthCredential;->zzpb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "link"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/auth/EmailAuthCredential;->zzpb(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/google/firebase/auth/EmailAuthCredential;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "isSignInWithEmailLink returned an UnsupportedOperationException: "

    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    aput-object p0, v0, v1

    const-string p0, "EmailAuthCredential"

    invoke-virtual {v2, p0, v0}, Lcom/google/android/gms/internal/zzbhf;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private static zzpb(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "oobCode"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mode"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "signIn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzemh:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzekn:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    const-string v0, "password"

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzekn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "password"

    return-object v0

    :cond_0
    const-string v0, "emailLink"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzemh:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzekn:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmoy:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmoz:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmpa:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/EmailAuthCredential;
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzbtn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmoz:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmpa:Z

    return-object p0
.end method

.method public final zzbth()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzmoy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
