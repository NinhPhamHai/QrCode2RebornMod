.class public Lcom/barcodescanner/codegeneratorx88/reader/d/g/c;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/barcodescanner/codegeneratorx88/reader/d/a/e<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/g/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object v0

    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$id(Ljava/lang/String;)V

    .line 4
    iget-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$type(Ljava/lang/String;)V

    .line 5
    iget-object p2, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$title(Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$raw_text(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$created(J)V

    .line 8
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->c(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$raw_text()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 3
    new-instance p1, Lcom/journeyapps/barcodescanner/b;

    invoke-direct {p1, v0, v1}, Lcom/journeyapps/barcodescanner/b;-><init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/E;)V

    .line 4
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a()Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/c;->a(Lcom/journeyapps/barcodescanner/b;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QR Code Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/g/b;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/g/b;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    :cond_0
    return-void
.end method
