.class public Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;
.super Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;
.source "SourceFile"

# interfaces
.implements Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/barcodescanner/codegeneratorx88/reader/d/a/e<",
        "Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;",
        ">;",
        "Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;"
    }
.end annotation


# instance fields
.field private final b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field public f:Z

.field public g:Z

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->f:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->g:Z

    .line 5
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/c;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/c;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;)V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->h:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->c:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    return-void
.end method

.method static synthetic a(Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->c()V

    .line 3
    invoke-super {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->a()V

    return-void
.end method

.method public a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "onSuccess"

    .line 8
    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;->setDataProductSearched(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Searchfailed"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->g:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->f:Z

    if-nez p1, :cond_0

    .line 14
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object p1

    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->e(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.google.com.vn/search?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;->realmSet$barcode(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V

    .line 19
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->d()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    invoke-virtual {v0, p1, p2}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->a(Ljava/lang/String;Z)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-string p2, "QR_FAVORITES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->c:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->b:Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->d(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object v0

    check-cast v0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;

    invoke-interface {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;->setDataForViews(Lcom/barcodescanner/codegeneratorx88/reader/a/b/a/a;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;

    invoke-interface {p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->e:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->f:Z

    .line 7
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;

    invoke-direct {v0, p0}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;-><init>(Lcom/barcodescanner/codegeneratorx88/reader/a/c/g;)V

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/c/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->c()V

    .line 6
    iget-object v0, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/barcodescanner/codegeneratorx88/reader/d/d/d;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->c()Lcom/barcodescanner/codegeneratorx88/reader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/barcodescanner/codegeneratorx88/reader/a/a;->e()Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/barcodescanner/codegeneratorx88/reader/a/a/b/n;->e(Ljava/lang/String;)Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "searchProductInLocal"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/barcodescanner/codegeneratorx88/reader/d/a/e;->b()Lcom/barcodescanner/codegeneratorx88/reader/d/a/g;

    move-result-object p1

    check-cast p1, Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;

    invoke-interface {p1, v0}, Lcom/barcodescanner/codegeneratorx88/reader/d/d/b;->setDataProductSearched(Lcom/barcodescanner/codegeneratorx88/reader/a/b/b;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
