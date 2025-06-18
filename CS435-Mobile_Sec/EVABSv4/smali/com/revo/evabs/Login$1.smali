.class Lcom/revo/evabs/Login$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Login;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Login;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Login;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/Login;

    .line 41
    iput-object p1, p0, Lcom/revo/evabs/Login$1;->this$0:Lcom/revo/evabs/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/revo/evabs/Login$1;->this$0:Lcom/revo/evabs/Login;

    invoke-static {v0}, Lcom/revo/evabs/Login;->access$000(Lcom/revo/evabs/Login;)V

    .line 49
    :goto_0
    return-void
.end method
