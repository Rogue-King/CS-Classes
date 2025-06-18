.class final Lcom/google/android/gms/internal/zzdzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lcom/google/android/gms/internal/zzdzc;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zzmqg:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final zzmqh:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final zzmqi:Lcom/google/android/gms/internal/zzdzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/internal/zzdzg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;",
            "Lcom/google/android/gms/internal/zzdzg;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzb;->zzmqg:Lcom/google/android/gms/common/api/GoogleApi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzb;->zzmqh:Lcom/google/android/gms/common/api/GoogleApi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdzb;->zzmqi:Lcom/google/android/gms/internal/zzdzg;

    return-void
.end method
