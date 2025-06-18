.class public final Lcom/google/firebase/auth/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/AdditionalUserInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzmov:Ljava/lang/String;

.field private zzmso:Z

.field private final zzmsu:Ljava/lang/String;

.field private zzmtj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/zze;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zze;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzd;->zzmov:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzd;->zzmsu:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzw;->zzpj(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzd;->zzmtj:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/firebase/auth/internal/zzd;->zzmso:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzd;->zzmso:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzd;->zzmsu:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzd;->zzmov:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzd;->zzmtj:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getProfile()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzd;->zzmtj:Ljava/util/Map;

    return-object v0
.end method

.method public final getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzd;->zzmov:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzd;->zzmov:Ljava/lang/String;

    const-string v1, "github.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzd;->zzmtj:Ljava/util/Map;

    const-string v1, "login"

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzd;->zzmov:Ljava/lang/String;

    const-string v1, "twitter.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzd;->zzmtj:Ljava/util/Map;

    const-string v1, "screen_name"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isNewUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzd;->zzmso:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzd;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzd;->zzmsu:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzd;->isNewUser()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
