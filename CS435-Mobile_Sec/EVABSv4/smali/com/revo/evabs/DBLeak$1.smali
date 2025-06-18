.class Lcom/revo/evabs/DBLeak$1;
.super Ljava/lang/Object;
.source "DBLeak.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/DBLeak;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/DBLeak;

.field final synthetic val$access1:Ljava/lang/String;

.field final synthetic val$access2:Ljava/lang/String;

.field final synthetic val$tvcreds1:Landroid/widget/TextView;

.field final synthetic val$tvcreds2:Landroid/widget/TextView;

.field final synthetic val$uname1:Ljava/lang/String;

.field final synthetic val$uname2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/revo/evabs/DBLeak;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/DBLeak;

    .line 37
    iput-object p1, p0, Lcom/revo/evabs/DBLeak$1;->this$0:Lcom/revo/evabs/DBLeak;

    iput-object p2, p0, Lcom/revo/evabs/DBLeak$1;->val$tvcreds1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/revo/evabs/DBLeak$1;->val$uname1:Ljava/lang/String;

    iput-object p4, p0, Lcom/revo/evabs/DBLeak$1;->val$access1:Ljava/lang/String;

    iput-object p5, p0, Lcom/revo/evabs/DBLeak$1;->val$tvcreds2:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/revo/evabs/DBLeak$1;->val$uname2:Ljava/lang/String;

    iput-object p7, p0, Lcom/revo/evabs/DBLeak$1;->val$access2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/revo/evabs/DBLeak$1;->val$tvcreds1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/revo/evabs/DBLeak$1;->val$uname1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Access: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/revo/evabs/DBLeak$1;->val$access1:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/revo/evabs/DBLeak$1;->val$tvcreds2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/revo/evabs/DBLeak$1;->val$uname2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/revo/evabs/DBLeak$1;->val$access2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
