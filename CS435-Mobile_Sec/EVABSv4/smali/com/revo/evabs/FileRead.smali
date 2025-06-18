.class public Lcom/revo/evabs/FileRead;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FileRead.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/revo/evabs/FileRead;->setContentView(I)V

    .line 20
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/revo/evabs/FileRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "filehint":Landroid/widget/Button;
    const v1, 0x7f0a0126

    invoke-virtual {p0, v1}, Lcom/revo/evabs/FileRead;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 23
    .local v1, "tvhint":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/revo/evabs/FileRead;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 26
    .local v2, "am":Landroid/content/res/AssetManager;
    new-instance v3, Lcom/revo/evabs/FileRead$1;

    invoke-direct {v3, p0, v1}, Lcom/revo/evabs/FileRead$1;-><init>(Lcom/revo/evabs/FileRead;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :try_start_0
    const-string v3, "secrets"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 34
    .local v3, "iput":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 35
    .local v4, "size":I
    new-array v5, v4, [B

    .line 36
    .local v5, "buffer":[B
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    .line 37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 38
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    nop

    .end local v4    # "size":I
    .end local v5    # "buffer":[B
    goto :goto_0

    .line 41
    .end local v3    # "iput":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 42
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
