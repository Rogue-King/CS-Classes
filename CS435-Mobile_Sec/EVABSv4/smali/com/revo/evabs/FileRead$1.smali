.class Lcom/revo/evabs/FileRead$1;
.super Ljava/lang/Object;
.source "FileRead.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/FileRead;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/FileRead;

.field final synthetic val$tvhint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/FileRead;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/revo/evabs/FileRead;

    .line 26
    iput-object p1, p0, Lcom/revo/evabs/FileRead$1;->this$0:Lcom/revo/evabs/FileRead;

    iput-object p2, p0, Lcom/revo/evabs/FileRead$1;->val$tvhint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/revo/evabs/FileRead$1;->val$tvhint:Landroid/widget/TextView;

    const-string v1, "Where do you store the \'assets\' of/in an APK? Maybe you could see inside the apk :)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method
