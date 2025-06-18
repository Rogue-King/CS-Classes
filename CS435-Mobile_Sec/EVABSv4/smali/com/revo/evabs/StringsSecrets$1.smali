.class Lcom/revo/evabs/StringsSecrets$1;
.super Ljava/lang/Object;
.source "StringsSecrets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/StringsSecrets;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/StringsSecrets;

.field final synthetic val$tvstrhint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/StringsSecrets;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/StringsSecrets;

    .line 18
    iput-object p1, p0, Lcom/revo/evabs/StringsSecrets$1;->this$0:Lcom/revo/evabs/StringsSecrets;

    iput-object p2, p0, Lcom/revo/evabs/StringsSecrets$1;->val$tvstrhint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/revo/evabs/StringsSecrets$1;->val$tvstrhint:Landroid/widget/TextView;

    const-string v1, "There is some place in the Android application where the strings are stored in an xml file. How to find it?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
