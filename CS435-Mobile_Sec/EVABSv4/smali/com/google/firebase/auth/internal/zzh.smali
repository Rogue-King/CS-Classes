.class public final Lcom/google/firebase/auth/internal/zzh;
.super Lcom/google/android/gms/internal/zzbgl;

# interfaces
.implements Lcom/google/firebase/auth/UserInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaux:Ljava/lang/String;

.field private zzemh:Ljava/lang/String;

.field private zzemi:Ljava/lang/String;

.field private zziva:Ljava/lang/String;

.field private zzmov:Ljava/lang/String;

.field private zzmqb:Ljava/lang/String;

.field private zzmqe:Landroid/net/Uri;

.field private zzmsl:Z

.field private zzmsu:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/zzi;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzebu;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->getLocalId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzaux:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmov:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->getEmail()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzh;->zzemh:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzh;->zzemi:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->getPhotoUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqe:Landroid/net/Uri;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->isEmailVerified()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsl:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsu:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zziva:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzeby;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeby;->zzbuh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzaux:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeby;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmov:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeby;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzemi:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeby;->getPhotoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqe:Landroid/net/Uri;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeby;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzemh:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeby;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zziva:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsl:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeby;->getRawUserInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsu:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzaux:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmov:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzh;->zzemh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzh;->zziva:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzh;->zzemi:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqe:Landroid/net/Uri;

    :cond_0
    iput-boolean p7, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsl:Z

    iput-object p8, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsu:Ljava/lang/String;

    return-void
.end method

.method public static zzph(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzh;
    .locals 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "userId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "providerId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "email"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "phoneNumber"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "displayName"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "photoUrl"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p0, "isEmailVerified"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string p0, "rawUserInfo"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance p0, Lcom/google/firebase/auth/internal/zzh;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/auth/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DefaultAuthUserInfo"

    const-string v1, "Failed to unpack UserInfo from JSON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/zzdyz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdyz;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzemi:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzemh:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zziva:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoUrl()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqe:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqe:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqe:Landroid/net/Uri;

    return-object v0
.end method

.method public final getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmov:Ljava/lang/String;

    return-object v0
.end method

.method public final getRawUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsu:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzaux:Ljava/lang/String;

    return-object v0
.end method

.method public final isEmailVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsl:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzh;->getUid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzh;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzh;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzh;->getEmail()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzh;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzh;->isEmailVerified()Z

    move-result v0

    const/4 v2, 0x7

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsu:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzack()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzh;->zzaux:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "providerId"

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmov:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayName"

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzh;->zzemi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "photoUrl"

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmqb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "email"

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzh;->zzemh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzh;->zziva:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isEmailVerified"

    iget-boolean v2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsl:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rawUserInfo"

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzh;->zzmsu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultAuthUserInfo"

    const-string v2, "Failed to jsonify this object"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/internal/zzdyz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzdyz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
