.class public Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthCredentialsOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static zzeis:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;


# instance fields
.field private final zzeit:Ljava/lang/String;

.field private final zzeiu:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

.field private final zzeiv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;->zzabx()Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzeis:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzeit:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;->zzeiu:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzeiu:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;->zzeiw:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzeiv:Z

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumer_package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzeiu:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    const-string v2, "password_specification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzeiv:Z

    const-string v2, "force_save_dialog"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final zzabw()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzeiu:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-object v0
.end method
