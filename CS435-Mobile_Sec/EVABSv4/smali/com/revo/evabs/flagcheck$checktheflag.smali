.class Lcom/revo/evabs/flagcheck$checktheflag;
.super Landroid/os/AsyncTask;
.source "flagcheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revo/evabs/flagcheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checktheflag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field conn:Ljava/net/HttpURLConnection;

.field pdLoading:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/revo/evabs/flagcheck;

.field url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/revo/evabs/flagcheck;)V
    .locals 2
    .param p1, "this$0"    # Lcom/revo/evabs/flagcheck;

    .line 67
    iput-object p1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->this$0:Lcom/revo/evabs/flagcheck;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->this$0:Lcom/revo/evabs/flagcheck;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revo/evabs/flagcheck$checktheflag;->pdLoading:Landroid/app/ProgressDialog;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revo/evabs/flagcheck$checktheflag;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/revo/evabs/flagcheck$checktheflag;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "strings"    # [Ljava/lang/String;

    .line 78
    const-string v0, "exception"

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://evabsflag.000webhostapp.com/flags.php"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    nop

    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    .line 88
    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    const v2, 0x249f0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 89
    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 94
    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 97
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "flag"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 99
    .local v1, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "query":Ljava/lang/String;
    iget-object v3, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 103
    .local v3, "os":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 105
    .local v4, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 107
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 108
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 109
    iget-object v5, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    nop

    .line 119
    :try_start_2
    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 122
    .local v1, "response_code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 126
    .local v2, "input":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v4, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    iget-object v5, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    return-object v0

    .line 139
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v0, "unsuccessful"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    iget-object v2, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 139
    return-object v0

    .line 146
    .end local v1    # "response_code":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    nop

    .line 146
    iget-object v2, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 144
    return-object v0

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v1, p0, Lcom/revo/evabs/flagcheck$checktheflag;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    throw v0

    .line 111
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    return-object v0

    .line 80
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 82
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 83
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/revo/evabs/flagcheck$checktheflag;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Here\'s The soooper flaggie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/revo/evabs/flagcheck$checktheflag;->this$0:Lcom/revo/evabs/flagcheck;

    iget-object v0, v0, Lcom/revo/evabs/flagcheck;->resulttv:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/revo/evabs/flagcheck$checktheflag;->pdLoading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 165
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 166
    iget-object v0, p0, Lcom/revo/evabs/flagcheck$checktheflag;->pdLoading:Landroid/app/ProgressDialog;

    const-string v1, "\tLoading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/revo/evabs/flagcheck$checktheflag;->pdLoading:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 168
    iget-object v0, p0, Lcom/revo/evabs/flagcheck$checktheflag;->pdLoading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 170
    return-void
.end method
