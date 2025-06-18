.class public Lcom/revo/evabs/SharedBreach;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SharedBreach.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/revo/evabs/SharedBreach;->setContentView(I)V

    .line 16
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/revo/evabs/SharedBreach;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 17
    .local v0, "btnspref":Landroid/widget/Button;
    const v1, 0x7f0a013b

    invoke-virtual {p0, v1}, Lcom/revo/evabs/SharedBreach;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 18
    .local v1, "tvspref":Landroid/widget/TextView;
    new-instance v2, Lcom/revo/evabs/SharedBreach$1;

    invoke-direct {v2, p0, v1}, Lcom/revo/evabs/SharedBreach$1;-><init>(Lcom/revo/evabs/SharedBreach;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method
