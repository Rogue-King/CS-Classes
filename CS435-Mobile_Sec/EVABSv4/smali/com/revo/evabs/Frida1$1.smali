.class Lcom/revo/evabs/Frida1$1;
.super Ljava/lang/Object;
.source "Frida1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Frida1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Frida1;

.field final synthetic val$tvhint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Frida1;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/Frida1;

    .line 25
    iput-object p1, p0, Lcom/revo/evabs/Frida1$1;->this$0:Lcom/revo/evabs/Frida1;

    iput-object p2, p0, Lcom/revo/evabs/Frida1$1;->val$tvhint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/revo/evabs/Frida1$1;->val$tvhint:Landroid/widget/TextView;

    const-string v1, "``Dynamic instrumentation`` what?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
