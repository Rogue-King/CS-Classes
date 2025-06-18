.class final Lcom/google/firebase/auth/internal/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzl;


# instance fields
.field private synthetic zzmuj:Lcom/google/firebase/auth/internal/zzy;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzz;->zzmuj:Lcom/google/firebase/auth/internal/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbj(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzz;->zzmuj:Lcom/google/firebase/auth/internal/zzy;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzy;->zza(Lcom/google/firebase/auth/internal/zzy;Z)Z

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzz;->zzmuj:Lcom/google/firebase/auth/internal/zzy;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzy;->cancel()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzz;->zzmuj:Lcom/google/firebase/auth/internal/zzy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzy;->zza(Lcom/google/firebase/auth/internal/zzy;Z)Z

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzz;->zzmuj:Lcom/google/firebase/auth/internal/zzy;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzy;->zzb(Lcom/google/firebase/auth/internal/zzy;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzz;->zzmuj:Lcom/google/firebase/auth/internal/zzy;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzy;->zzc(Lcom/google/firebase/auth/internal/zzy;)Lcom/google/firebase/auth/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzq;->zzbun()V

    :cond_1
    return-void
.end method
