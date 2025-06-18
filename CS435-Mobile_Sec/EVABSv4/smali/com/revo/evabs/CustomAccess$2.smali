.class Lcom/revo/evabs/CustomAccess$2;
.super Ljava/lang/Object;
.source "CustomAccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/CustomAccess;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/CustomAccess;

.field final synthetic val$tvhintcust:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/CustomAccess;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/CustomAccess;

    .line 30
    iput-object p1, p0, Lcom/revo/evabs/CustomAccess$2;->this$0:Lcom/revo/evabs/CustomAccess;

    iput-object p2, p0, Lcom/revo/evabs/CustomAccess$2;->val$tvhintcust:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/revo/evabs/CustomAccess$2;->val$tvhintcust:Landroid/widget/TextView;

    const-string v1, "Can you trick a custom action?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
