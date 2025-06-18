.class public Lcom/revo/evabs/ChallengeList;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ChallengeList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/revo/evabs/ChallengeList;->finish()V

    .line 134
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 105
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/SmaliInject;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "l9i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 107
    goto/16 :goto_0

    .line 100
    .end local v0    # "l9i":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/Decode;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "l8i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 102
    goto/16 :goto_0

    .line 95
    .end local v0    # "l8i":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/ExportedInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "l7i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 97
    goto :goto_0

    .line 90
    .end local v0    # "l7i":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/DBLeak;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "l6i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 92
    goto :goto_0

    .line 85
    .end local v0    # "l6i":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/SharedBreach;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "l5i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 87
    goto :goto_0

    .line 80
    .end local v0    # "l5i":Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/Res_raw;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "l4i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 82
    goto :goto_0

    .line 75
    .end local v0    # "l4i":Landroid/content/Intent;
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/StringsSecrets;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "l3i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 77
    goto :goto_0

    .line 70
    .end local v0    # "l3i":Landroid/content/Intent;
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/FileRead;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "l2i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 72
    goto :goto_0

    .line 120
    .end local v0    # "l2i":Landroid/content/Intent;
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/Frida1;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "l12i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    .end local v0    # "l12i":Landroid/content/Intent;
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/CustomAccess;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "l11i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 117
    goto :goto_0

    .line 110
    .end local v0    # "l11i":Landroid/content/Intent;
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/BadComm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "l10i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 112
    goto :goto_0

    .line 65
    .end local v0    # "l10i":Landroid/content/Intent;
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/DebugMe;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "l1i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 67
    nop

    .line 124
    .end local v0    # "l1i":Landroid/content/Intent;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0039
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Lcom/revo/evabs/ChallengeList;->setContentView(I)V

    .line 22
    const-string v1, "DETAILS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/revo/evabs/ChallengeList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 24
    .local v1, "sp":Landroid/content/SharedPreferences;
    const v2, 0x7f0a011b

    invoke-virtual {v0, v2}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 27
    .local v2, "tvchall":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/revo/evabs/ChallengeList;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/ssb.otf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 29
    .local v3, "font1":Landroid/graphics/Typeface;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    const v4, 0x7f0a0039

    invoke-virtual {v0, v4}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 32
    .local v4, "l1":Landroid/widget/Button;
    const v5, 0x7f0a003d

    invoke-virtual {v0, v5}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 33
    .local v5, "l2":Landroid/widget/Button;
    const v6, 0x7f0a003e

    invoke-virtual {v0, v6}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 34
    .local v6, "l3":Landroid/widget/Button;
    const v7, 0x7f0a003f

    invoke-virtual {v0, v7}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 35
    .local v7, "l4":Landroid/widget/Button;
    const v8, 0x7f0a0040

    invoke-virtual {v0, v8}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 36
    .local v8, "l5":Landroid/widget/Button;
    const v9, 0x7f0a0041

    invoke-virtual {v0, v9}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 37
    .local v9, "l6":Landroid/widget/Button;
    const v10, 0x7f0a0042

    invoke-virtual {v0, v10}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 38
    .local v10, "l7":Landroid/widget/Button;
    const v11, 0x7f0a0043

    invoke-virtual {v0, v11}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 39
    .local v11, "l8":Landroid/widget/Button;
    const v12, 0x7f0a0044

    invoke-virtual {v0, v12}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 40
    .local v12, "l9":Landroid/widget/Button;
    const v13, 0x7f0a003a

    invoke-virtual {v0, v13}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 41
    .local v13, "l10":Landroid/widget/Button;
    const v14, 0x7f0a003b

    invoke-virtual {v0, v14}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 42
    .local v14, "l11":Landroid/widget/Button;
    const v15, 0x7f0a003c

    invoke-virtual {v0, v15}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 45
    .local v15, "l12":Landroid/widget/Button;
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0
    .param p1, "hasCapture"    # Z

    .line 129
    return-void
.end method
