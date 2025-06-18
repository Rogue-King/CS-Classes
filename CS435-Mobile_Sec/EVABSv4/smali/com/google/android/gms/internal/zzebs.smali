.class public final Lcom/google/android/gms/internal/zzebs;
.super Lcom/google/android/gms/internal/zzbgl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbgl;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzebs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRegistered:Z

.field private zzmov:Ljava/lang/String;

.field private zzmsg:Ljava/lang/String;

.field private zzmsh:Z

.field private zzmsi:Lcom/google/android/gms/internal/zzecg;

.field private zzmsj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzebt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzebt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzebs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzecg;->zzbul()Lcom/google/android/gms/internal/zzecg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebs;->zzmsi:Lcom/google/android/gms/internal/zzecg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/zzecg;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzecg;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebs;->zzmsg:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzebs;->mRegistered:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzebs;->zzmov:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzebs;->zzmsh:Z

    if-nez p5, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzecg;->zzbul()Lcom/google/android/gms/internal/zzecg;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lcom/google/android/gms/internal/zzecg;->zza(Lcom/google/android/gms/internal/zzecg;)Lcom/google/android/gms/internal/zzecg;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzebs;->zzmsi:Lcom/google/android/gms/internal/zzecg;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzebs;->zzmsj:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAllProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebs;->zzmsi:Lcom/google/android/gms/internal/zzecg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecg;->zzbuk()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSignInMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebs;->zzmsj:Ljava/util/List;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebs;->zzmsg:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzebs;->mRegistered:Z

    const/4 v3, 0x3

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebs;->zzmov:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzebs;->zzmsh:Z

    const/4 v3, 0x5

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebs;->zzmsi:Lcom/google/android/gms/internal/zzecg;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzebs;->zzmsj:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
