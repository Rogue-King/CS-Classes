.class final Lcom/google/firebase/auth/internal/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzmtp:Ljava/lang/String;

.field final synthetic zzmua:Lcom/google/firebase/auth/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzr;->zzmua:Lcom/google/firebase/auth/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzr;->zzmtp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzr;->zzmtp:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzv;->initialize(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/auth/internal/zzv;->zzmue:Lcom/google/android/gms/internal/zzcce;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzaso()Lcom/google/android/gms/internal/zzccl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzccl;->zzb(Lcom/google/android/gms/internal/zzcce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzcj(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/auth/internal/zzq;->zzbup()Lcom/google/android/gms/internal/zzbhf;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Token refreshing started"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzbhf;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/firebase/auth/internal/zzs;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/internal/zzs;-><init>(Lcom/google/firebase/auth/internal/zzr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
