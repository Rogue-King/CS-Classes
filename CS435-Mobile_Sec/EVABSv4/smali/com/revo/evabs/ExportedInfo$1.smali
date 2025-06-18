.class Lcom/revo/evabs/ExportedInfo$1;
.super Ljava/lang/Object;
.source "ExportedInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/ExportedInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/ExportedInfo;

.field final synthetic val$tvexport:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/ExportedInfo;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/ExportedInfo;

    .line 18
    iput-object p1, p0, Lcom/revo/evabs/ExportedInfo$1;->this$0:Lcom/revo/evabs/ExportedInfo;

    iput-object p2, p0, Lcom/revo/evabs/ExportedInfo$1;->val$tvexport:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/revo/evabs/ExportedInfo$1;->val$tvexport:Landroid/widget/TextView;

    const-string v1, "What is an exported activity? What is it\'s security issue?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
