.class Lcom/revo/evabs/Res_raw$1;
.super Ljava/lang/Object;
.source "Res_raw.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Res_raw;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Res_raw;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Res_raw;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/Res_raw;

    .line 19
    iput-object p1, p0, Lcom/revo/evabs/Res_raw$1;->this$0:Lcom/revo/evabs/Res_raw;

    iput-object p2, p0, Lcom/revo/evabs/Res_raw$1;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/revo/evabs/Res_raw$1;->val$tv:Landroid/widget/TextView;

    const-string v1, "Look for \'res\'ources"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method
