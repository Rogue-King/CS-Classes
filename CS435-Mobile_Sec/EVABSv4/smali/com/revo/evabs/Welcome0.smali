.class public Lcom/revo/evabs/Welcome0;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Welcome0.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Welcome0;->setContentView(I)V

    .line 18
    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Welcome0;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    .local v0, "tvwelcome":Landroid/widget/TextView;
    const-string v1, "Welcome, \n\n\n Humanity is in it\'s persuit of a new planet for Earthlings. \nThe SpaceBit ship, with a skilled hacker/scientist on board, has been sent to find a planet near the Cygnus X1 system. \nUntil yesterday, everything was under control. \nBut, few hours before, the ship lost all sorts of communication lines.\nScientists then found a strange space-time warp, which they doubt would be the reason for the crash. \n\nHowever, we have a log of a message from the ship, which was the last transmission, before the communication broke. Have a look! "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    const v1, 0x7f0a0045

    invoke-virtual {p0, v1}, Lcom/revo/evabs/Welcome0;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 22
    .local v1, "next0":Landroid/widget/Button;
    new-instance v2, Lcom/revo/evabs/Welcome0$1;

    invoke-direct {v2, p0}, Lcom/revo/evabs/Welcome0$1;-><init>(Lcom/revo/evabs/Welcome0;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
