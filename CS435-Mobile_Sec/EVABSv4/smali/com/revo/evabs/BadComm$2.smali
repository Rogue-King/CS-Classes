.class Lcom/revo/evabs/BadComm$2;
.super Ljava/lang/Object;
.source "BadComm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/BadComm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/BadComm;


# direct methods
.method constructor <init>(Lcom/revo/evabs/BadComm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/BadComm;

    .line 48
    iput-object p1, p0, Lcom/revo/evabs/BadComm$2;->this$0:Lcom/revo/evabs/BadComm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/revo/evabs/BadComm$2;->this$0:Lcom/revo/evabs/BadComm;

    invoke-virtual {v0}, Lcom/revo/evabs/BadComm;->sendCreds()V

    .line 52
    return-void
.end method
