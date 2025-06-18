.class public final Lcom/google/android/gms/internal/zzeav;
.super Lcom/google/android/gms/common/internal/zzab;

# interfaces
.implements Lcom/google/android/gms/internal/zzeau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzab<",
        "Lcom/google/android/gms/internal/zzeaz;",
        ">;",
        "Lcom/google/android/gms/internal/zzeau;"
    }
.end annotation


# static fields
.field private static zzehr:Lcom/google/android/gms/internal/zzbhf;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzmrc:Lcom/google/android/gms/internal/zzebd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbhf;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FirebaseAuth:"

    aput-object v3, v1, v2

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzbhf;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzeav;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/internal/zzebd;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeav;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeav;->zzmrc:Lcom/google/android/gms/internal/zzebd;

    return-void
.end method


# virtual methods
.method protected final zzabt()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzab;->zzabt()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeav;->zzmrc:Lcom/google/android/gms/internal/zzebd;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzebd;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.API_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final zzahn()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeav;->mContext:Landroid/content/Context;

    const-string v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzalq()Ljava/lang/String;
    .locals 9

    const-string v0, "firebear.preference"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebr;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "default"

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v3, "local"

    const/4 v4, 0x1

    const v5, 0x625df6b

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v1, v5, :cond_2

    const v8, 0x5c13d641

    if-eq v1, v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_4

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    :cond_6
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/zzeav;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    new-array v1, v7, [Ljava/lang/Object;

    if-eqz v6, :cond_8

    const-string v2, "Loading module via FirebaseOptions."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbhf;->zze(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeav;->zzmrc:Lcom/google/android/gms/internal/zzebd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzdzc;->zzmqj:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzeav;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Preparing to create service connection to fallback implementation"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbhf;->zze(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeav;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/zzeav;->zzehr:Lcom/google/android/gms/internal/zzbhf;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Preparing to create service connection to gms implementation"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbhf;->zze(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms"

    return-object v0

    :cond_8
    const-string v2, "Loading fallback module override."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbhf;->zze(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeav;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzbtv()Lcom/google/android/gms/internal/zzeaz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzab;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeaz;

    return-object v0
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzeaz;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzeaz;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzeba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeba;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final zzhm()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.gms.service.START"

    return-object v0
.end method

.method protected final zzhn()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object v0
.end method
