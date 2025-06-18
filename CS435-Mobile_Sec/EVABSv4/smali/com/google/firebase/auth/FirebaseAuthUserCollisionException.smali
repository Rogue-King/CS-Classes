.class public final Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;
.super Lcom/google/firebase/auth/FirebaseAuthException;


# instance fields
.field private zzmpr:Lcom/google/firebase/auth/AuthCredential;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zzmpr:Lcom/google/firebase/auth/AuthCredential;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/AuthCredential;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zzmpr:Lcom/google/firebase/auth/AuthCredential;

    return-void
.end method


# virtual methods
.method public final getUpdatedCredential()Lcom/google/firebase/auth/AuthCredential;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zzmpr:Lcom/google/firebase/auth/AuthCredential;

    return-object v0
.end method
