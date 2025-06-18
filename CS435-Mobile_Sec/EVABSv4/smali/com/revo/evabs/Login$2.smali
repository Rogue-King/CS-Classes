.class Lcom/revo/evabs/Login$2;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Login;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Login;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Login;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/Login;

    .line 76
    iput-object p1, p0, Lcom/revo/evabs/Login$2;->this$0:Lcom/revo/evabs/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/AuthResult;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "EVABS SIGN IN"

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "createUserWithEmail:success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/revo/evabs/Login$2;->this$0:Lcom/revo/evabs/Login;

    invoke-static {v0}, Lcom/revo/evabs/Login;->access$100(Lcom/revo/evabs/Login;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 83
    .local v0, "user":Lcom/google/firebase/auth/FirebaseUser;
    iget-object v1, p0, Lcom/revo/evabs/Login$2;->this$0:Lcom/revo/evabs/Login;

    invoke-static {v1, v0}, Lcom/revo/evabs/Login;->access$200(Lcom/revo/evabs/Login;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 84
    .end local v0    # "user":Lcom/google/firebase/auth/FirebaseUser;
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    const-string v2, "createUserWithEmail:failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    iget-object v0, p0, Lcom/revo/evabs/Login$2;->this$0:Lcom/revo/evabs/Login;

    const/4 v1, 0x0

    const-string v2, "Authentication failed."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    iget-object v0, p0, Lcom/revo/evabs/Login$2;->this$0:Lcom/revo/evabs/Login;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/revo/evabs/Login;->access$200(Lcom/revo/evabs/Login;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 93
    :goto_0
    return-void
.end method
