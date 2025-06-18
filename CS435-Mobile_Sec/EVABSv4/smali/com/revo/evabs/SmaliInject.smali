.class public Lcom/revo/evabs/SmaliInject;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SmaliInject.java"


# instance fields
.field SIGNAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 13
    const-string v0, "LAB_OFF"

    iput-object v0, p0, Lcom/revo/evabs/SmaliInject;->SIGNAL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/revo/evabs/SmaliInject;->setContentView(I)V

    .line 19
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 20
    .local v0, "smali":Landroid/widget/Button;
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 21
    .local v1, "smalihint":Landroid/widget/Button;
    const v2, 0x7f0a0130

    invoke-virtual {p0, v2}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 22
    .local v2, "labstat":Landroid/widget/TextView;
    const v3, 0x7f0a0138

    invoke-virtual {p0, v3}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 23
    .local v3, "tvsmalihint":Landroid/widget/TextView;
    const v4, 0x7f0a012f

    invoke-virtual {p0, v4}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 24
    .local v4, "tvlaboff":Landroid/widget/TextView;
    const v5, 0x7f0a0127

    invoke-virtual {p0, v5}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 26
    .local v5, "tvflag":Landroid/widget/TextView;
    new-instance v6, Lcom/revo/evabs/SmaliInject$1;

    invoke-direct {v6, p0, v3}, Lcom/revo/evabs/SmaliInject$1;-><init>(Lcom/revo/evabs/SmaliInject;Landroid/widget/TextView;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance v6, Lcom/revo/evabs/SmaliInject$2;

    invoke-direct {v6, p0, v4, v2, v5}, Lcom/revo/evabs/SmaliInject$2;-><init>(Lcom/revo/evabs/SmaliInject;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public native stringFromSmali()Ljava/lang/String;
.end method
