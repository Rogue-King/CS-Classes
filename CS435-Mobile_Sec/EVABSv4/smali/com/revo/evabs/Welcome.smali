.class public Lcom/revo/evabs/Welcome;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Welcome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 33
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Welcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 34
    .local v0, "uname":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "user":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/revo/evabs/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "Please fill in your hacker handle"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    const-string v4, "DETAILS"

    invoke-virtual {p0, v4, v2}, Lcom/revo/evabs/Welcome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 40
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 41
    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "username"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVABS{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/revo/evabs/Welcome;->stringFromJNI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "password"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    invoke-virtual {p0}, Lcom/revo/evabs/Welcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Launching Mission"

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 45
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/revo/evabs/Launch;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/revo/evabs/Welcome;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/revo/evabs/Welcome;->finish()V

    .line 50
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "edit":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/revo/evabs/Welcome;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/revo/evabs/Welcome;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/ssb.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 23
    .local v0, "font1":Landroid/graphics/Typeface;
    const v1, 0x7f0a013f

    invoke-virtual {p0, v1}, Lcom/revo/evabs/Welcome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 25
    .local v1, "tvwelcome":Landroid/widget/TextView;
    const-string v2, " `` ..I\'ve crashed into an unknown planet here. \nI\'m safe, but the ship has taken lotta damage and the temperature is rising drastically. \nI need to fix EVABS, which is the Virtual System in the ship, before it\'s too late. I\'ve got a terminal access to SYS_CTRL. \nLemme use my skills and hack into EVABS and get SpaceBit flying again!..``\n\n\nMy name is  "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/revo/evabs/Welcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 28
    .local v2, "access":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
