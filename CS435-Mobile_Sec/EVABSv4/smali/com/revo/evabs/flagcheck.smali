.class public Lcom/revo/evabs/flagcheck;
.super Landroid/support/v7/app/AppCompatActivity;
.source "flagcheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revo/evabs/flagcheck$checktheflag;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x186a0

.field public static final READ_TIMEOUT:I = 0x249f0


# instance fields
.field et:Landroid/widget/EditText;

.field resulttv:Landroid/widget/TextView;

.field submit:Landroid/widget/Button;

.field theflagtosend:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public checkflag(Ljava/lang/String;)V
    .locals 3
    .param p1, "tosend"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/revo/evabs/flagcheck;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 64
    new-instance v0, Lcom/revo/evabs/flagcheck$checktheflag;

    invoke-direct {v0, p0}, Lcom/revo/evabs/flagcheck$checktheflag;-><init>(Lcom/revo/evabs/flagcheck;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/revo/evabs/flagcheck$checktheflag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/revo/evabs/flagcheck;->setContentView(I)V

    .line 44
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/revo/evabs/flagcheck;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/revo/evabs/flagcheck;->submit:Landroid/widget/Button;

    .line 45
    const v0, 0x7f0a0137

    invoke-virtual {p0, v0}, Lcom/revo/evabs/flagcheck;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/revo/evabs/flagcheck;->resulttv:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/revo/evabs/flagcheck;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/revo/evabs/flagcheck;->et:Landroid/widget/EditText;

    .line 48
    invoke-virtual {p0}, Lcom/revo/evabs/flagcheck;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/ssb.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 49
    .local v0, "font1":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/revo/evabs/flagcheck;->resulttv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object v1, p0, Lcom/revo/evabs/flagcheck;->submit:Landroid/widget/Button;

    new-instance v2, Lcom/revo/evabs/flagcheck$1;

    invoke-direct {v2, p0}, Lcom/revo/evabs/flagcheck$1;-><init>(Lcom/revo/evabs/flagcheck;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
