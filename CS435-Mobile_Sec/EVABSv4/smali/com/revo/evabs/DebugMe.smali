.class public Lcom/revo/evabs/DebugMe;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DebugMe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public USER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 13
    const-string v0, "username"

    iput-object v0, p0, Lcom/revo/evabs/DebugMe;->USER:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Lcom/revo/evabs/DebugMe;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "tvdebughint":Landroid/widget/TextView;
    const-string v1, "How do you find the log of running apps in an Android device using ADB?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 39
    .end local v0    # "tvdebughint":Landroid/widget/TextView;
    :pswitch_1
    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcom/revo/evabs/DebugMe;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    .local v0, "tvdebug":Landroid/widget/TextView;
    const-string v1, "SYS_CTRL_FAILURE: The developer was not supposed to log important data. Your secret key has been logged"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Lcom/revo/evabs/DebugMe;->stringFromJNI()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "debugged":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVABS{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "** SYS_CTRL **: "

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    nop

    .line 50
    .end local v0    # "tvdebug":Landroid/widget/TextView;
    .end local v1    # "debugged":Ljava/lang/String;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a002d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/revo/evabs/DebugMe;->setContentView(I)V

    .line 18
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/revo/evabs/DebugMe;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 19
    .local v0, "db":Landroid/widget/Button;
    const v1, 0x7f0a0109

    invoke-virtual {p0, v1}, Lcom/revo/evabs/DebugMe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 20
    .local v1, "tv":Landroid/widget/TextView;
    const-string v2, "DETAILS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/revo/evabs/DebugMe;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 21
    .local v2, "sp":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/revo/evabs/DebugMe;->USER:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    iget-object v3, p0, Lcom/revo/evabs/DebugMe;->USER:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "uname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Welcome aboard, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Here is your first challenge"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .end local v3    # "uname":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0a002e

    invoke-virtual {p0, v3}, Lcom/revo/evabs/DebugMe;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 26
    .local v3, "dbh":Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
