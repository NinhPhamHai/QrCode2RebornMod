.class public Lcom/barcodescanner/codegeneratorx88/reader/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;-><init>()V

    const/4 v1, 0x0

    const-string v2, "http://linkapp.tohapp.com/moreapp.php?app_id=com.barcodescanner.codegeneratorx88.reader"

    invoke-virtual {v0, v2, v2, v1, p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/barcodescanner/codegeneratorx88/reader/a/c/a;)V

    return-void
.end method

.method public a(ZLjava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "moreapp"

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/b;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/d;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p2}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
