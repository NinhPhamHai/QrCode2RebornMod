.class Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;


# direct methods
.method constructor <init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;Z)Z

    .line 2
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Object;)V

    .line 4
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object p1

    check-cast p2, Ljava/lang/Exception;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    invoke-static {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/b/o;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$barcode()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$barcode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object p1

    const-string p2, "Null object"

    invoke-interface {p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/utility/DebugLog;->loge(Ljava/lang/Exception;)V

    .line 15
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 16
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/d;->a:Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-static {p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->c(Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;)Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
