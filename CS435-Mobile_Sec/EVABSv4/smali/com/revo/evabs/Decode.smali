.class public Lcom/revo/evabs/Decode;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Decode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Decode;->setContentView(I)V

    .line 16
    const-string v0, "RVZBQlN7bmV2M3Jfc3QwcmU="

    .line 17
    .local v0, "gc_key_1":Ljava/lang/String;
    const-string v1, "X3MzbnMhdGl2M19kYXRh"

    .line 18
    .local v1, "gc_key_2":Ljava/lang/String;
    const-string v2, "XzFuXzdoM19zMHVyY2VjMGRl"

    .line 20
    .local v2, "gc_key_3":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "THE_KEY":Ljava/lang/String;
    const v4, 0x7f0a0032

    invoke-virtual {p0, v4}, Lcom/revo/evabs/Decode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 23
    .local v4, "btnhintdeode":Landroid/widget/Button;
    const v5, 0x7f0a012e

    invoke-virtual {p0, v5}, Lcom/revo/evabs/Decode;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 24
    .local v5, "tvdecodehint":Landroid/widget/TextView;
    new-instance v6, Lcom/revo/evabs/Decode$1;

    invoke-direct {v6, p0, v5}, Lcom/revo/evabs/Decode$1;-><init>(Lcom/revo/evabs/Decode;Landroid/widget/TextView;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
