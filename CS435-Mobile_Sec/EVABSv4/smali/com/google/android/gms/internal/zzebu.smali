.class public final Lcom/google/android/gms/internal/zzebu;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzebu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreationTimestamp:J

.field private zzekn:Ljava/lang/String;

.field private zzemh:Ljava/lang/String;

.field private zzemi:Ljava/lang/String;

.field private zziva:Ljava/lang/String;

.field private zzmqb:Ljava/lang/String;

.field private zzmsk:Ljava/lang/String;

.field private zzmsl:Z

.field private zzmsm:Lcom/google/android/gms/internal/zzeca;

.field private zzmsn:J

.field private zzmso:Z

.field private zzmsp:Lcom/google/firebase/auth/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzebv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzebv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzebu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzeca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeca;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmsm:Lcom/google/android/gms/internal/zzeca;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzeca;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/firebase/auth/zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebu;->zzmsk:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzebu;->zzemh:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzebu;->zzmsl:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzebu;->zzemi:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzebu;->zzmqb:Ljava/lang/String;

    if-nez p6, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzeca;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzeca;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p6}, Lcom/google/android/gms/internal/zzeca;->zza(Lcom/google/android/gms/internal/zzeca;)Lcom/google/android/gms/internal/zzeca;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzebu;->zzmsm:Lcom/google/android/gms/internal/zzeca;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzebu;->zzekn:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzebu;->zziva:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzebu;->mCreationTimestamp:J

    iput-wide p11, p0, Lcom/google/android/gms/internal/zzebu;->zzmsn:J

    iput-boolean p13, p0, Lcom/google/android/gms/internal/zzebu;->zzmso:Z

    iput-object p14, p0, Lcom/google/android/gms/internal/zzebu;->zzmsp:Lcom/google/firebase/auth/zzd;

    return-void
.end method


# virtual methods
.method public final getCreationTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzebu;->mCreationTimestamp:J

    return-wide v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zzemi:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zzemh:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastSignInTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmsn:J

    return-wide v0
.end method

.method public final getLocalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmsk:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zziva:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmqb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmqb:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isEmailVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmsl:Z

    return v0
.end method

.method public final isNewUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmso:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebu;->zzmsk:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebu;->zzemh:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzebu;->zzmsl:Z

    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebu;->zzemi:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebu;->zzmqb:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebu;->zzmsm:Lcom/google/android/gms/internal/zzeca;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebu;->zzekn:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebu;->zziva:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzebu;->mCreationTimestamp:J

    const/16 v1, 0xa

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzebu;->zzmsn:J

    const/16 v1, 0xb

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzebu;->zzmso:Z

    const/16 v3, 0xc

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebu;->zzmsp:Lcom/google/firebase/auth/zzd;

    const/16 v3, 0xd

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzbuc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeby;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmsm:Lcom/google/android/gms/internal/zzeca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeca;->zzbuc()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbud()Lcom/google/firebase/auth/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebu;->zzmsp:Lcom/google/firebase/auth/zzd;

    return-object v0
.end method
