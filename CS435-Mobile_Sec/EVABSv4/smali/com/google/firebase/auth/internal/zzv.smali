.class public final Lcom/google/firebase/auth/internal/zzv;
.super Ljava/lang/Object;


# static fields
.field public static final zzmue:Lcom/google/android/gms/internal/zzcce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "firebase_auth_proactive_token_refresh_enabled"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzccg;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/auth/internal/zzv;->zzmue:Lcom/google/android/gms/internal/zzcce;

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzasn()Lcom/google/android/gms/internal/zzcck;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzaso()Lcom/google/android/gms/internal/zzccl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzccl;->initialize(Landroid/content/Context;)V

    return-void
.end method
