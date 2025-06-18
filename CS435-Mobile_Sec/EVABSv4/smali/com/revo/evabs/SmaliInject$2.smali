.class Lcom/revo/evabs/SmaliInject$2;
.super Ljava/lang/Object;
.source "SmaliInject.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/SmaliInject;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/SmaliInject;

.field final synthetic val$labstat:Landroid/widget/TextView;

.field final synthetic val$tvflag:Landroid/widget/TextView;

.field final synthetic val$tvlaboff:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/SmaliInject;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/SmaliInject;

    .line 34
    iput-object p1, p0, Lcom/revo/evabs/SmaliInject$2;->this$0:Lcom/revo/evabs/SmaliInject;

    iput-object p2, p0, Lcom/revo/evabs/SmaliInject$2;->val$tvlaboff:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/revo/evabs/SmaliInject$2;->val$labstat:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/revo/evabs/SmaliInject$2;->val$tvflag:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/revo/evabs/SmaliInject$2;->this$0:Lcom/revo/evabs/SmaliInject;

    invoke-virtual {v0}, Lcom/revo/evabs/SmaliInject;->stringFromSmali()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "ctrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/revo/evabs/SmaliInject$2;->this$0:Lcom/revo/evabs/SmaliInject;

    iget-object v1, v1, Lcom/revo/evabs/SmaliInject;->SIGNAL:Ljava/lang/String;

    const-string v2, "LAB_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/revo/evabs/SmaliInject$2;->val$tvlaboff:Landroid/widget/TextView;

    const-string v2, "SYS_CTRL_CODE: LAB_ON"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/revo/evabs/SmaliInject$2;->val$labstat:Landroid/widget/TextView;

    const-string v2, "SYS_CTRL: ACCESS_GRANTED. LAB UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/revo/evabs/SmaliInject$2;->val$tvflag:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVABS{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/revo/evabs/SmaliInject$2;->val$tvlaboff:Landroid/widget/TextView;

    const-string v2, "SYS_CTRL_CODE: LAB_OFF"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/revo/evabs/SmaliInject$2;->val$labstat:Landroid/widget/TextView;

    const-string v2, "SYS_CTRL: ACCESS_DENIED"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    return-void
.end method
