.class public Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/barcodescanner/codegeneratorx88/reader/d/a/e<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/e/f;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/e/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a()V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "QR_ENCODE"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->b()Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->a(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    .line 6
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->b()Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v1

    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/f;

    invoke-interface {v1, p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/f;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object v0

    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$type(Ljava/lang/String;)V

    .line 11
    iget-object v1, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$title(Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$raw_text(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmSet$created(J)V

    .line 14
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->b(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->c(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;

    invoke-direct {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a;->realmGet$raw_text()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->d:J

    .line 8
    iget-object p1, v0, Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;->b:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->b()Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->a(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    .line 10
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->b()Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/b/a/a;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v1

    check-cast v1, Lcom/barcodescanner/codegeneratorx88/reader/d/e/f;

    invoke-interface {v1, v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/e/f;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/d;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
