.class public Lcom/google/firebase/auth/internal/zzk;
.super Lcom/google/firebase/auth/FirebaseUser;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzmso:Z

.field private zzmsp:Lcom/google/firebase/auth/zzd;

.field private zzmtn:Lcom/google/android/gms/internal/zzebw;

.field private zzmto:Lcom/google/firebase/auth/internal/zzh;

.field private zzmtp:Ljava/lang/String;

.field private zzmtq:Ljava/lang/String;

.field private zzmtr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzh;",
            ">;"
        }
    .end annotation
.end field

.field private zzmts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzmtt:Ljava/lang/String;

.field private zzmtu:Z

.field private zzmtv:Lcom/google/firebase/auth/internal/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/zzl;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzebw;Lcom/google/firebase/auth/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/google/firebase/auth/internal/zzm;ZLcom/google/firebase/auth/zzd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzebw;",
            "Lcom/google/firebase/auth/internal/zzh;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzh;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/firebase/auth/internal/zzm;",
            "Z",
            "Lcom/google/firebase/auth/zzd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtn:Lcom/google/android/gms/internal/zzebw;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtp:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtr:Ljava/util/List;

    iput-object p6, p0, Lcom/google/firebase/auth/internal/zzk;->zzmts:Ljava/util/List;

    iput-object p7, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtt:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtu:Z

    iput-object p9, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtv:Lcom/google/firebase/auth/internal/zzm;

    iput-boolean p10, p0, Lcom/google/firebase/auth/internal/zzk;->zzmso:Z

    iput-object p11, p0, Lcom/google/firebase/auth/internal/zzk;->zzmsp:Lcom/google/firebase/auth/zzd;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtp:Ljava/lang/String;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtq:Ljava/lang/String;

    const-string p1, "2"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtt:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/FirebaseUser;->zzar(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzh;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzh;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtv:Lcom/google/firebase/auth/internal/zzm;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzh;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzh;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getProviderData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtr:Ljava/util/List;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzh;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmts:Ljava/util/List;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzh;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtu:Z

    return v0
.end method

.method public isEmailVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzh;->isEmailVerified()Z

    move-result v0

    return v0
.end method

.method public final isNewUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmso:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzbtm()Lcom/google/android/gms/internal/zzebw;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtp:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtq:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtr:Ljava/util/List;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtt:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v1

    const/16 v3, 0x8

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;

    move-result-object v1

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmso:Z

    const/16 v3, 0xa

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmsp:Lcom/google/firebase/auth/zzd;

    const/16 v3, 0xb

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzebw;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzebw;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtn:Lcom/google/android/gms/internal/zzebw;

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtv:Lcom/google/firebase/auth/internal/zzm;

    return-void
.end method

.method public final zzar(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)",
            "Lcom/google/firebase/auth/FirebaseUser;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtr:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmts:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/UserInfo;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/google/firebase/auth/internal/zzh;

    iput-object v3, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzk;->zzmts:Ljava/util/List;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtr:Ljava/util/List;

    check-cast v2, Lcom/google/firebase/auth/internal/zzh;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtr:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzh;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmto:Lcom/google/firebase/auth/internal/zzh;

    :cond_2
    return-object p0
.end method

.method public final zzb(Lcom/google/firebase/auth/zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmsp:Lcom/google/firebase/auth/zzd;

    return-void
.end method

.method public final zzbtl()Lcom/google/firebase/FirebaseApp;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtp:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public final zzbtm()Lcom/google/android/gms/internal/zzebw;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtn:Lcom/google/android/gms/internal/zzebw;

    return-object v0
.end method

.method public final zzbtn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtn:Lcom/google/android/gms/internal/zzebw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebw;->zzack()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbto()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzbtm()Lcom/google/android/gms/internal/zzebw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzebw;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbud()Lcom/google/firebase/auth/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmsp:Lcom/google/firebase/auth/zzd;

    return-object v0
.end method

.method public final zzbum()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtr:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic zzck(Z)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtu:Z

    return-object p0
.end method

.method public final zzco(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmso:Z

    return-void
.end method

.method public final zzpi(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzk;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmtt:Ljava/lang/String;

    return-object p0
.end method
