.class public final Lcom/google/android/gms/internal/zzdzh;
.super Lcom/google/android/gms/internal/zzdza;


# instance fields
.field private final zzaiq:Landroid/content/Context;

.field private final zzmqo:Lcom/google/android/gms/internal/zzebd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzebd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzh;->zzaiq:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzh;->zzmqo:Lcom/google/android/gms/internal/zzebd;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "CallbackT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzebh<",
            "TResultT;TCallbackT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzdzu<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdzu;-><init>(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;)Lcom/google/firebase/auth/internal/zzk;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;Z)Lcom/google/firebase/auth/internal/zzk;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;Z)Lcom/google/firebase/auth/internal/zzk;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/firebase/auth/internal/zzh;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/auth/internal/zzh;-><init>(Lcom/google/android/gms/internal/zzebu;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->zzbuc()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/google/firebase/auth/internal/zzh;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzeby;

    invoke-direct {v3, v4}, Lcom/google/firebase/auth/internal/zzh;-><init>(Lcom/google/android/gms/internal/zzeby;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/firebase/auth/internal/zzk;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/internal/zzk;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    invoke-virtual {v1, p2}, Lcom/google/firebase/auth/FirebaseUser;->zzck(Z)Lcom/google/firebase/auth/FirebaseUser;

    new-instance p0, Lcom/google/firebase/auth/internal/zzm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->getLastSignInTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->getCreationTimestamp()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/zzm;-><init>(JJ)V

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzk;->zza(Lcom/google/firebase/auth/internal/zzm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->isNewUser()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzk;->zzco(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebu;->zzbud()Lcom/google/firebase/auth/zzd;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzk;->zzb(Lcom/google/firebase/auth/zzd;)V

    return-object v1
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;)Lcom/google/firebase/auth/internal/zzk;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;)Lcom/google/firebase/auth/internal/zzk;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;Z)Lcom/google/firebase/auth/internal/zzk;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzebu;Z)Lcom/google/firebase/auth/internal/zzk;

    move-result-object p0

    return-object p0
.end method

.method private final zzcm(Z)Lcom/google/android/gms/common/api/GoogleApi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/internal/zzebd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzh;->zzmqo:Lcom/google/android/gms/internal/zzebd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzebd;

    iput-boolean p1, v0, Lcom/google/android/gms/internal/zzdzc;->zzmqj:Z

    new-instance p1, Lcom/google/android/gms/internal/zzdze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzh;->zzaiq:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/zzebb;->zzmrf:Lcom/google/android/gms/common/api/Api;

    new-instance v3, Lcom/google/firebase/zzb;

    invoke-direct {v3}, Lcom/google/firebase/zzb;-><init>()V

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzdze;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/zzda;)V

    return-object p1
.end method


# virtual methods
.method public final setFirebaseUIVersion(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeaf;-><init>(Ljava/lang/String;)V

    const-string p1, "setFirebaseUIVersion"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzead;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzead;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "sendEmailVerification"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeah;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzeah;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "signInWithCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeak;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzeak;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "sendSignInLinkToEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzv;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzv;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reauthenticateWithCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzx;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzx;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reauthenticateWithEmailLink"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeaq;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzeaq;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "updatePhoneNumber"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzear;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzear;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "updateProfile"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeac;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reload"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zza(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzp;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "getAccessToken"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zza(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzz;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/zzdzz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reauthenticateWithEmailPassword"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeal;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzeal;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "signInWithPhoneNumber"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeag;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "signInAnonymously"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ProviderQueryResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzn;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdzn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "fetchProvidersForEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zza(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zzhc(I)V

    new-instance v0, Lcom/google/android/gms/internal/zzeae;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzeae;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "sendPasswordResetEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeai;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzeai;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "signInWithCustomToken"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzk;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzdzk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "confirmPasswordReset"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzl;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzdzl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "createUserWithEmailAndPassword"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzt;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzt;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdzm;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "delete"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzece;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeat;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzeat;-><init>(Lcom/google/android/gms/internal/zzece;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "verifyPhoneNumber"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzw;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzw;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reauthenticateWithCredentialWithData"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzy;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzy;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reauthenticateWithEmailLinkWithData"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeab;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzeab;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reauthenticateWithPhoneCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeao;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzeao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "updateEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeaa;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/zzeaa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reauthenticateWithEmailPasswordWithData"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/SignInMethodQueryResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzo;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdzo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "fetchSignInMethodsForEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zza(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zzhc(I)V

    new-instance v0, Lcom/google/android/gms/internal/zzeae;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzeae;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "sendSignInLinkToEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeaj;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzeaj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "signInWithEmailAndPassword"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final zzbtq()Lcom/google/android/gms/internal/zzdzb;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzh;->zzaiq:Landroid/content/Context;

    const-string v1, "com.google.android.gms.firebase_auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzy(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzdzh;->zzcm(Z)Lcom/google/android/gms/common/api/GoogleApi;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdzh;->zzaiq:Landroid/content/Context;

    const-string v4, "com.google.firebase.auth"

    invoke-static {v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzdzh;->zzcm(Z)Lcom/google/android/gms/common/api/GoogleApi;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/zzdzd;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {v6, v0, v3, v7, v1}, Lcom/google/android/gms/internal/zzdzd;-><init>(IILjava/util/Map;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzdzb;

    invoke-direct {v0, v2, v5, v6}, Lcom/google/android/gms/internal/zzdzb;-><init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/internal/zzdzg;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzw;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzw;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "reauthenticateWithPhoneCredentialWithData"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeap;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzeap;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "updatePassword"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzj;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdzj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "checkActionCode"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4277

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeaw;->zzaw(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_2

    check-cast p3, Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {p3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzbth()Z

    move-result v0

    const-string v1, "linkEmailAuthCredential"

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzdzq;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzq;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzdzt;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzt;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_3

    check-cast p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    new-instance v0, Lcom/google/android/gms/internal/zzdzs;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzs;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "linkPhoneAuthCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzdzr;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdzr;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "linkFederatedCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4278

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeaw;->zzaw(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x4889ba9b

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "password"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzean;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "unlinkFederatedCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p3, Lcom/google/android/gms/internal/zzeam;

    invoke-direct {p3}, Lcom/google/android/gms/internal/zzeam;-><init>()V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzebh;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zzbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzebh;->zza(Lcom/google/firebase/auth/internal/zzu;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "unlinkEmailCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdzi;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdzi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "applyActionCode"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeas;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzeas;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzebh;

    move-result-object p1

    const-string p2, "verifyPasswordResetCode"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdzh;->zza(Lcom/google/android/gms/internal/zzebh;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdzu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdza;->zzb(Lcom/google/android/gms/internal/zzdzf;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
