.class public Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/barcodescanner/codegeneratorx88/reader/a/c/a;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/barcodescanner/codegeneratorx88/reader/a/c/j;

    new-instance v4, Lcom/barcodescanner/codegeneratorx88/reader/a/c/h;

    invoke-direct {v4, p0, p4}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/h;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;)V

    new-instance v5, Lcom/barcodescanner/codegeneratorx88/reader/a/c/i;

    invoke-direct {v5, p0, p4}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/i;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;)V

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/j;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/k;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v6, p1}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    if-eqz p3, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b;->a()Lcom/barcodescanner/codegeneratorx88/reader/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/b;->b()Lcom/android/volley/RequestQueue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b;->a()Lcom/barcodescanner/codegeneratorx88/reader/b;

    move-result-object p1

    invoke-virtual {p1, v6, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b;->a(Lcom/android/volley/Request;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
