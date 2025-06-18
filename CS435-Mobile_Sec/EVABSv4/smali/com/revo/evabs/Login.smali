.class public Lcom/revo/evabs/Login;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Login.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EVABS SIGN IN"


# instance fields
.field RC_SIGN_IN:I

.field private mAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field signInButton:Lcom/google/android/gms/common/SignInButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/revo/evabs/Login;->RC_SIGN_IN:I

    return-void
.end method

.method static synthetic access$000(Lcom/revo/evabs/Login;)V
    .locals 0
    .param p0, "x0"    # Lcom/revo/evabs/Login;

    .line 23
    invoke-direct {p0}, Lcom/revo/evabs/Login;->signIn()V

    return-void
.end method

.method static synthetic access$100(Lcom/revo/evabs/Login;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .param p0, "x0"    # Lcom/revo/evabs/Login;

    .line 23
    iget-object v0, p0, Lcom/revo/evabs/Login;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method static synthetic access$200(Lcom/revo/evabs/Login;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/revo/evabs/Login;
    .param p1, "x1"    # Lcom/google/firebase/auth/FirebaseUser;

    .line 23
    invoke-direct {p0, p1}, Lcom/revo/evabs/Login;->updateUI(Lcom/google/firebase/auth/FirebaseUser;)V

    return-void
.end method

.method private signIn()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/revo/evabs/Login;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "signInIntent":Landroid/content/Intent;
    iget v1, p0, Lcom/revo/evabs/Login;->RC_SIGN_IN:I

    invoke-virtual {p0, v0, v1}, Lcom/revo/evabs/Login;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method

.method private updateUI(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 0
    .param p1, "account"    # Lcom/google/firebase/auth/FirebaseUser;

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Login;->setContentView(I)V

    .line 37
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/revo/evabs/Login;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 39
    const v0, 0x7f0a00e8

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/SignInButton;

    iput-object v0, p0, Lcom/revo/evabs/Login;->signInButton:Lcom/google/android/gms/common/SignInButton;

    .line 40
    iget-object v0, p0, Lcom/revo/evabs/Login;->signInButton:Lcom/google/android/gms/common/SignInButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/SignInButton;->setSize(I)V

    .line 41
    iget-object v0, p0, Lcom/revo/evabs/Login;->signInButton:Lcom/google/android/gms/common/SignInButton;

    new-instance v1, Lcom/revo/evabs/Login$1;

    invoke-direct {v1, p0}, Lcom/revo/evabs/Login$1;-><init>(Lcom/revo/evabs/Login;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/SignInButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 55
    .local v0, "gso":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v1

    iput-object v1, p0, Lcom/revo/evabs/Login;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 56
    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 65
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 66
    const-string v0, "you@gmail.com"

    .line 67
    .local v0, "email":Ljava/lang/String;
    const-string v1, "somepass"

    .line 68
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/revo/evabs/Login;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    .line 69
    .local v2, "currentUser":Lcom/google/firebase/auth/FirebaseUser;
    invoke-direct {p0, v2}, Lcom/revo/evabs/Login;->updateUI(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 70
    if-eqz v2, :cond_0

    .line 71
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/revo/evabs/ChallengeList;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v3, "challlist":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/revo/evabs/Login;->startActivity(Landroid/content/Intent;)V

    .line 75
    .end local v3    # "challlist":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/revo/evabs/Login;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v3, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/revo/evabs/Login$2;

    invoke-direct {v4, p0}, Lcom/revo/evabs/Login$2;-><init>(Lcom/revo/evabs/Login;)V

    .line 76
    invoke-virtual {v3, p0, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 95
    return-void
.end method
