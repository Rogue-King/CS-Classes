.class public Lcom/revo/evabs/Launch;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Launch.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public USER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 27
    const-string v0, "username"

    iput-object v0, p0, Lcom/revo/evabs/Launch;->USER:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 102
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 103
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 108
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0c0026

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->setContentView(I)V

    .line 33
    const v0, 0x7f0a0148

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/Toolbar;

    .line 34
    .local v7, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v6, v7}, Lcom/revo/evabs/Launch;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 36
    const v0, 0x7f0a0131

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 37
    .local v8, "tvlaunchname":Landroid/widget/TextView;
    const v0, 0x7f0a0132

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 38
    .local v9, "tvprojpage":Landroid/widget/TextView;
    const v0, 0x7f0a0133

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 39
    .local v10, "tvlaunchversion":Landroid/widget/TextView;
    const v0, 0x7f0a0095

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    .line 41
    .local v11, "ivlaunchimg":Landroid/widget/ImageView;
    const v0, 0x7f0a0037

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    .line 42
    .local v12, "btnlaunchclass":Landroid/widget/Button;
    new-instance v0, Lcom/revo/evabs/Launch$1;

    invoke-direct {v0, v6}, Lcom/revo/evabs/Launch$1;-><init>(Lcom/revo/evabs/Launch;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0a0038

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    .line 51
    .local v13, "btnlaunchflag":Landroid/widget/Button;
    new-instance v0, Lcom/revo/evabs/Launch$2;

    invoke-direct {v0, v6}, Lcom/revo/evabs/Launch$2;-><init>(Lcom/revo/evabs/Launch;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/revo/evabs/Launch;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 62
    .local v14, "imgrotate":Landroid/view/animation/Animation;
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/revo/evabs/Launch;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/ssb.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    .line 67
    .local v15, "font1":Landroid/graphics/Typeface;
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    const-string v0, "PREFERENCE"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/revo/evabs/Launch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 72
    const-string v3, "isFirstRun"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 74
    .local v16, "isFirstRun":Ljava/lang/Boolean;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/revo/evabs/Welcome0;

    invoke-direct {v2, v6, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v2}, Lcom/revo/evabs/Launch;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/revo/evabs/Launch;->finish()V

    .line 80
    :cond_0
    invoke-virtual {v6, v0, v1}, Lcom/revo/evabs/Launch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    const-string v0, "DETAILS"

    invoke-virtual {v6, v0, v1}, Lcom/revo/evabs/Launch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 85
    .local v5, "sp":Landroid/content/SharedPreferences;
    iget-object v0, v6, Lcom/revo/evabs/Launch;->USER:Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, v6, Lcom/revo/evabs/Launch;->USER:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "uname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hi, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .end local v0    # "uname":Ljava/lang/String;
    :cond_1
    const v0, 0x7f0a0062

    invoke-virtual {v6, v0}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v4/widget/DrawerLayout;

    .line 91
    .local v4, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v17, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v18, 0x7f100049

    const v19, 0x7f100048

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v7

    move-object/from16 v20, v7

    move-object v7, v4

    .end local v4    # "drawer":Landroid/support/v4/widget/DrawerLayout;
    .local v7, "drawer":Landroid/support/v4/widget/DrawerLayout;
    .local v20, "toolbar":Landroid/support/v7/widget/Toolbar;
    move/from16 v4, v18

    move-object/from16 v18, v5

    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .local v18, "sp":Landroid/content/SharedPreferences;
    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 93
    .local v0, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v7, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 94
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 96
    const v1, 0x7f0a00b0

    invoke-virtual {v6, v1}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/NavigationView;

    .line 97
    .local v1, "navigationView":Landroid/support/design/widget/NavigationView;
    invoke-virtual {v1, v6}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 113
    invoke-virtual {p0}, Lcom/revo/evabs/Launch;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 138
    .local v0, "id":I
    const v1, 0x7f0a00ae

    if-ne v0, v1, :cond_0

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/revo/evabs/ChallengeList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/revo/evabs/Launch;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 141
    :cond_0
    const v1, 0x7f0a00af

    if-ne v0, v1, :cond_1

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/revo/evabs/flagcheck;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v1, "j":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/revo/evabs/Launch;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 141
    .end local v1    # "j":Landroid/content/Intent;
    :cond_1
    :goto_0
    nop

    .line 146
    :goto_1
    const v1, 0x7f0a0062

    invoke-virtual {p0, v1}, Lcom/revo/evabs/Launch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    .line 147
    .local v1, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 148
    const/4 v2, 0x1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 125
    .local v0, "id":I
    const v1, 0x7f0a0017

    if-ne v0, v1, :cond_0

    .line 126
    const/4 v1, 0x1

    return v1

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
