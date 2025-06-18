.class public final Lcom/google/android/gms/internal/zzebe;
.super Ljava/lang/Object;


# instance fields
.field private zzmna:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebe;->zzmna:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzbtz()Lcom/google/android/gms/internal/zzebd;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzebd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebe;->zzmna:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzebd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzebc;)V

    return-object v0
.end method
