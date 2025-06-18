.class public final Lcom/google/firebase/auth/internal/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/FirebaseUserMetadata;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreationTimestamp:J

.field private zzmtw:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/zzn;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/auth/internal/zzm;->zzmtw:J

    iput-wide p3, p0, Lcom/google/firebase/auth/internal/zzm;->mCreationTimestamp:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCreationTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzm;->mCreationTimestamp:J

    return-wide v0
.end method

.method public final getLastSignInTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzm;->zzmtw:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzm;->getLastSignInTimestamp()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzm;->getCreationTimestamp()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
