.class public Lcom/revo/evabs/Frida1;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Frida1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field b:I

.field x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 15
    const/16 v0, 0x19

    iput v0, p0, Lcom/revo/evabs/Frida1;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/revo/evabs/Frida1;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 36
    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x7f0a0154

    invoke-virtual {p0, v1}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    .local v1, "at":Landroid/widget/TextView;
    const v2, 0x7f0a0156

    invoke-virtual {p0, v2}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 39
    .local v2, "bt":Landroid/widget/TextView;
    const v3, 0x7f0a015e

    invoke-virtual {p0, v3}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "xt":Landroid/widget/TextView;
    iget v4, p0, Lcom/revo/evabs/Frida1;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget v4, p0, Lcom/revo/evabs/Frida1;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget v4, p0, Lcom/revo/evabs/Frida1;->a:I

    iget v5, p0, Lcom/revo/evabs/Frida1;->b:I

    mul-int v4, v4, v5

    iput v4, p0, Lcom/revo/evabs/Frida1;->x:I

    .line 45
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 46
    .local v4, "r":Ljava/util/Random;
    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x96

    .line 48
    .local v5, "rand":I
    iget v6, p0, Lcom/revo/evabs/Frida1;->x:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget v6, p0, Lcom/revo/evabs/Frida1;->x:I

    if-le v6, v5, :cond_0

    .line 51
    const-string v6, "VIBRAN IS RESDY TO FLY! YOU ARE GOING HOME!"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/revo/evabs/Frida1;->stringFromJNI()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "x":Ljava/lang/String;
    const-string v7, "CONGRATZ!"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v6    # "x":Ljava/lang/String;
    goto :goto_0

    .line 56
    :cond_0
    const-string v6, "Co-ordinates Not Found!"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Frida1;->setContentView(I)V

    .line 20
    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "bt":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 24
    .local v1, "btnhint":Landroid/widget/Button;
    const v2, 0x7f0a012d

    invoke-virtual {p0, v2}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 25
    .local v2, "tvhint":Landroid/widget/TextView;
    new-instance v3, Lcom/revo/evabs/Frida1$1;

    invoke-direct {v3, p0, v2}, Lcom/revo/evabs/Frida1$1;-><init>(Lcom/revo/evabs/Frida1;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
