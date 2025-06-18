.class public final Lcom/google/android/gms/internal/zzece;
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
            "Lcom/google/android/gms/internal/zzece;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zziva:Ljava/lang/String;

.field private final zzmsy:J

.field private final zzmsz:Z

.field private final zzmta:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzecf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzecf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzece;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzece;->zziva:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzece;->zzmsy:J

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzece;->zzmsz:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzece;->zzmta:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzece;->zziva:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzece;->zzmsy:J

    const/4 v0, 0x2

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzece;->zzmsz:Z

    const/4 v2, 0x3

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzece;->zzmta:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
