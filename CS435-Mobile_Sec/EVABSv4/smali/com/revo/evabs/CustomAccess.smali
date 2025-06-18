.class public Lcom/revo/evabs/CustomAccess;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CustomAccess.java"


# instance fields
.field public final EVABS_SENSOR_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 14
    const-string v0, "com.revo.evabs.action.SENSOR_KEY"

    iput-object v0, p0, Lcom/revo/evabs/CustomAccess;->EVABS_SENSOR_KEY:Ljava/lang/String;

    return-void
.end method

.method private GetSensorKey()V
    .locals 7

    .line 39
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/revo/evabs/CustomAccess;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 40
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "tosplit":Ljava/lang/String;
    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    .line 42
    .local v2, "split":[C
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    .line 44
    .local v3, "fromsplit":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 45
    const-string v4, "SYS_CTRL: CREDS ACCEPTED. SENSOR_KEY SENT"

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 46
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.revo.evabs.action.SENSOR_KEY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v4, "sendSensorkey":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVABS{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/revo/evabs/CustomAccess;->stringFromJNI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v4}, Lcom/revo/evabs/CustomAccess;->startActivity(Landroid/content/Intent;)V

    .line 50
    .end local v4    # "sendSensorkey":Landroid/content/Intent;
    goto :goto_0

    .line 53
    :cond_0
    const-string v4, "SYS_CTRL: WRONG_CREDS. SENSOR_KEY LOCKED"

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 55
    :goto_0
    return-void

    :array_0
    .array-data 2
        0x63s
        0x75s
        0x73s
        0x74s
        0x30s
        0x6ds
        0x5fs
        0x70s
        0x33s
        0x72s
        0x6ds
    .end array-data
.end method

.method static synthetic access$000(Lcom/revo/evabs/CustomAccess;)V
    .locals 0
    .param p0, "x0"    # Lcom/revo/evabs/CustomAccess;

    .line 12
    invoke-direct {p0}, Lcom/revo/evabs/CustomAccess;->GetSensorKey()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/revo/evabs/CustomAccess;->setContentView(I)V

    .line 20
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/revo/evabs/CustomAccess;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "btncustomaccess":Landroid/widget/Button;
    new-instance v1, Lcom/revo/evabs/CustomAccess$1;

    invoke-direct {v1, p0}, Lcom/revo/evabs/CustomAccess$1;-><init>(Lcom/revo/evabs/CustomAccess;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v1, 0x7f0a012b

    invoke-virtual {p0, v1}, Lcom/revo/evabs/CustomAccess;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    .local v1, "tvhintcust":Landroid/widget/TextView;
    const v2, 0x7f0a0031

    invoke-virtual {p0, v2}, Lcom/revo/evabs/CustomAccess;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 30
    .local v2, "hintcustom":Landroid/widget/Button;
    new-instance v3, Lcom/revo/evabs/CustomAccess$2;

    invoke-direct {v3, p0, v1}, Lcom/revo/evabs/CustomAccess$2;-><init>(Lcom/revo/evabs/CustomAccess;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
