.class Lcom/revo/evabs/Launch$1;
.super Ljava/lang/Object;
.source "Launch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Launch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Launch;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Launch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/Launch;

    .line 42
    iput-object p1, p0, Lcom/revo/evabs/Launch$1;->this$0:Lcom/revo/evabs/Launch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/revo/evabs/Launch$1;->this$0:Lcom/revo/evabs/Launch;

    const-class v2, Lcom/revo/evabs/ChallengeList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "challs":Landroid/content/Intent;
    iget-object v1, p0, Lcom/revo/evabs/Launch$1;->this$0:Lcom/revo/evabs/Launch;

    invoke-virtual {v1, v0}, Lcom/revo/evabs/Launch;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
