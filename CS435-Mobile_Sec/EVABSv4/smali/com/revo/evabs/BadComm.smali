.class public Lcom/revo/evabs/BadComm;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BadComm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revo/evabs/BadComm$AsyncLogin;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x186a0

.field public static final READ_TIMEOUT:I = 0x249f0


# instance fields
.field GETIT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 30
    const-string v0, "evabs_admin"

    iput-object v0, p0, Lcom/revo/evabs/BadComm;->GETIT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/revo/evabs/BadComm;->setContentView(I)V

    .line 37
    const v0, 0x7f0a011c

    invoke-virtual {p0, v0}, Lcom/revo/evabs/BadComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, "hintcom":Landroid/widget/TextView;
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/revo/evabs/BadComm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 40
    .local v1, "btn":Landroid/widget/Button;
    new-instance v2, Lcom/revo/evabs/BadComm$1;

    invoke-direct {v2, p0, v0}, Lcom/revo/evabs/BadComm$1;-><init>(Lcom/revo/evabs/BadComm;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v2, 0x7f0a0028

    invoke-virtual {p0, v2}, Lcom/revo/evabs/BadComm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 48
    .local v2, "receive":Landroid/widget/Button;
    new-instance v3, Lcom/revo/evabs/BadComm$2;

    invoke-direct {v3, p0}, Lcom/revo/evabs/BadComm$2;-><init>(Lcom/revo/evabs/BadComm;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public sendCreds()V
    .locals 4

    .line 60
    new-instance v0, Lcom/revo/evabs/BadComm$AsyncLogin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/revo/evabs/BadComm$AsyncLogin;-><init>(Lcom/revo/evabs/BadComm;Lcom/revo/evabs/BadComm$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/revo/evabs/BadComm;->GETIT:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/revo/evabs/BadComm$AsyncLogin;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method
