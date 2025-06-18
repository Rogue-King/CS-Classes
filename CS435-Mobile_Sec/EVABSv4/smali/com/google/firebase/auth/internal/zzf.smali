.class public final Lcom/google/firebase/auth/internal/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/AuthResult;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzmtk:Lcom/google/firebase/auth/internal/zzk;

.field private zzmtl:Lcom/google/firebase/auth/internal/zzd;

.field private zzmtm:Lcom/google/firebase/auth/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/zzg;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/internal/zzk;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/zzk;

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtk:Lcom/google/firebase/auth/internal/zzk;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtk:Lcom/google/firebase/auth/internal/zzk;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzk;->zzbum()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtl:Lcom/google/firebase/auth/internal/zzd;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v2}, Lcom/google/firebase/auth/internal/zzh;->getRawUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/firebase/auth/internal/zzd;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzh;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v4}, Lcom/google/firebase/auth/internal/zzh;->getRawUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzk;->isNewUser()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtl:Lcom/google/firebase/auth/internal/zzd;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtl:Lcom/google/firebase/auth/internal/zzd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/firebase/auth/internal/zzd;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzk;->isNewUser()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/zzd;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtl:Lcom/google/firebase/auth/internal/zzd;

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzk;->zzbud()Lcom/google/firebase/auth/zzd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtm:Lcom/google/firebase/auth/zzd;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/auth/internal/zzk;Lcom/google/firebase/auth/internal/zzd;Lcom/google/firebase/auth/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtk:Lcom/google/firebase/auth/internal/zzk;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtl:Lcom/google/firebase/auth/internal/zzd;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtm:Lcom/google/firebase/auth/zzd;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtl:Lcom/google/firebase/auth/internal/zzd;

    return-object v0
.end method

.method public final getUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtk:Lcom/google/firebase/auth/internal/zzk;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzf;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzf;->getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzf;->zzmtm:Lcom/google/firebase/auth/zzd;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
