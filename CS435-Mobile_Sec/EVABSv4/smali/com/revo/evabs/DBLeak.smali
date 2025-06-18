.class public Lcom/revo/evabs/DBLeak;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DBLeak.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    move-object/from16 v8, p0

    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f0c001e

    invoke-virtual {v8, v0}, Lcom/revo/evabs/DBLeak;->setContentView(I)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/revo/evabs/DBLeak;->stringFromJNI()Ljava/lang/String;

    move-result-object v9

    .line 18
    .local v9, "unseen":Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "MAINFRAME_ACCESS"

    invoke-virtual {v8, v2, v1, v0}, Lcom/revo/evabs/DBLeak;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 19
    .local v10, "coords":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "CREATE TABLE IF NOT EXISTS CREDS(admin VARCHAR, pass VARCHAR, access VARCHAR);"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO CREDS VALUES(\'Dr.l33t\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' , \'ADMIN\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    const-string v2, "INSERT INTO CREDS VALUES(\'Mr BufferOverflow\', \'0xNotSecureSQLite_\', \'STAFF\');"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    const-string v2, "INSERT INTO CREDS VALUES(\'Ms HeapSpray\', \'SQLite_expl0it\', \'USER\');"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    const-string v2, "SELECT * FROM CREDS"

    invoke-virtual {v10, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 25
    .local v11, "res":Landroid/database/Cursor;
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 26
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 27
    .local v12, "uname1":Ljava/lang/String;
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 29
    .local v13, "access1":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 30
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 31
    .local v14, "uname2":Ljava/lang/String;
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 33
    .local v15, "access2":Ljava/lang/String;
    const v0, 0x7f0a011e

    invoke-virtual {v8, v0}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    .line 34
    .local v16, "tvcreds1":Landroid/widget/TextView;
    const v0, 0x7f0a011f

    invoke-virtual {v8, v0}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    .line 36
    .local v17, "tvcreds2":Landroid/widget/TextView;
    const v0, 0x7f0a002f

    invoke-virtual {v8, v0}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 37
    .local v7, "credsbutton":Landroid/widget/Button;
    new-instance v6, Lcom/revo/evabs/DBLeak$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, v17

    move-object/from16 v18, v9

    move-object v9, v6

    .end local v9    # "unseen":Ljava/lang/String;
    .local v18, "unseen":Ljava/lang/String;
    move-object v6, v14

    move-object/from16 v19, v10

    move-object v10, v7

    .end local v7    # "credsbutton":Landroid/widget/Button;
    .local v10, "credsbutton":Landroid/widget/Button;
    .local v19, "coords":Landroid/database/sqlite/SQLiteDatabase;
    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/revo/evabs/DBLeak$1;-><init>(Lcom/revo/evabs/DBLeak;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f0a0120

    invoke-virtual {v8, v0}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "tvdbhint":Landroid/widget/TextView;
    const v1, 0x7f0a002c

    invoke-virtual {v8, v1}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 47
    .local v1, "buttondbhint":Landroid/widget/Button;
    new-instance v2, Lcom/revo/evabs/DBLeak$2;

    invoke-direct {v2, v8, v0}, Lcom/revo/evabs/DBLeak$2;-><init>(Lcom/revo/evabs/DBLeak;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
