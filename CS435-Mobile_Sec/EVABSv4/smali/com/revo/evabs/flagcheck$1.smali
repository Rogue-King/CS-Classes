.class Lcom/revo/evabs/flagcheck$1;
.super Ljava/lang/Object;
.source "flagcheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/flagcheck;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/flagcheck;


# direct methods
.method constructor <init>(Lcom/revo/evabs/flagcheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/flagcheck;

    .line 51
    iput-object p1, p0, Lcom/revo/evabs/flagcheck$1;->this$0:Lcom/revo/evabs/flagcheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/revo/evabs/flagcheck$1;->this$0:Lcom/revo/evabs/flagcheck;

    iget-object v1, v0, Lcom/revo/evabs/flagcheck;->et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/revo/evabs/flagcheck;->theflagtosend:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/revo/evabs/flagcheck$1;->this$0:Lcom/revo/evabs/flagcheck;

    iget-object v1, v0, Lcom/revo/evabs/flagcheck;->theflagtosend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revo/evabs/flagcheck;->checkflag(Ljava/lang/String;)V

    .line 56
    return-void
.end method
